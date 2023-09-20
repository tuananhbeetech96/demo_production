import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class ProductManagementBloc extends BaseBloc<ProductManagementEvent,ProductManagementState>{
  ProductManagementBloc(this._productManagementUseCase, this._getSectionUseCase, this._getOptionItemUseCase, this.preferences) : super(const ProductManagementState());

  final ProductManagementUseCase _productManagementUseCase;
  final GetSection _getSectionUseCase;
  final GetOptionItem _getOptionItemUseCase;
  final ProductionSharedPreferences preferences;

  @override
  void init() {
    on<SearchEvent>(_search);
    on<GetSectionEvent>(_getSection);
    on<GetOptionItemEvent>(_getOptionItem);
    add(GetSectionEvent(preferences.user?.token ?? '', preferences.user?.refreshToken ?? ''));
    add(GetOptionItemEvent(preferences.user?.token ?? '', preferences.user?.refreshToken ?? '', 1));
    add(SearchEvent());
  }

  int page = 1;

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
      debugPrint(data?.data?.toString());
      emitter(state.copyWith(

      ));
      page++;
    });
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