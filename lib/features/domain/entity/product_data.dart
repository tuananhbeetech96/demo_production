class ProductData{
  String name;
  String value;
  bool isCheck = false;
  bool isVisibleCheckBox = true;
  double width = 0;

  ProductData(
      this.name, this.value, this.isCheck, this.isVisibleCheckBox, this.width);

  @override
  String toString() {
    return 'ProductData{name: $name, value: $value, isCheck: $isCheck, isVisibleCheckBox: $isVisibleCheckBox, width: $width}';
  }
}