class OptionModel {
  OptionModel({
      this.key, 
      this.value, 
      this.flag, 
      this.flagMerge, 
      this.sortBy,});

  OptionModel.fromJson(dynamic json) {
    key = json['key'];
    value = json['value'];
    flag = json['flag'];
    flagMerge = json['flag_merge'];
    sortBy = json['sort_by'];
  }
  String? key;
  String? value;
  int? flag;
  int? flagMerge;
  String? sortBy;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    map['flag'] = flag;
    map['flag_merge'] = flagMerge;
    map['sort_by'] = sortBy;
    return map;
  }

}