import 'package:json_annotation/json_annotation.dart';

import '../../base/base_response.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel implements BaseDataModel {
  @JsonKey(name: "user_id")
  final String? userId;
  final String? token;
  @JsonKey(name: "fab_id")
  final int? fabId;
  @JsonKey(name: "X-SFPM-UUID")
  final String? uuid;
  @JsonKey(name: "refresh_token")
  final String? refreshToken;
  final int? role;

  const LoginResponseModel({this.userId, this.token, this.fabId, this.uuid, this.refreshToken, this.role});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);

  @override
  T fromJson<T extends BaseDataModel>(Map<String, dynamic> json) =>
      LoginResponseModel.fromJson(json) as T;
}