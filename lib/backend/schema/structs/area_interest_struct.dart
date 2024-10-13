// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreaInterestStruct extends BaseStruct {
  AreaInterestStruct({
    String? id,
    String? name,
    String? namePortuguese,
  })  : _id = id,
        _name = name,
        _namePortuguese = namePortuguese;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "name_portuguese" field.
  String? _namePortuguese;
  String get namePortuguese => _namePortuguese ?? '';
  set namePortuguese(String? val) => _namePortuguese = val;

  bool hasNamePortuguese() => _namePortuguese != null;

  static AreaInterestStruct fromMap(Map<String, dynamic> data) =>
      AreaInterestStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        namePortuguese: data['name_portuguese'] as String?,
      );

  static AreaInterestStruct? maybeFromMap(dynamic data) => data is Map
      ? AreaInterestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'name_portuguese': _namePortuguese,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'name_portuguese': serializeParam(
          _namePortuguese,
          ParamType.String,
        ),
      }.withoutNulls;

  static AreaInterestStruct fromSerializableMap(Map<String, dynamic> data) =>
      AreaInterestStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        namePortuguese: deserializeParam(
          data['name_portuguese'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AreaInterestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AreaInterestStruct &&
        id == other.id &&
        name == other.name &&
        namePortuguese == other.namePortuguese;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, namePortuguese]);
}

AreaInterestStruct createAreaInterestStruct({
  String? id,
  String? name,
  String? namePortuguese,
}) =>
    AreaInterestStruct(
      id: id,
      name: name,
      namePortuguese: namePortuguese,
    );
