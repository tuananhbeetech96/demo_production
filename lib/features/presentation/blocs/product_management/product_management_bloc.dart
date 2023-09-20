import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/core.dart';
import 'package:music_app/core/extensions/iterable_extensions.dart';
import 'package:music_app/features/data/models/search_model/search_model.dart';
import 'package:music_app/features/domain/entity/product_data.dart';
import 'package:music_app/features/domain/entity/product_data_factory.dart';
import 'package:music_app/features/domain/entity/request/search_request.dart';
import 'package:music_app/features/domain/usecases/product_management_usecase.dart';
import 'package:music_app/features/presentation/blocs/base/base_bloc.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_event.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_state.dart';
import 'package:reflectable/mirrors.dart';

import '../../../domain/entity/option_item.dart';

class ProductManagementBloc extends BaseBloc<ProductManagementEvent,ProductManagementState>{
  ProductManagementBloc(this._productManagementUseCase) : super(const ProductManagementState());

  final ProductManagementUseCase _productManagementUseCase;
  ProductDataFactory? productDataFactory;
  
  bool isCheckAll() => productDataFactory?.isCheckAll() ?? false;

  void checkAll(bool check){
    productDataFactory?.checkAll(check);
  }

  @override
  void init() {
    on<SearchEvent>(_search);
    add(SearchEvent());
    productDataFactory = ProductDataFactory();
  }

  int page = 1;
  Map<String,double> maxWidthCol = {};

  _search(SearchEvent searchEvent,Emitter<ProductManagementState> emitter) async{
    if(searchEvent.isRefresh){
      page = 1;
    }
    emit(state.copyWith(
      isLoading: true
    ));
    (await _productManagementUseCase(SearchRequest(
      keyword: "",
      mode: 2,
      refreshToken: "eyJjdHkiOiJKV1QiLCJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiUlNBLU9BRVAifQ.JM0MtFYJmTZQLipO_37hTlyhrd-fF_eJHF2apEiAaHOehqtzTGetMpSs40C3jr_qdyOFnORyGUdxPs0EnU_kNSpWga17y04EN1I-74XYOTyPL_d2sTpJW5bBT0bv4dgnPDTaYLm6WGBwY8ICtiq3SPvFa74eRP2B5Pmx_rKFS6sfsVTSJO8deRr-86xaLO9HGiCAMuHiYacBuaMYKehYWsS5w7s-9Hc-5RHgPl-ORXFQoT4Ty8VOw6Esp2CXih8Vnozj_6DiXPazUm-HoeoZslcOXjp4M2pEQjbMt-x-_ISe0L6WEfvBWVKJqkxEuEkRIa60_OzzOqDR94uk0c_7Fg.TJK2PpWVFOzqA84X.jzSuNzTrXP62ZXWNy9M2FEOolgqDO10FsCe0--VFahguZI3n2E5kKFhq7-Qzm3ENSnu739Vu2XixRJHNegLo2V2Q2fnPWPd7qN9Qq1iIcjHmsPmCsnBx_SjDk3eJ0x2imWndi9rO-8GSfdxj-jro_irGCl5LQqW7ifoNR03osZvy-NSiGhmtYfnTNpnNMwiplPwBlW9nCEwqLIJ_lakKHCiI5mQ61HNUBw3_SlwMn4I2AT3JFEvLY8_7wLzaEHNZthexpoe_1T_LAKE-Fhwx1hJxqgBW6KdNNgQQaYNc11aj5RD5Q4CrAsajsp941bLN-suxWF5V3A07179ykYWOk_XhZchy4-bc7jAM1aPWJNL4N5Ky6KiC8ndWkxinfvsOgy-UDoeK6e9ccmtfPPoOX3fqzdTYbz1x_U9jiCLCpJQi6tLy8AxxqCbiLUBMzl9K1GOeXG91mRHEXNanzto3nJ1qxd8pWooW0cu3efOAk97xOvjB4opVxzbSjPrQ9EPn-5YzBp-IRAFKP-4p4G7UO91wfAAerru5vLuxV_prGOvoi6wqayonKzs_rSJqep1MlZydRHFawaNe6s_0ayEDn_9t8i_wGfiHZCCgDHb3n07yQFQN7PPmcF0HuWk7KDatZefmxAplXLSEv_JqZPqLGQ3CA-MJ0KU1sEVW4PChwsYy9r9RwcT75rW6BOmsFmlC_dI7sAdv0nvwzZVqvofn0pYF9A2MUqDseALdi_Lx7MH6XMee_HLwWPxKgYPDzbwxFkTOf1tVhtkfsZL5349zoCaiFhUH_UZumsdnWYWj4VBX74a8tnRiGE2UTOEALAJYc2HmMgl7CqmgQWl-XEapyTVH7gxmEV6oyUEIzc_Hhs9dBGakcBh71vL-VDX17forH3G47gkiFaL3OrXR09vcek2JiJr2AUau_DHDVsY1WvnlPvvn0sFw6sIglGCXST76L3GIzVatQcjI97OEq0UYQsUTrjCJdRBwJ-0UhMSCgRnQkKUZluqbWJeS9x3JvQGfl8q2BsyetUHJUMzhpizrLS_geRw_1paYW27V2pBDlbHrdtlex2pFm3Cf0kK_g8OZnj73m23MM2zYd2V_RZtwQoLFM0IZ8ymmtBnytYRkt0izgxpnvvlWH4SdPL0DyFr2wl3y0B4xn0cFaILawrYxoA6vfYgo39JPwwRQZroF_qAeFKA1iYlelEFsU2FybAzxaES40WfRMrSu4OJ5qnYkeUEoQxkZLd3PMcEFYf-AKyFHAYq5nwkh0URrBaNVvUXGmifLzPyjQ4SjQA.8by0KeU14aHONQxd6ODE-w",
      sectionId: 8,
      token: "eyJraWQiOiJIbnRnZThFeWhVeDJqNXFSSXF6c2hRc3g0S1RHXC9wajFmN082V0VXNmFJYz0iLCJhbGciOiJSUzI1NiJ9.eyJzdWIiOiI2NGNlY2E2OC04MTJhLTQwYmEtOTRkYi1lNzg0NjQ4N2YyYjciLCJjb2duaXRvOmdyb3VwcyI6WyIyMDAwNiJdLCJpc3MiOiJodHRwczpcL1wvY29nbml0by1pZHAuYXAtbm9ydGhlYXN0LTEuYW1hem9uYXdzLmNvbVwvYXAtbm9ydGhlYXN0LTFfN0VZWEJUVE9MIiwiY2xpZW50X2lkIjoiZjM0MzRrcjRhNjllMHJ1djJhaDF2MXUyZSIsIm9yaWdpbl9qdGkiOiI4NTUyMzA4Yy0xYTEyLTRmMTMtODQzNi0yOWQzN2NkZDRhNzMiLCJldmVudF9pZCI6Ijc1MjgxOGY4LTAxNTUtNDI1ZC1hY2MxLWE1Yjg1Zjg2YTY0MCIsInRva2VuX3VzZSI6ImFjY2VzcyIsInNjb3BlIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE2OTUwMDc2MjMsImV4cCI6MTY5NTI2Mjc2NSwiaWF0IjoxNjk1MTc2MzY1LCJqdGkiOiIwMjYzMGI3Yy0zNDBlLTQ0ZmEtYjRhYy1hMGVkODI3YjJiYTIiLCJ1c2VybmFtZSI6Ijk4In0.baPXEDgJ69RaRbbOAAmIfBjkRkI1GdbhgSHSJLmD5wRK3WW-iBsa6buYHh_BHQ-drR6BOoNP3MG0Nqsyx1U2V0AR0IyEiOR78o_z-qzW_GzmkwISfcgF-rTdBPlY5l0yBgm_gTGdvvTaP8iWGX01UuyJULEdofEsGc4BPSIWGVGPcyQ2vms1PzHnIrUjswlBPDDyXChQZnQdvGCN6f8p_878IMninrmRtaNt3aNB8XBeyYRPfSoTzT9_Pr6W-F5HChvn-Wi0WXZgS35XrYPTq8uyf0o8Gtui0R5o7O07euL9B9RyVD7v4pniM5aCc2DbDGpt6-QskjSlRQLQT0jozg",
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
}