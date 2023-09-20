class OptionItem{
  String value;
  bool enable = false;
  bool isFix = false;
  bool isInvisible = false;
  String key;
  double width;

  OptionItem(this.value, this.enable, this.isFix, this.isInvisible, this.key,{this.width = 0});

  @override
  String toString() {
    return 'OptionItem{value: $value, enable: $enable, isFix: $isFix, isInvisible: $isInvisible, key: $key, width: $width}';
  }
}