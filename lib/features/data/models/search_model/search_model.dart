import 'package:music_app/features/data/base/base_response.dart';
import 'package:reflectable/reflectable.dart';

class SearchModel extends BaseDataModel{
  SearchModel({
      int? currentPage, 
      int? total, 
      int? lastPage, 
      List<Data>? data, 
      List<FilterKouji>? filterKouji, 
      List<MaterialKind>? materialKind, 
      List<MaterialSize>? materialSize, 
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
    _materialKind = materialKind;
    _materialSize = materialSize;
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
    if (json['material_kind'] != null) {
      _materialKind = [];
      json['material_kind'].forEach((v) {
        _materialKind?.add(MaterialKind.fromJson(v));
      });
    }
    if (json['material_size'] != null) {
      _materialSize = [];
      json['material_size'].forEach((v) {
        _materialSize?.add(MaterialSize.fromJson(v));
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
  List<MaterialKind>? _materialKind;
  List<MaterialSize>? _materialSize;
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
  List<MaterialKind>? materialKind,
  List<MaterialSize>? materialSize,
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
  materialKind: materialKind ?? _materialKind,
  materialSize: materialSize ?? _materialSize,
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
  List<MaterialKind>? get materialKind => _materialKind;
  List<MaterialSize>? get materialSize => _materialSize;
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
    if (_materialKind != null) {
      map['material_kind'] = _materialKind?.map((v) => v.toJson()).toList();
    }
    if (_materialSize != null) {
      map['material_size'] = _materialSize?.map((v) => v.toJson()).toList();
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

class MaterialSize {
  MaterialSize({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  MaterialSize.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
  int? _koujiId;
  String? _id;
  String? _value;
MaterialSize copyWith({  int? koujiId,
  String? id,
  String? value,
}) => MaterialSize(  koujiId: koujiId ?? _koujiId,
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

class MaterialKind {
  MaterialKind({
      int? koujiId, 
      String? id, 
      String? value,}){
    _koujiId = koujiId;
    _id = id;
    _value = value;
}

  MaterialKind.fromJson(dynamic json) {
    _koujiId = json['kouji_id'];
    _id = json['id'];
    _value = json['value'];
  }
  int? _koujiId;
  String? _id;
  String? _value;
MaterialKind copyWith({  int? koujiId,
  String? id,
  String? value,
}) => MaterialKind(  koujiId: koujiId ?? _koujiId,
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
      : super(invokingCapability); // Request the capability to invoke methods.
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
      String? buzaiKindId, 
      String? buzaiKindName, 
      String? buzaiId, 
      String? buzaiName, 
      String? compInfoKindName, 
      String? remark, 
      String? materialKindBz, 
      String? materialStdFBz, 
      String? materialStdWBz, 
      String? inpFaceBz, 
      String? inpFaceId, 
      String? panelId, 
      String? pairId, 
      String? materialSize, 
      String? length, 
      String? expand, 
      String? weight, 
      String? weldLen, 
      String? hanchType, 
      String? crush, 
      String? resultTypeMode, 
      String? seihinName, 
      String? floorName, 
      String? floorId, 
      String? stanza, 
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
      String? holeInfoId, 
      String? notchInfoId, 
      String? holeInfo, 
      String? notchInfo, 
      String? shipId, 
      String? ptargetDateTime, 
      String? flagEnd, 
      String? mailAddress, 
      String? presultType, 
      String? presultTypeName, 
      String? updateTime, 
      String? presultId, 
      String? pTargetId, 
      String? workProcessId, 
      String? compSecId, 
      String? updatedAt, 
      String? inpFace, 
      String? panel, 
      String? pair, 
      String? kindName, 
      String? materialStdF, 
      String? materialStdW, 
      String? leftEndJointName, 
      String? leftEndEdgeBuhinId, 
      String? leftEndFirstCount, 
      String? leftEndScallopCount, 
      String? rightEndJointName, 
      String? rightEndEdgeBuhinId, 
      String? rightEndFirstCount, 
      String? rightEndScallopCount, 
      String? componentInfoBaseId, 
      String? componentInfoId, 
      String? componentInfoBuzaiId, 
      String? flagLate,}){
    _fabId = fabId;
    _koujiId = koujiId;
    _koujiName = koujiName;
    _headerMark = headerMark;
    _color = color;
    _buzaiKindId = buzaiKindId;
    _buzaiKindName = buzaiKindName;
    _buzaiId = buzaiId;
    _buzaiName = buzaiName;
    _compInfoKindName = compInfoKindName;
    _remark = remark;
    _materialKindBz = materialKindBz;
    _materialStdFBz = materialStdFBz;
    _materialStdWBz = materialStdWBz;
    _inpFaceBz = inpFaceBz;
    _inpFaceId = inpFaceId;
    _panelId = panelId;
    _pairId = pairId;
    _materialSize = materialSize;
    _length = length;
    _expand = expand;
    _weight = weight;
    _weldLen = weldLen;
    _hanchType = hanchType;
    _crush = crush;
    _resultTypeMode = resultTypeMode;
    _seihinName = seihinName;
    _floorName = floorName;
    _floorId = floorId;
    _stanza = stanza;
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
    _holeInfoId = holeInfoId;
    _notchInfoId = notchInfoId;
    _holeInfo = holeInfo;
    _notchInfo = notchInfo;
    _shipId = shipId;
    _ptargetDateTime = ptargetDateTime;
    _flagEnd = flagEnd;
    _mailAddress = mailAddress;
    _presultType = presultType;
    _presultTypeName = presultTypeName;
    _updateTime = updateTime;
    _presultId = presultId;
    _pTargetId = pTargetId;
    _workProcessId = workProcessId;
    _compSecId = compSecId;
    _updatedAt = updatedAt;
    _inpFace = inpFace;
    _panel = panel;
    _pair = pair;
    _kindName = kindName;
    _materialStdF = materialStdF;
    _materialStdW = materialStdW;
    _leftEndJointName = leftEndJointName;
    _leftEndEdgeBuhinId = leftEndEdgeBuhinId;
    _leftEndFirstCount = leftEndFirstCount;
    _leftEndScallopCount = leftEndScallopCount;
    _rightEndJointName = rightEndJointName;
    _rightEndEdgeBuhinId = rightEndEdgeBuhinId;
    _rightEndFirstCount = rightEndFirstCount;
    _rightEndScallopCount = rightEndScallopCount;
    _componentInfoBaseId = componentInfoBaseId;
    _componentInfoId = componentInfoId;
    _componentInfoBuzaiId = componentInfoBuzaiId;
    _flagLate = flagLate;
}

  Data.fromJson(dynamic json) {
    _fabId = json['fab_id'];
    _koujiId = json['kouji_id'];
    _koujiName = json['kouji_name'];
    _headerMark = json['header_mark'];
    _color = json['color'];
    _buzaiKindId = json['buzai_kind_id'];
    _buzaiKindName = json['buzai_kind_name'];
    _buzaiId = json['buzai_id'];
    _buzaiName = json['buzai_name'];
    _compInfoKindName = json['comp_info_kind_name'];
    _remark = json['remark'];
    _materialKindBz = json['material_kind_bz'];
    _materialStdFBz = json['material_std_f_bz'];
    _materialStdWBz = json['material_std_w_bz'];
    _inpFaceBz = json['inp_face_bz'];
    _inpFaceId = json['inp_face_id'];
    _panelId = json['panel_id'];
    _pairId = json['pair_id'];
    _materialSize = json['material_size'];
    _length = json['length'];
    _expand = json['expand'];
    _weight = json['weight'];
    _weldLen = json['weld_len'];
    _hanchType = json['hanch_type'];
    _crush = json['crush'];
    _resultTypeMode = json['result_type_mode'];
    _seihinName = json['seihin_name'];
    _floorName = json['floor_name'];
    _floorId = json['floor_id'];
    _stanza = json['stanza'];
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
    _holeInfoId = json['hole_info_id'];
    _notchInfoId = json['notch_info_id'];
    _holeInfo = json['hole_info'];
    _notchInfo = json['notch_info'];
    _shipId = json['ship_id'];
    _ptargetDateTime = json['ptarget_date_time'];
    _flagEnd = json['flag_end'];
    _mailAddress = json['mail_address'];
    _presultType = json['presult_type'];
    _presultTypeName = json['presult_type_name'];
    _updateTime = json['update_time'];
    _presultId = json['presult_id'];
    _pTargetId = json['p_target_id'];
    _workProcessId = json['work_process_id'];
    _compSecId = json['comp_sec_id'];
    _updatedAt = json['updated_at'];
    _inpFace = json['inp_face'];
    _panel = json['panel'];
    _pair = json['pair'];
    _kindName = json['kind_name'];
    _materialStdF = json['material_std_f'];
    _materialStdW = json['material_std_w'];
    _leftEndJointName = json['left_end_joint_name'];
    _leftEndEdgeBuhinId = json['left_end_edge_buhin_id'];
    _leftEndFirstCount = json['left_end_first_count'];
    _leftEndScallopCount = json['left_end_scallop_count'];
    _rightEndJointName = json['right_end_joint_name'];
    _rightEndEdgeBuhinId = json['right_end_edge_buhin_id'];
    _rightEndFirstCount = json['right_end_first_count'];
    _rightEndScallopCount = json['right_end_scallop_count'];
    _componentInfoBaseId = json['component_info_base_id'];
    _componentInfoId = json['component_info_id'];
    _componentInfoBuzaiId = json['component_info_buzai_id'];
    _flagLate = json['flag_late'];
  }
  String? _fabId;
  String? _koujiId;
  String? _koujiName;
  String? _headerMark;
  String? _color;
  String? _buzaiKindId;
  String? _buzaiKindName;
  String? _buzaiId;
  String? _buzaiName;
  String? _compInfoKindName;
  String? _remark;
  String? _materialKindBz;
  String? _materialStdFBz;
  String? _materialStdWBz;
  String? _inpFaceBz;
  String? _inpFaceId;
  String? _panelId;
  String? _pairId;
  String? _materialSize;
  String? _length;
  String? _expand;
  String? _weight;
  String? _weldLen;
  String? _hanchType;
  String? _crush;
  String? _resultTypeMode;
  String? _seihinName;
  String? _floorName;
  String? _floorId;
  String? _stanza;
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
  String? _holeInfoId;
  String? _notchInfoId;
  String? _holeInfo;
  String? _notchInfo;
  String? _shipId;
  String? _ptargetDateTime;
  String? _flagEnd;
  String? _mailAddress;
  String? _presultType;
  String? _presultTypeName;
  String? _updateTime;
  String? _presultId;
  String? _pTargetId;
  String? _workProcessId;
  String? _compSecId;
  String? _updatedAt;
  String? _inpFace;
  String? _panel;
  String? _pair;
  String? _kindName;
  String? _materialStdF;
  String? _materialStdW;
  String? _leftEndJointName;
  String? _leftEndEdgeBuhinId;
  String? _leftEndFirstCount;
  String? _leftEndScallopCount;
  String? _rightEndJointName;
  String? _rightEndEdgeBuhinId;
  String? _rightEndFirstCount;
  String? _rightEndScallopCount;
  String? _componentInfoBaseId;
  String? _componentInfoId;
  String? _componentInfoBuzaiId;
  String? _flagLate;
Data copyWith({  String? fabId,
  String? koujiId,
  String? koujiName,
  String? headerMark,
  String? color,
  String? buzaiKindId,
  String? buzaiKindName,
  String? buzaiId,
  String? buzaiName,
  String? compInfoKindName,
  String? remark,
  String? materialKindBz,
  String? materialStdFBz,
  String? materialStdWBz,
  String? inpFaceBz,
  String? inpFaceId,
  String? panelId,
  String? pairId,
  String? materialSize,
  String? length,
  String? expand,
  String? weight,
  String? weldLen,
  String? hanchType,
  String? crush,
  String? resultTypeMode,
  String? seihinName,
  String? floorName,
  String? floorId,
  String? stanza,
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
  String? holeInfoId,
  String? notchInfoId,
  String? holeInfo,
  String? notchInfo,
  String? shipId,
  String? ptargetDateTime,
  String? flagEnd,
  String? mailAddress,
  String? presultType,
  String? presultTypeName,
  String? updateTime,
  String? presultId,
  String? pTargetId,
  String? workProcessId,
  String? compSecId,
  String? updatedAt,
  String? inpFace,
  String? panel,
  String? pair,
  String? kindName,
  String? materialStdF,
  String? materialStdW,
  String? leftEndJointName,
  String? leftEndEdgeBuhinId,
  String? leftEndFirstCount,
  String? leftEndScallopCount,
  String? rightEndJointName,
  String? rightEndEdgeBuhinId,
  String? rightEndFirstCount,
  String? rightEndScallopCount,
  String? componentInfoBaseId,
  String? componentInfoId,
  String? componentInfoBuzaiId,
  String? flagLate,
}) => Data(  fabId: fabId ?? _fabId,
  koujiId: koujiId ?? _koujiId,
  koujiName: koujiName ?? _koujiName,
  headerMark: headerMark ?? _headerMark,
  color: color ?? _color,
  buzaiKindId: buzaiKindId ?? _buzaiKindId,
  buzaiKindName: buzaiKindName ?? _buzaiKindName,
  buzaiId: buzaiId ?? _buzaiId,
  buzaiName: buzaiName ?? _buzaiName,
  compInfoKindName: compInfoKindName ?? _compInfoKindName,
  remark: remark ?? _remark,
  materialKindBz: materialKindBz ?? _materialKindBz,
  materialStdFBz: materialStdFBz ?? _materialStdFBz,
  materialStdWBz: materialStdWBz ?? _materialStdWBz,
  inpFaceBz: inpFaceBz ?? _inpFaceBz,
  inpFaceId: inpFaceId ?? _inpFaceId,
  panelId: panelId ?? _panelId,
  pairId: pairId ?? _pairId,
  materialSize: materialSize ?? _materialSize,
  length: length ?? _length,
  expand: expand ?? _expand,
  weight: weight ?? _weight,
  weldLen: weldLen ?? _weldLen,
  hanchType: hanchType ?? _hanchType,
  crush: crush ?? _crush,
  resultTypeMode: resultTypeMode ?? _resultTypeMode,
  seihinName: seihinName ?? _seihinName,
  floorName: floorName ?? _floorName,
  floorId: floorId ?? _floorId,
  stanza: stanza ?? _stanza,
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
  holeInfoId: holeInfoId ?? _holeInfoId,
  notchInfoId: notchInfoId ?? _notchInfoId,
  holeInfo: holeInfo ?? _holeInfo,
  notchInfo: notchInfo ?? _notchInfo,
  shipId: shipId ?? _shipId,
  ptargetDateTime: ptargetDateTime ?? _ptargetDateTime,
  flagEnd: flagEnd ?? _flagEnd,
  mailAddress: mailAddress ?? _mailAddress,
  presultType: presultType ?? _presultType,
  presultTypeName: presultTypeName ?? _presultTypeName,
  updateTime: updateTime ?? _updateTime,
  presultId: presultId ?? _presultId,
  pTargetId: pTargetId ?? _pTargetId,
  workProcessId: workProcessId ?? _workProcessId,
  compSecId: compSecId ?? _compSecId,
  updatedAt: updatedAt ?? _updatedAt,
  inpFace: inpFace ?? _inpFace,
  panel: panel ?? _panel,
  pair: pair ?? _pair,
  kindName: kindName ?? _kindName,
  materialStdF: materialStdF ?? _materialStdF,
  materialStdW: materialStdW ?? _materialStdW,
  leftEndJointName: leftEndJointName ?? _leftEndJointName,
  leftEndEdgeBuhinId: leftEndEdgeBuhinId ?? _leftEndEdgeBuhinId,
  leftEndFirstCount: leftEndFirstCount ?? _leftEndFirstCount,
  leftEndScallopCount: leftEndScallopCount ?? _leftEndScallopCount,
  rightEndJointName: rightEndJointName ?? _rightEndJointName,
  rightEndEdgeBuhinId: rightEndEdgeBuhinId ?? _rightEndEdgeBuhinId,
  rightEndFirstCount: rightEndFirstCount ?? _rightEndFirstCount,
  rightEndScallopCount: rightEndScallopCount ?? _rightEndScallopCount,
  componentInfoBaseId: componentInfoBaseId ?? _componentInfoBaseId,
  componentInfoId: componentInfoId ?? _componentInfoId,
  componentInfoBuzaiId: componentInfoBuzaiId ?? _componentInfoBuzaiId,
  flagLate: flagLate ?? _flagLate,
);
  String? get fabId => _fabId;
  String? get koujiId => _koujiId;
  String? get koujiName => _koujiName;
  String? get headerMark => _headerMark;
  String? get color => _color;
  String? get buzaiKindId => _buzaiKindId;
  String? get buzaiKindName => _buzaiKindName;
  String? get buzaiId => _buzaiId;
  String? get buzaiName => _buzaiName;
  String? get compInfoKindName => _compInfoKindName;
  String? get remark => _remark;
  String? get materialKindBz => _materialKindBz;
  String? get materialStdFBz => _materialStdFBz;
  String? get materialStdWBz => _materialStdWBz;
  String? get inpFaceBz => _inpFaceBz;
  String? get inpFaceId => _inpFaceId;
  String? get panelId => _panelId;
  String? get pairId => _pairId;
  String? get materialSize => _materialSize;
  String? get length => _length;
  String? get expand => _expand;
  String? get weight => _weight;
  String? get weldLen => _weldLen;
  String? get hanchType => _hanchType;
  String? get crush => _crush;
  String? get resultTypeMode => _resultTypeMode;
  String? get seihinName => _seihinName;
  String? get floorName => _floorName;
  String? get floorId => _floorId;
  String? get stanza => _stanza;
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
  String? get holeInfoId => _holeInfoId;
  String? get notchInfoId => _notchInfoId;
  String? get holeInfo => _holeInfo;
  String? get notchInfo => _notchInfo;
  String? get shipId => _shipId;
  String? get ptargetDateTime => _ptargetDateTime;
  String? get flagEnd => _flagEnd;
  String? get mailAddress => _mailAddress;
  String? get presultType => _presultType;
  String? get presultTypeName => _presultTypeName;
  String? get updateTime => _updateTime;
  String? get presultId => _presultId;
  String? get pTargetId => _pTargetId;
  String? get workProcessId => _workProcessId;
  String? get compSecId => _compSecId;
  String? get updatedAt => _updatedAt;
  String? get inpFace => _inpFace;
  String? get panel => _panel;
  String? get pair => _pair;
  String? get kindName => _kindName;
  String? get materialStdF => _materialStdF;
  String? get materialStdW => _materialStdW;
  String? get leftEndJointName => _leftEndJointName;
  String? get leftEndEdgeBuhinId => _leftEndEdgeBuhinId;
  String? get leftEndFirstCount => _leftEndFirstCount;
  String? get leftEndScallopCount => _leftEndScallopCount;
  String? get rightEndJointName => _rightEndJointName;
  String? get rightEndEdgeBuhinId => _rightEndEdgeBuhinId;
  String? get rightEndFirstCount => _rightEndFirstCount;
  String? get rightEndScallopCount => _rightEndScallopCount;
  String? get componentInfoBaseId => _componentInfoBaseId;
  String? get componentInfoId => _componentInfoId;
  String? get componentInfoBuzaiId => _componentInfoBuzaiId;
  String? get flagLate => _flagLate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fab_id'] = _fabId;
    map['kouji_id'] = _koujiId;
    map['kouji_name'] = _koujiName;
    map['header_mark'] = _headerMark;
    map['color'] = _color;
    map['buzai_kind_id'] = _buzaiKindId;
    map['buzai_kind_name'] = _buzaiKindName;
    map['buzai_id'] = _buzaiId;
    map['buzai_name'] = _buzaiName;
    map['comp_info_kind_name'] = _compInfoKindName;
    map['remark'] = _remark;
    map['material_kind_bz'] = _materialKindBz;
    map['material_std_f_bz'] = _materialStdFBz;
    map['material_std_w_bz'] = _materialStdWBz;
    map['inp_face_bz'] = _inpFaceBz;
    map['inp_face_id'] = _inpFaceId;
    map['panel_id'] = _panelId;
    map['pair_id'] = _pairId;
    map['material_size'] = _materialSize;
    map['length'] = _length;
    map['expand'] = _expand;
    map['weight'] = _weight;
    map['weld_len'] = _weldLen;
    map['hanch_type'] = _hanchType;
    map['crush'] = _crush;
    map['result_type_mode'] = _resultTypeMode;
    map['seihin_name'] = _seihinName;
    map['floor_name'] = _floorName;
    map['floor_id'] = _floorId;
    map['stanza'] = _stanza;
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
    map['hole_info_id'] = _holeInfoId;
    map['notch_info_id'] = _notchInfoId;
    map['hole_info'] = _holeInfo;
    map['notch_info'] = _notchInfo;
    map['ship_id'] = _shipId;
    map['ptarget_date_time'] = _ptargetDateTime;
    map['flag_end'] = _flagEnd;
    map['mail_address'] = _mailAddress;
    map['presult_type'] = _presultType;
    map['presult_type_name'] = _presultTypeName;
    map['update_time'] = _updateTime;
    map['presult_id'] = _presultId;
    map['p_target_id'] = _pTargetId;
    map['work_process_id'] = _workProcessId;
    map['comp_sec_id'] = _compSecId;
    map['updated_at'] = _updatedAt;
    map['inp_face'] = _inpFace;
    map['panel'] = _panel;
    map['pair'] = _pair;
    map['kind_name'] = _kindName;
    map['material_std_f'] = _materialStdF;
    map['material_std_w'] = _materialStdW;
    map['left_end_joint_name'] = _leftEndJointName;
    map['left_end_edge_buhin_id'] = _leftEndEdgeBuhinId;
    map['left_end_first_count'] = _leftEndFirstCount;
    map['left_end_scallop_count'] = _leftEndScallopCount;
    map['right_end_joint_name'] = _rightEndJointName;
    map['right_end_edge_buhin_id'] = _rightEndEdgeBuhinId;
    map['right_end_first_count'] = _rightEndFirstCount;
    map['right_end_scallop_count'] = _rightEndScallopCount;
    map['component_info_base_id'] = _componentInfoBaseId;
    map['component_info_id'] = _componentInfoId;
    map['component_info_buzai_id'] = _componentInfoBuzaiId;
    map['flag_late'] = _flagLate;
    return map;
  }



}