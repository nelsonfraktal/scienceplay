// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LevelStruct extends BaseStruct {
  LevelStruct({
    Level? id,
    String? name,
    String? namePortuguese,
  })  : _id = id,
        _name = name,
        _namePortuguese = namePortuguese;

  // "id" field.
  Level? _id;
  Level get id => _id ?? Level.Undefined;
  set id(Level? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? 'Undefined';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "name_portuguese" field.
  String? _namePortuguese;
  String get namePortuguese => _namePortuguese ?? '';
  set namePortuguese(String? val) => _namePortuguese = val;

  bool hasNamePortuguese() => _namePortuguese != null;

  static LevelStruct fromMap(Map<String, dynamic> data) => LevelStruct(
        id: deserializeEnum<Level>(data['id']),
        name: data['name'] as String?,
        namePortuguese: data['name_portuguese'] as String?,
      );

  static LevelStruct? maybeFromMap(dynamic data) =>
      data is Map ? LevelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id?.serialize(),
        'name': _name,
        'name_portuguese': _namePortuguese,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.Enum,
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

  static LevelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LevelStruct(
        id: deserializeParam<Level>(
          data['id'],
          ParamType.Enum,
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
  String toString() => 'LevelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LevelStruct &&
        id == other.id &&
        name == other.name &&
        namePortuguese == other.namePortuguese;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, namePortuguese]);
}

LevelStruct createLevelStruct({
  Level? id,
  String? name,
  String? namePortuguese,
}) =>
    LevelStruct(
      id: id,
      name: name,
      namePortuguese: namePortuguese,
    );
