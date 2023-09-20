import 'package:music_app/features/domain/entity/option_item.dart';
import 'package:music_app/features/domain/entity/product_data.dart';


class ProductDataFactory {
  final List<List<ProductData>> _cellData = [];
  final List<OptionItem> _columns = [
    OptionItem("工事", true, false, true, "kouji_name"),
    OptionItem("頭番", true, false, true, "header_mark"),
    OptionItem("コア符号", true, false, true, "buzai_name"),
    OptionItem("製品符号", true, false, true, "seihin_name"),
    OptionItem("階", true, false, true, "floor_name")
  ];

  void addCellData(List<List<ProductData>> data,bool isRefresh){
    if(isRefresh){
      _cellData.clear();
    }
    _cellData.addAll(data);
  }

  bool isCheckAll() => _cellData.every((element) => element.every((element) => element.isCheck));

  void clearData(){
    _cellData.clear();
  }

  void checkAll(bool check){
    _cellData.forEach((element) {
      element.forEach((element) {
        element.isCheck = check;
      });
    });
  }

  List<List<ProductData>> getData() => _cellData;

  List<OptionItem> fakeColum(){
    return _columns;
  }

  double getTotalWidth() {
    List<double> listWidth =  _cellData.firstOrNull?.map((e) => e.width).toList() ?? [];
    double totalWidth = 0;
    listWidth.forEach((element) {
      totalWidth += element;
    });

    return totalWidth;
  }

  int itemCount() => _cellData?.length ?? 0;
}