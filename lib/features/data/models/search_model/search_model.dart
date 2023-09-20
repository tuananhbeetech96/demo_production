import 'package:music_app/features/data/base/base_response.dart';
import 'package:reflectable/reflectable.dart';

class SearchModel extends BaseDataModel{
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

  SearchModel.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    _total = json['total'];
    _lastPage = json['last_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    if (json['filter_kouji'] != null) {
      _filterKouji = [];
      json['filter_kouji'].forEach((v) {
        _filterKouji?.add(FilterKouji.fromJson(v));
      });
    }
    if (json['filter_stanza'] != null) {
      _filterStanza = [];
      json['filter_stanza'].forEach((v) {
        _filterStanza?.add(FilterStanza.fromJson(v));
      });
    }
    if (json['filter_floor'] != null) {
      _filterFloor = [];
      json['filter_floor'].forEach((v) {
        _filterFloor?.add(FilterFloor.fromJson(v));
      });
    }
    if (json['filter_area'] != null) {
      _filterArea = [];
      json['filter_area'].forEach((v) {
        _filterArea?.add(FilterArea.fromJson(v));
      });
    }
    if (json['filter_node'] != null) {
      _filterNode = [];
      json['filter_node'].forEach((v) {
        _filterNode?.add(FilterNode.fromJson(v));
      });
    }
    if (json['filter_paint'] != null) {
      _filterPaint = [];
      json['filter_paint'].forEach((v) {
        _filterPaint?.add(FilterPaint.fromJson(v));
      });
    }
    if (json['filter_group'] != null) {
      _filterGroup = [];
      json['filter_group'].forEach((v) {
        _filterGroup?.add(FilterGroup.fromJson(v));
      });
    }
    if (json['filter_build'] != null) {
      _filterBuild = [];
      json['filter_build'].forEach((v) {
        _filterBuild?.add(FilterBuild.fromJson(v));
      });
    }
    if (json['filter_ship'] != null) {
      _filterShip = [];
      json['filter_ship'].forEach((v) {
        _filterShip?.add(FilterShip.fromJson(v));
      });
    }
    _filterDate = json['filter_date'] != null ? FilterDate.fromJson(json['filter_date']) : null;

  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    map['total'] = _total;
    map['last_page'] = _lastPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    if (_filterKouji != null) {
      map['filter_kouji'] = _filterKouji?.map((v) => v.toJson()).toList();
    }
    if (_filterStanza != null) {
      map['filter_stanza'] = _filterStanza?.map((v) => v.toJson()).toList();
    }
    if (_filterFloor != null) {
      map['filter_floor'] = _filterFloor?.map((v) => v.toJson()).toList();
    }
    if (_filterArea != null) {
      map['filter_area'] = _filterArea?.map((v) => v.toJson()).toList();
    }
    if (_filterNode != null) {
      map['filter_node'] = _filterNode?.map((v) => v.toJson()).toList();
    }
    if (_filterPaint != null) {
      map['filter_paint'] = _filterPaint?.map((v) => v.toJson()).toList();
    }
    if (_filterGroup != null) {
      map['filter_group'] = _filterGroup?.map((v) => v.toJson()).toList();
    }
    if (_filterBuild != null) {
      map['filter_build'] = _filterBuild?.map((v) => v.toJson()).toList();
    }
    if (_filterShip != null) {
      map['filter_ship'] = _filterShip?.map((v) => v.toJson()).toList();
    }
    if (_filterDate != null) {
      map['filter_date'] = _filterDate?.toJson();
    }
    return map;
  }

  @override
  T fromJson<T extends BaseDataModel>(Map<String, dynamic> json) {
    return SearchModel.fromJson(json) as T;
  }

  @override
  String toString() {
    return 'SearchModel{_currentPage: $_currentPage, _total: $_total, _lastPage: $_lastPage, _data: $_data, _filterKouji: $_filterKouji, _filterStanza: $_filterStanza, _filterFloor: $_filterFloor, _filterArea: $_filterArea, _filterNode: $_filterNode, _filterPaint: $_filterPaint, _filterGroup: $_filterGroup, _filterBuild: $_filterBuild, _filterShip: $_filterShip, _filterDate: $_filterDate}';
  }
}

class FilterDate {
  FilterDate({
      String? min, 
      String? max,}){
    _min = min;
    _max = max;
}

  FilterDate.fromJson(dynamic json) {
    _min = json['min'];
    _max = json['max'];
  }
  String? _min;
  String? _max;
FilterDate copyWith({  String? min,
  String? max,
}) => FilterDate(  min: min ?? _min,
  max: max ?? _max,
);
  String? get min => _min;
  String? get max => _max;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['min'] = _min;
    map['max'] = _max;
    return map;
  }

}

class FilterShip {
  FilterShip({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterShip.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}

class FilterBuild {
  FilterBuild({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterBuild.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}

class FilterGroup {
  FilterGroup({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterGroup.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}

class FilterPaint {
  FilterPaint({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterPaint.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}

class FilterNode {
  FilterNode({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterNode.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}

class FilterArea {
  FilterArea({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  FilterArea.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kouji_id'] = _koujiId;
    map['id'] = _id;
    map['value'] = _value;
    return map;
  }

}

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

class Reflector extends Reflectable {
  const Reflector()
      : super(invokingCapability,typingCapability); // Request the capability to invoke methods.
}

const reflector = Reflector();

@reflector
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

  Data.fromJson(dynamic json) {
    _fabId = json['fab_id'];
    _koujiId = json['kouji_id'];
    _koujiName = json['kouji_name'];
    _headerMark = json['header_mark'];
    _color = json['color'];
    _shiguchiId = json['shiguchi_id'];
    _buzaiName = json['buzai_name'];
    _compInfoKindName = json['comp_info_kind_name'];
    _resultTypeMode = json['result_type_mode'];
    _seihinName = json['seihin_name'];
    _floorName = json['floor_name'];
    _floorId = json['floor_id'];
    _stanza = json['stanza'];
    _componentInfoBaseId = json['component_info_base_id'];
    _keyplanName1 = json['keyplan_name_1'];
    _keyplanName2 = json['keyplan_name_2'];
    _areaName = json['area_name'];
    _areaId = json['area_id'];
    _nodeName = json['node_name'];
    _nodeId = json['node_id'];
    _paintName = json['paint_name'];
    _paintId = json['paint_id'];
    _buildName = json['build_name'];
    _buildId = json['build_id'];
    _groupName = json['group_name'];
    _groupId = json['group_id'];
    _shipName = json['ship_name'];
    _shipId = json['ship_id'];
    _weight = json['weight'];
    _weldLen = json['weld_len'];
    _ptargetDateTime = json['ptarget_date_time'];
    _flagEnd = json['flag_end'];
    _mailAddress = json['mail_address'];
    _presultType = json['presult_type'];
    _presultTypeName = json['presult_type_name'];
    _updateTime = json['update_time'];
    _presultId = json['presult_id'];
    _updatedAt = json['updated_at'];
    _pTargetId = json['p_target_id'];
    _workProcessId = json['work_process_id'];
    _compSecId = json['comp_sec_id'];
    _flagLate = json['flag_late'];
  }
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

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fab_id'] = _fabId;
    map['kouji_id'] = _koujiId;
    map['kouji_name'] = _koujiName;
    map['header_mark'] = _headerMark;
    map['color'] = _color;
    map['shiguchi_id'] = _shiguchiId;
    map['buzai_name'] = _buzaiName;
    map['comp_info_kind_name'] = _compInfoKindName;
    map['result_type_mode'] = _resultTypeMode;
    map['seihin_name'] = _seihinName;
    map['floor_name'] = _floorName;
    map['floor_id'] = _floorId;
    map['stanza'] = _stanza;
    map['component_info_base_id'] = _componentInfoBaseId;
    map['keyplan_name_1'] = _keyplanName1;
    map['keyplan_name_2'] = _keyplanName2;
    map['area_name'] = _areaName;
    map['area_id'] = _areaId;
    map['node_name'] = _nodeName;
    map['node_id'] = _nodeId;
    map['paint_name'] = _paintName;
    map['paint_id'] = _paintId;
    map['build_name'] = _buildName;
    map['build_id'] = _buildId;
    map['group_name'] = _groupName;
    map['group_id'] = _groupId;
    map['ship_name'] = _shipName;
    map['ship_id'] = _shipId;
    map['weight'] = _weight;
    map['weld_len'] = _weldLen;
    map['ptarget_date_time'] = _ptargetDateTime;
    map['flag_end'] = _flagEnd;
    map['mail_address'] = _mailAddress;
    map['presult_type'] = _presultType;
    map['presult_type_name'] = _presultTypeName;
    map['update_time'] = _updateTime;
    map['presult_id'] = _presultId;
    map['updated_at'] = _updatedAt;
    map['p_target_id'] = _pTargetId;
    map['work_process_id'] = _workProcessId;
    map['comp_sec_id'] = _compSecId;
    map['flag_late'] = _flagLate;
    return map;
  }

}