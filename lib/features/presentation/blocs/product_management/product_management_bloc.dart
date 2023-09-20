import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/core.dart';
import 'package:music_app/core/extensions/iterable_extensions.dart';
import 'package:music_app/features/data/models/search_model/search_model.dart';
import 'package:music_app/features/domain/entity/product_data.dart';
import 'package:music_app/features/domain/entity/product_data_factory.dart';
import 'package:music_app/features/data/models/option_item/option_item_request_model.dart';
import 'package:music_app/features/data/models/section_model/section_request_model.dart';
import 'package:music_app/features/data/shared_preferences/production_shared_preferences.dart';
import 'package:music_app/features/domain/entity/request/search_request.dart';
import 'package:music_app/features/domain/usecases/get_option_item.dart';
import 'package:music_app/features/domain/usecases/get_section.dart';
import 'package:music_app/features/domain/usecases/product_management_usecase.dart';
import 'package:music_app/features/presentation/blocs/base/base_bloc.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_event.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_state.dart';
import 'package:reflectable/mirrors.dart';

import '../../../domain/entity/option_item.dart';

class ProductManagementBloc extends BaseBloc<ProductManagementEvent,ProductManagementState>{
  ProductManagementBloc(this._productManagementUseCase, this._getSectionUseCase, this._getOptionItemUseCase, this.preferences) : super(const ProductManagementState());

  final ProductManagementUseCase _productManagementUseCase;
  final GetSection _getSectionUseCase;
  final GetOptionItem _getOptionItemUseCase;
  final ProductionSharedPreferences preferences;
  ProductDataFactory? productDataFactory;

  bool isCheckAll() => productDataFactory?.isCheckAll() ?? false;

  void checkAll(bool check){
    productDataFactory?.checkAll(check);
  }

  @override
  void init() {
    on<SearchEvent>(_search);
    on<GetSectionEvent>(_getSection);
    on<GetOptionItemEvent>(_getOptionItem);
    add(GetSectionEvent(preferences.user?.token ?? '', preferences.user?.refreshToken ?? ''));
    add(GetOptionItemEvent(preferences.user?.token ?? '', preferences.user?.refreshToken ?? '', 1));
    add(SearchEvent());
    productDataFactory = ProductDataFactory();
  }

  int page = 1;
  Map<String,double> maxWidthCol = {};

  _search(SearchEvent searchEvent,Emitter<ProductManagementState> emitter) async{
    if(searchEvent.isRefresh){
      page = 1;
    }
    emitter(state.copyWith(
      isLoading: true
    ));
    (await _productManagementUseCase(SearchRequest(
      keyword: "",
      mode: 2,
      refreshToken: preferences.user?.refreshToken,
      sectionId: 8,
      token: preferences.user?.token,
      type: 2,
      page: page,
      perPage: 20
    ))).fold((data){
      List<List<ProductData>> listProductDatas = [];
      data?.data?.data?.forEach((tblResponse) {
        List<ProductData> listProductData = [];
        fakeColum().forEach((column) {
            InstanceMirror instanceMirror = reflector.reflect(tblResponse);
            String? value = instanceMirror.invokeGetter(column.key.serializedName())?.toString();
            debugPrint(value);
            Size size = (TextPainter(
                text: TextSpan(text: value),
                textDirection: TextDirection.ltr)
              ..layout())
                .size;
            Size sizeTitle = (TextPainter(
                text: TextSpan(text: column.value),
                textDirection: TextDirection.ltr)
              ..layout())
                .size;
            maxWidthCol[column.value] = sizeTitle.width;
            if((maxWidthCol[column.value] ?? 0) < size.width){
                maxWidthCol[column.value] = size.width;
            }

            ProductData productData = ProductData(column.value, value ?? "", false, true, maxWidthCol[column.key] ?? 0);
            listProductData.add(productData);
        });

        listProductDatas.add(listProductData);
      });



      listProductDatas.forEach((element) {
        element.forEach((element) {
          element.width = (maxWidthCol[element.name] ?? 0) + 40;
          debugPrint(element.toString());
        });
      });

      productDataFactory?.fakeColum().forEach((element) {
        element.width = (maxWidthCol[element.value] ?? 0) + 40;
      });

      productDataFactory?.addCellData(listProductDatas, searchEvent.isRefresh);
      emit(state.copyWith(
        searchState: SearchState(productDataFactory)
      ));

      page++;
    },(error){
      emitter(state.copyWith(error: error));
    });
  }

  List<OptionItem> fakeColum(){
    return [
      OptionItem("工事", true, false, true, "kouji_name"),
      OptionItem("頭番", true, false, true, "header_mark"),
      OptionItem("コア符号", true, false, true, "buzai_name"),
      OptionItem("製品符号", true, false, true, "seihin_name"),
      OptionItem("階", true, false, true, "floor_name")
    ];
  }

  _getSection(GetSectionEvent getSectionEvent, Emitter<ProductManagementState> emitter) async {
    emitter(state.copyWith(isLoading: true));
    (await _getSectionUseCase(SectionRequestModel(
        token: getSectionEvent.token,
        refreshToken: getSectionEvent.refreshToken
    ))).fold((data) {
      debugPrint(data?.data?.toString());
      emitter(state.copyWith(section: data));
    }, (error) {
      emitter(state.copyWith(error: error));
    });
  }

  _getOptionItem(GetOptionItemEvent getOptionItemEvent, Emitter<ProductManagementState> emitter) async {
    emitter(state.copyWith(isLoading: true));
    (await _getOptionItemUseCase(OptionItemRequestModel(
        token: getOptionItemEvent.token,
        refreshToken: getOptionItemEvent.refreshToken,
        type: getOptionItemEvent.type
    ))).fold((data) {
      debugPrint(data?.data?.toString());
      emitter(state.copyWith(optionItem: data));
    }, (error) {
      emitter(state.copyWith(error: error));
    });
  }
}