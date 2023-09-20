import 'package:json_annotation/json_annotation.dart';
import 'package:music_app/features/data/base/base_response.dart';

part 'section_response_model.g.dart';

@JsonSerializable()
class SectionResponseModel implements BaseDataModel {
  final String? name;
  final int? id;
  final int? type;

  const SectionResponseModel({this.name, this.id, this.type});

  factory SectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SectionResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionResponseModelToJson(this);

  @override
  T fromJson<T extends BaseDataModel>(Map<String, dynamic> json) =>
      SectionResponseModel.fromJson(json) as T;

  @override
  String toString() {
    return 'Data{_name: $name, _id: $id, _type: $type}';
  }
}