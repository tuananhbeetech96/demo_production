// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      userId: json['user_id'] as String?,
      token: json['token'] as String?,
      fabId: json['fab_id'] as int?,
      uuid: json['X-SFPM-UUID'] as String?,
      refreshToken: json['refresh_token'] as String?,
      role: json['role'] as int?,
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'token': instance.token,
      'fab_id': instance.fabId,
      'X-SFPM-UUID': instance.uuid,
      'refresh_token': instance.refreshToken,
      'role': instance.role,
    };
