import 'package:music_app/features/domain/entity/option_item.dart';
import 'package:music_app/features/domain/entity/product_data.dart';


class ProductDataFactory {
  final List<List<ProductData>> _cellData = [];
  final List<OptionItem> _columns = [];

  void addCellData(List<List<ProductData>> data,bool isRefresh){
    if(isRefresh){
      _cellData.clear();
    }
    _cellData.addAll(data);
  }

  void addColumns(List<OptionItem> columns,bool isRefresh){
    if(isRefresh){
      _columns.clear();
    }
    _columns.addAll(columns);
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
  List<OptionItem> getColumns() => _columns;

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