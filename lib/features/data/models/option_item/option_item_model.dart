
import 'package:json_annotation/json_annotation.dart';

import '../../base/base_response.dart';

part 'option_item_model.g.dart';

@JsonSerializable()
class OptionItemResponseModel implements BaseDataModel {
  final String? key;
  final String? value;
  final int? flag;
  @JsonKey(name: "flag_merge")
  final int? flagMerge;
  @JsonKey(name: "sort_by")
  final String? sortBy;

  const OptionItemResponseModel({this.key, this.value, this.flag, this.flagMerge, this.sortBy});

  factory OptionItemResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OptionItemResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$OptionItemResponseModelToJson(this);

  @override
  T fromJson<T extends BaseDataModel>(Map<String, dynamic> json) =>
      OptionItemResponseModel.fromJson(json) as T;

  @override
  String toString() {
    return 'Data{_keye: $key, _value: $value, _flag: $flag, _flagMerge: $flagMerge, _sortBy: $sortBy}';
  }
}