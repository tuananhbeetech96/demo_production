import 'package:json_annotation/json_annotation.dart';
import 'package:music_app/features/data/base/base_response.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel implements BaseDataModel{
  SearchModel({
      int? currentPage,
      int? total,
      int? lastPage, 
      List<Data>? data, 
      List<FilterKouji>? filterKouji, 
      List<FilterStanza>? filterStanza, 
      List<FilterFloor>? filterFloor, 
      List<FilterArea>? filterArea, 
      List<FilterNode>? filterNode, 
      List<FilterPaint>? filterPaint, 
      List<FilterGroup>? filterGroup, 
      List<FilterBuild>? filterBuild, 
      List<FilterShip>? filterShip, 
      FilterDate? filterDate,}){
    _currentPage = currentPage;
    _total = total;
    _lastPage = lastPage;
    _data = data;
    _filterKouji = filterKouji;
    _filterStanza = filterStanza;
    _filterFloor = filterFloor;
    _filterArea = filterArea;
    _filterNode = filterNode;
    _filterPaint = filterPaint;
    _filterGroup = filterGroup;
    _filterBuild = filterBuild;
    _filterShip = filterShip;
    _filterDate = filterDate;


}

  @override
  String toString() {
    return 'SearchModel{_currentPage: $_currentPage, _total: $_total, _lastPage: $_lastPage, _data: $_data, _filterKouji: $_filterKouji, _filterStanza: $_filterStanza, _filterFloor: $_filterFloor, _filterArea: $_filterArea, _filterNode: $_filterNode, _filterPaint: $_filterPaint, _filterGroup: $_filterGroup, _filterBuild: $_filterBuild, _filterShip: $_filterShip, _filterDate: $_filterDate}';
  }

  factory SearchModel.fromJson(dynamic json) => _$SearchModelFromJson(json);

  int? _currentPage;
  int? _total;
  int? _lastPage;
  List<Data>? _data;
  List<FilterKouji>? _filterKouji;
  List<FilterStanza>? _filterStanza;
  List<FilterFloor>? _filterFloor;
  List<FilterArea>? _filterArea;
  List<FilterNode>? _filterNode;
  List<FilterPaint>? _filterPaint;
  List<FilterGroup>? _filterGroup;
  List<FilterBuild>? _filterBuild;
  List<FilterShip>? _filterShip;
  FilterDate? _filterDate;
SearchModel copyWith({  int? currentPage,
  int? total,
  int? lastPage,
  List<Data>? data,
  List<FilterKouji>? filterKouji,
  List<FilterStanza>? filterStanza,
  List<FilterFloor>? filterFloor,
  List<FilterArea>? filterArea,
  List<FilterNode>? filterNode,
  List<FilterPaint>? filterPaint,
  List<FilterGroup>? filterGroup,
  List<FilterBuild>? filterBuild,
  List<FilterShip>? filterShip,
  FilterDate? filterDate,
}) => SearchModel(  currentPage: currentPage ?? _currentPage,
  total: total ?? _total,
  lastPage: lastPage ?? _lastPage,
  data: data ?? _data,
  filterKouji: filterKouji ?? _filterKouji,
  filterStanza: filterStanza ?? _filterStanza,
  filterFloor: filterFloor ?? _filterFloor,
  filterArea: filterArea ?? _filterArea,
  filterNode: filterNode ?? _filterNode,
  filterPaint: filterPaint ?? _filterPaint,
  filterGroup: filterGroup ?? _filterGroup,
  filterBuild: filterBuild ?? _filterBuild,
  filterShip: filterShip ?? _filterShip,
  filterDate: filterDate ?? _filterDate,
);
  int? get currentPage => _currentPage;
  int? get total => _total;
  int? get lastPage => _lastPage;
  List<Data>? get data => _data;
  List<FilterKouji>? get filterKouji => _filterKouji;
  List<FilterStanza>? get filterStanza => _filterStanza;
  List<FilterFloor>? get filterFloor => _filterFloor;
  List<FilterArea>? get filterArea => _filterArea;
  List<FilterNode>? get filterNode => _filterNode;
  List<FilterPaint>? get filterPaint => _filterPaint;
  List<FilterGroup>? get filterGroup => _filterGroup;
  List<FilterBuild>? get filterBuild => _filterBuild;
  List<FilterShip>? get filterShip => _filterShip;
  FilterDate? get filterDate => _filterDate;

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);

  @override
  T fromJson<T extends BaseDataModel>(Map<String, dynamic> json) => SearchModel.fromJson(json) as T;

}

@JsonSerializable()
class FilterDate {
  FilterDate({
      String? min, 
      String? max,}){
    _min = min;
    _max = max;
}

  factory FilterDate.fromJson(dynamic json) => _$FilterDateFromJson(json);
  String? _min;
  String? _max;
FilterDate copyWith({  String? min,
  String? max,
}) => FilterDate(  min: min ?? _min,
  max: max ?? _max,
);
  String? get min => _min;
  String? get max => _max;

  Map<String, dynamic> toJson() => _$FilterDateToJson(this);

}

@JsonSerializable()
class FilterShip {
  FilterShip({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  factory FilterShip.fromJson(dynamic json) => _$FilterShipFromJson(json);
  int? _koujiId;
  String? _id;
  String? _value;
FilterShip copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterShip(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() => _$FilterShipToJson(this);

}

@JsonSerializable()
class FilterBuild {
  FilterBuild({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  factory FilterBuild.fromJson(dynamic json) => _$FilterBuildFromJson(json);
  int? _koujiId;
  String? _id;
  String? _value;
FilterBuild copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterBuild(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() => _$FilterBuildToJson(this);

}

@JsonSerializable()
class FilterGroup {
  FilterGroup({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  factory FilterGroup.fromJson(dynamic json) => _$FilterGroupFromJson(json);
  int? _koujiId;
  String? _id;
  String? _value;
FilterGroup copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterGroup(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() => _$FilterGroupToJson(this);

}

@JsonSerializable()
class FilterPaint {
  FilterPaint({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  factory FilterPaint.fromJson(dynamic json) => FilterPaint.fromJson(json);
  int? _koujiId;
  String? _id;
  String? _value;
FilterPaint copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterPaint(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() => _$FilterPaintToJson(this);

}

@JsonSerializable()
class FilterNode {
  FilterNode({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  factory FilterNode.fromJson(dynamic json) => _$FilterNodeFromJson(json);

  int? _koujiId;
  String? _id;
  String? _value;
FilterNode copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterNode(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() => _$FilterNodeToJson(this);
}

@JsonSerializable()
class FilterArea {
  FilterArea({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  factory FilterArea.fromJson(dynamic json) => _$FilterAreaFromJson(json);
  int? _koujiId;
  String? _id;
  String? _value;
FilterArea copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterArea(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() => _$FilterAreaToJson(this);

}

@JsonSerializable()
class FilterFloor {
  FilterFloor({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterFloor.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
  int? _koujiId;
  String? _id;
  String? _value;
FilterFloor copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterFloor(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}

@JsonSerializable()
class FilterStanza {
  FilterStanza({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterStanza.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
  int? _koujiId;
  String? _id;
  String? _value;
FilterStanza copyWith({  int? koujiId,
  String? id,
  String? value,
}) => FilterStanza(  koujiId: koujiId ?? _koujiId,
  id: id ?? _id,
  value: value ?? _value,
);
  int? get koujiId => _koujiId;
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}
@JsonSerializable()
class FilterKouji {
  FilterKouji({
      String? id, 
      String? value,}){
    _id = id;
    _value = value;
}

  FilterKouji.fromJson(dynamic json) {
    _id = json['id'];
    _value = json['value'];
  }
  String? _id;
  String? _value;
FilterKouji copyWith({  String? id,
  String? value,
}) => FilterKouji(  id: id ?? _id,
  value: value ?? _value,
);
  String? get id => _id;
  String? get value => _value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}
@JsonSerializable()
class Data {
  Data({
      String? fabId, 
      String? koujiId, 
      String? koujiName, 
      String? headerMark, 
      String? color, 
      String? shiguchiId, 
      String? buzaiName, 
      String? compInfoKindName, 
      String? resultTypeMode, 
      String? seihinName, 
      String? floorName, 
      String? floorId, 
      String? stanza, 
      String? componentInfoBaseId, 
      String? keyplanName1, 
      String? keyplanName2, 
      String? areaName, 
      String? areaId, 
      String? nodeName, 
      String? nodeId, 
      String? paintName, 
      String? paintId, 
      String? buildName, 
      String? buildId, 
      String? groupName, 
      String? groupId, 
      String? shipName, 
      String? shipId, 
      String? weight, 
      String? weldLen, 
      String? ptargetDateTime, 
      String? flagEnd, 
      String? mailAddress, 
      String? presultType, 
      String? presultTypeName, 
      String? updateTime, 
      String? presultId, 
      String? updatedAt, 
      String? pTargetId, 
      String? workProcessId, 
      String? compSecId, 
      String? flagLate,}){
    _fabId = fabId;
    _koujiId = koujiId;
    _koujiName = koujiName;
    _headerMark = headerMark;
    _color = color;
    _shiguchiId = shiguchiId;
    _buzaiName = buzaiName;
    _compInfoKindName = compInfoKindName;
    _resultTypeMode = resultTypeMode;
    _seihinName = seihinName;
    _floorName = floorName;
    _floorId = floorId;
    _stanza = stanza;
    _componentInfoBaseId = componentInfoBaseId;
    _keyplanName1 = keyplanName1;
    _keyplanName2 = keyplanName2;
    _areaName = areaName;
    _areaId = areaId;
    _nodeName = nodeName;
    _nodeId = nodeId;
    _paintName = paintName;
    _paintId = paintId;
    _buildName = buildName;
    _buildId = buildId;
    _groupName = groupName;
    _groupId = groupId;
    _shipName = shipName;
    _shipId = shipId;
    _weight = weight;
    _weldLen = weldLen;
    _ptargetDateTime = ptargetDateTime;
    _flagEnd = flagEnd;
    _mailAddress = mailAddress;
    _presultType = presultType;
    _presultTypeName = presultTypeName;
    _updateTime = updateTime;
    _presultId = presultId;
    _updatedAt = updatedAt;
    _pTargetId = pTargetId;
    _workProcessId = workProcessId;
    _compSecId = compSecId;
    _flagLate = flagLate;
}

  factory Data.fromJson(dynamic json) => _$DataFromJson(json);
  String? _fabId;
  String? _koujiId;
  String? _koujiName;
  String? _headerMark;
  String? _color;
  String? _shiguchiId;
  String? _buzaiName;
  String? _compInfoKindName;
  String? _resultTypeMode;
  String? _seihinName;
  String? _floorName;
  String? _floorId;
  String? _stanza;
  String? _componentInfoBaseId;
  String? _keyplanName1;
  String? _keyplanName2;
  String? _areaName;
  String? _areaId;
  String? _nodeName;
  String? _nodeId;
  String? _paintName;
  String? _paintId;
  String? _buildName;
  String? _buildId;
  String? _groupName;
  String? _groupId;
  String? _shipName;
  String? _shipId;
  String? _weight;
  String? _weldLen;
  String? _ptargetDateTime;
  String? _flagEnd;
  String? _mailAddress;
  String? _presultType;
  String? _presultTypeName;
  String? _updateTime;
  String? _presultId;
  String? _updatedAt;
  String? _pTargetId;
  String? _workProcessId;
  String? _compSecId;
  String? _flagLate;
Data copyWith({  String? fabId,
  String? koujiId,
  String? koujiName,
  String? headerMark,
  String? color,
  String? shiguchiId,
  String? buzaiName,
  String? compInfoKindName,
  String? resultTypeMode,
  String? seihinName,
  String? floorName,
  String? floorId,
  String? stanza,
  String? componentInfoBaseId,
  String? keyplanName1,
  String? keyplanName2,
  String? areaName,
  String? areaId,
  String? nodeName,
  String? nodeId,
  String? paintName,
  String? paintId,
  String? buildName,
  String? buildId,
  String? groupName,
  String? groupId,
  String? shipName,
  String? shipId,
  String? weight,
  String? weldLen,
  String? ptargetDateTime,
  String? flagEnd,
  String? mailAddress,
  String? presultType,
  String? presultTypeName,
  String? updateTime,
  String? presultId,
  String? updatedAt,
  String? pTargetId,
  String? workProcessId,
  String? compSecId,
  String? flagLate,
}) => Data(  fabId: fabId ?? _fabId,
  koujiId: koujiId ?? _koujiId,
  koujiName: koujiName ?? _koujiName,
  headerMark: headerMark ?? _headerMark,
  color: color ?? _color,
  shiguchiId: shiguchiId ?? _shiguchiId,
  buzaiName: buzaiName ?? _buzaiName,
  compInfoKindName: compInfoKindName ?? _compInfoKindName,
  resultTypeMode: resultTypeMode ?? _resultTypeMode,
  seihinName: seihinName ?? _seihinName,
  floorName: floorName ?? _floorName,
  floorId: floorId ?? _floorId,
  stanza: stanza ?? _stanza,
  componentInfoBaseId: componentInfoBaseId ?? _componentInfoBaseId,
  keyplanName1: keyplanName1 ?? _keyplanName1,
  keyplanName2: keyplanName2 ?? _keyplanName2,
  areaName: areaName ?? _areaName,
  areaId: areaId ?? _areaId,
  nodeName: nodeName ?? _nodeName,
  nodeId: nodeId ?? _nodeId,
  paintName: paintName ?? _paintName,
  paintId: paintId ?? _paintId,
  buildName: buildName ?? _buildName,
  buildId: buildId ?? _buildId,
  groupName: groupName ?? _groupName,
  groupId: groupId ?? _groupId,
  shipName: shipName ?? _shipName,
  shipId: shipId ?? _shipId,
  weight: weight ?? _weight,
  weldLen: weldLen ?? _weldLen,
  ptargetDateTime: ptargetDateTime ?? _ptargetDateTime,
  flagEnd: flagEnd ?? _flagEnd,
  mailAddress: mailAddress ?? _mailAddress,
  presultType: presultType ?? _presultType,
  presultTypeName: presultTypeName ?? _presultTypeName,
  updateTime: updateTime ?? _updateTime,
  presultId: presultId ?? _presultId,
  updatedAt: updatedAt ?? _updatedAt,
  pTargetId: pTargetId ?? _pTargetId,
  workProcessId: workProcessId ?? _workProcessId,
  compSecId: compSecId ?? _compSecId,
  flagLate: flagLate ?? _flagLate,
);
  String? get fabId => _fabId;
  String? get koujiId => _koujiId;
  String? get koujiName => _koujiName;
  String? get headerMark => _headerMark;
  String? get color => _color;
  String? get shiguchiId => _shiguchiId;
  String? get buzaiName => _buzaiName;
  String? get compInfoKindName => _compInfoKindName;
  String? get resultTypeMode => _resultTypeMode;
  String? get seihinName => _seihinName;
  String? get floorName => _floorName;
  String? get floorId => _floorId;
  String? get stanza => _stanza;
  String? get componentInfoBaseId => _componentInfoBaseId;
  String? get keyplanName1 => _keyplanName1;
  String? get keyplanName2 => _keyplanName2;
  String? get areaName => _areaName;
  String? get areaId => _areaId;
  String? get nodeName => _nodeName;
  String? get nodeId => _nodeId;
  String? get paintName => _paintName;
  String? get paintId => _paintId;
  String? get buildName => _buildName;
  String? get buildId => _buildId;
  String? get groupName => _groupName;
  String? get groupId => _groupId;
  String? get shipName => _shipName;
  String? get shipId => _shipId;
  String? get weight => _weight;
  String? get weldLen => _weldLen;
  String? get ptargetDateTime => _ptargetDateTime;
  String? get flagEnd => _flagEnd;
  String? get mailAddress => _mailAddress;
  String? get presultType => _presultType;
  String? get presultTypeName => _presultTypeName;
  String? get updateTime => _updateTime;
  String? get presultId => _presultId;
  String? get updatedAt => _updatedAt;
  String? get pTargetId => _pTargetId;
  String? get workProcessId => _workProcessId;
  String? get compSecId => _compSecId;
  String? get flagLate => _flagLate;

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  String toString() {
    return 'Data{_fabId: $_fabId, _koujiId: $_koujiId, _koujiName: $_koujiName, _headerMark: $_headerMark, _color: $_color, _shiguchiId: $_shiguchiId, _buzaiName: $_buzaiName, _compInfoKindName: $_compInfoKindName, _resultTypeMode: $_resultTypeMode, _seihinName: $_seihinName, _floorName: $_floorName, _floorId: $_floorId, _stanza: $_stanza, _componentInfoBaseId: $_componentInfoBaseId, _keyplanName1: $_keyplanName1, _keyplanName2: $_keyplanName2, _areaName: $_areaName, _areaId: $_areaId, _nodeName: $_nodeName, _nodeId: $_nodeId, _paintName: $_paintName, _paintId: $_paintId, _buildName: $_buildName, _buildId: $_buildId, _groupName: $_groupName, _groupId: $_groupId, _shipName: $_shipName, _shipId: $_shipId, _weight: $_weight, _weldLen: $_weldLen, _ptargetDateTime: $_ptargetDateTime, _flagEnd: $_flagEnd, _mailAddress: $_mailAddress, _presultType: $_presultType, _presultTypeName: $_presultTypeName, _updateTime: $_updateTime, _presultId: $_presultId, _updatedAt: $_updatedAt, _pTargetId: $_pTargetId, _workProcessId: $_workProcessId, _compSecId: $_compSecId, _flagLate: $_flagLate}';
  }
}