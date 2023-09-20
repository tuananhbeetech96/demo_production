// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OptionItemResponseModel _$OptionItemResponseModelFromJson(
        Map<String, dynamic> json) =>
    OptionItemResponseModel(
      key: json['key'] as String?,
      value: json['value'] as String?,
      flag: json['flag'] as int?,
      flagMerge: json['flag_merge'] as int?,
      sortBy: json['sort_by'] as String?,
    );

Map<String, dynamic> _$OptionItemResponseModelToJson(
        OptionItemResponseModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'flag': instance.flag,
      'flag_merge': instance.flagMerge,
      'sort_by': instance.sortBy,
    };
