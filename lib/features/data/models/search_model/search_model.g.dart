// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      currentPage: json['currentPage'] as int?,
      total: json['total'] as int?,
      lastPage: json['lastPage'] as int?,
      data: (json['data'] as List<dynamic>?)?.map(Data.fromJson).toList(),
      filterKouji: (json['filterKouji'] as List<dynamic>?)
          ?.map(FilterKouji.fromJson)
          .toList(),
      filterStanza: (json['filterStanza'] as List<dynamic>?)
          ?.map(FilterStanza.fromJson)
          .toList(),
      filterFloor: (json['filterFloor'] as List<dynamic>?)
          ?.map(FilterFloor.fromJson)
          .toList(),
      filterArea: (json['filterArea'] as List<dynamic>?)
          ?.map(FilterArea.fromJson)
          .toList(),
      filterNode: (json['filterNode'] as List<dynamic>?)
          ?.map(FilterNode.fromJson)
          .toList(),
      filterPaint: (json['filterPaint'] as List<dynamic>?)
          ?.map(FilterPaint.fromJson)
          .toList(),
      filterGroup: (json['filterGroup'] as List<dynamic>?)
          ?.map(FilterGroup.fromJson)
          .toList(),
      filterBuild: (json['filterBuild'] as List<dynamic>?)
          ?.map(FilterBuild.fromJson)
          .toList(),
      filterShip: (json['filterShip'] as List<dynamic>?)
          ?.map(FilterShip.fromJson)
          .toList(),
      filterDate: json['filterDate'] == null
          ? null
          : FilterDate.fromJson(json['filterDate']),
    );

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'total': instance.total,
      'lastPage': instance.lastPage,
      'data': instance.data,
      'filterKouji': instance.filterKouji,
      'filterStanza': instance.filterStanza,
      'filterFloor': instance.filterFloor,
      'filterArea': instance.filterArea,
      'filterNode': instance.filterNode,
      'filterPaint': instance.filterPaint,
      'filterGroup': instance.filterGroup,
      'filterBuild': instance.filterBuild,
      'filterShip': instance.filterShip,
      'filterDate': instance.filterDate,
    };

FilterDate _$FilterDateFromJson(Map<String, dynamic> json) => FilterDate(
      min: json['min'] as String?,
      max: json['max'] as String?,
    );

Map<String, dynamic> _$FilterDateToJson(FilterDate instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

FilterShip _$FilterShipFromJson(Map<String, dynamic> json) => FilterShip(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterShipToJson(FilterShip instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterBuild _$FilterBuildFromJson(Map<String, dynamic> json) => FilterBuild(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterBuildToJson(FilterBuild instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterGroup _$FilterGroupFromJson(Map<String, dynamic> json) => FilterGroup(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterGroupToJson(FilterGroup instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterPaint _$FilterPaintFromJson(Map<String, dynamic> json) => FilterPaint(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterPaintToJson(FilterPaint instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterNode _$FilterNodeFromJson(Map<String, dynamic> json) => FilterNode(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterNodeToJson(FilterNode instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterArea _$FilterAreaFromJson(Map<String, dynamic> json) => FilterArea(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterAreaToJson(FilterArea instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterFloor _$FilterFloorFromJson(Map<String, dynamic> json) => FilterFloor(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterFloorToJson(FilterFloor instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterStanza _$FilterStanzaFromJson(Map<String, dynamic> json) => FilterStanza(
      koujiId: json['koujiId'] as int?,
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterStanzaToJson(FilterStanza instance) =>
    <String, dynamic>{
      'koujiId': instance.koujiId,
      'id': instance.id,
      'value': instance.value,
    };

FilterKouji _$FilterKoujiFromJson(Map<String, dynamic> json) => FilterKouji(
      id: json['id'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$FilterKoujiToJson(FilterKouji instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      fabId: json['fabId'] as String?,
      koujiId: json['koujiId'] as String?,
      koujiName: json['koujiName'] as String?,
      headerMark: json['headerMark'] as String?,
      color: json['color'] as String?,
      shiguchiId: json['shiguchiId'] as String?,
      buzaiName: json['buzaiName'] as String?,
      compInfoKindName: json['compInfoKindName'] as String?,
      resultTypeMode: json['resultTypeMode'] as String?,
      seihinName: json['seihinName'] as String?,
      floorName: json['floorName'] as String?,
      floorId: json['floorId'] as String?,
      stanza: json['stanza'] as String?,
      componentInfoBaseId: json['componentInfoBaseId'] as String?,
      keyplanName1: json['keyplanName1'] as String?,
      keyplanName2: json['keyplanName2'] as String?,
      areaName: json['areaName'] as String?,
      areaId: json['areaId'] as String?,
      nodeName: json['nodeName'] as String?,
      nodeId: json['nodeId'] as String?,
      paintName: json['paintName'] as String?,
      paintId: json['paintId'] as String?,
      buildName: json['buildName'] as String?,
      buildId: json['buildId'] as String?,
      groupName: json['groupName'] as String?,
      groupId: json['groupId'] as String?,
      shipName: json['shipName'] as String?,
      shipId: json['shipId'] as String?,
      weight: json['weight'] as String?,
      weldLen: json['weldLen'] as String?,
      ptargetDateTime: json['ptargetDateTime'] as String?,
      flagEnd: json['flagEnd'] as String?,
      mailAddress: json['mailAddress'] as String?,
      presultType: json['presultType'] as String?,
      presultTypeName: json['presultTypeName'] as String?,
      updateTime: json['updateTime'] as String?,
      presultId: json['presultId'] as String?,
      updatedAt: json['updatedAt'] as String?,
      pTargetId: json['pTargetId'] as String?,
      workProcessId: json['workProcessId'] as String?,
      compSecId: json['compSecId'] as String?,
      flagLate: json['flagLate'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'fabId': instance.fabId,
      'koujiId': instance.koujiId,
      'koujiName': instance.koujiName,
      'headerMark': instance.headerMark,
      'color': instance.color,
      'shiguchiId': instance.shiguchiId,
      'buzaiName': instance.buzaiName,
      'compInfoKindName': instance.compInfoKindName,
      'resultTypeMode': instance.resultTypeMode,
      'seihinName': instance.seihinName,
      'floorName': instance.floorName,
      'floorId': instance.floorId,
      'stanza': instance.stanza,
      'componentInfoBaseId': instance.componentInfoBaseId,
      'keyplanName1': instance.keyplanName1,
      'keyplanName2': instance.keyplanName2,
      'areaName': instance.areaName,
      'areaId': instance.areaId,
      'nodeName': instance.nodeName,
      'nodeId': instance.nodeId,
      'paintName': instance.paintName,
      'paintId': instance.paintId,
      'buildName': instance.buildName,
      'buildId': instance.buildId,
      'groupName': instance.groupName,
      'groupId': instance.groupId,
      'shipName': instance.shipName,
      'shipId': instance.shipId,
      'weight': instance.weight,
      'weldLen': instance.weldLen,
      'ptargetDateTime': instance.ptargetDateTime,
      'flagEnd': instance.flagEnd,
      'mailAddress': instance.mailAddress,
      'presultType': instance.presultType,
      'presultTypeName': instance.presultTypeName,
      'updateTime': instance.updateTime,
      'presultId': instance.presultId,
      'updatedAt': instance.updatedAt,
      'pTargetId': instance.pTargetId,
      'workProcessId': instance.workProcessId,
      'compSecId': instance.compSecId,
      'flagLate': instance.flagLate,
    };
