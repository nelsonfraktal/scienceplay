// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeAvailableStruct extends BaseStruct {
  TimeAvailableStruct({
    Dedication? id,
    String? name,
    String? namePortuguese,
  })  : _id = id,
        _name = name,
        _namePortuguese = namePortuguese;

  // "id" field.
  Dedication? _id;
  Dedication get id => _id ?? Dedication.Undefined;
  set id(Dedication? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? 'Undefined';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "name_portuguese" field.
  String? _namePortuguese;
  String get namePortuguese => _namePortuguese ?? 'Indefinido';
  set namePortuguese(String? val) => _namePortuguese = val;

  bool hasNamePortuguese() => _namePortuguese != null;

  static TimeAvailableStruct fromMap(Map<String, dynamic> data) =>
      TimeAvailableStruct(
        id: deserializeEnum<Dedication>(data['id']),
        name: data['name'] as String?,
        namePortuguese: data['name_portuguese'] as String?,
      );

  static TimeAvailableStruct? maybeFromMap(dynamic data) => data is Map
      ? TimeAvailableStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static TimeAvailableStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimeAvailableStruct(
        id: deserializeParam<Dedication>(
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
  String toString() => 'TimeAvailableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeAvailableStruct &&
        id == other.id &&
        name == other.name &&
        namePortuguese == other.namePortuguese;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, namePortuguese]);
}

TimeAvailableStruct createTimeAvailableStruct({
  Dedication? id,
  String? name,
  String? namePortuguese,
}) =>
    TimeAvailableStruct(
      id: id,
      name: name,
      namePortuguese: namePortuguese,
    );
