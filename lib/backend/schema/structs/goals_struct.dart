// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoalsStruct extends BaseStruct {
  GoalsStruct({
    String? name,
    Goal? id,
    String? namePortuguese,
  })  : _name = name,
        _id = id,
        _namePortuguese = namePortuguese;

  // "name" field.
  String? _name;
  String get name => _name ?? 'Undefined';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "id" field.
  Goal? _id;
  Goal get id => _id ?? Goal.Undefined;
  set id(Goal? val) => _id = val;

  bool hasId() => _id != null;

  // "name_portuguese" field.
  String? _namePortuguese;
  String get namePortuguese => _namePortuguese ?? 'Indefinido';
  set namePortuguese(String? val) => _namePortuguese = val;

  bool hasNamePortuguese() => _namePortuguese != null;

  static GoalsStruct fromMap(Map<String, dynamic> data) => GoalsStruct(
        name: data['name'] as String?,
        id: deserializeEnum<Goal>(data['id']),
        namePortuguese: data['name_portuguese'] as String?,
      );

  static GoalsStruct? maybeFromMap(dynamic data) =>
      data is Map ? GoalsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id?.serialize(),
        'name_portuguese': _namePortuguese,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.Enum,
        ),
        'name_portuguese': serializeParam(
          _namePortuguese,
          ParamType.String,
        ),
      }.withoutNulls;

  static GoalsStruct fromSerializableMap(Map<String, dynamic> data) =>
      GoalsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam<Goal>(
          data['id'],
          ParamType.Enum,
          false,
        ),
        namePortuguese: deserializeParam(
          data['name_portuguese'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GoalsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GoalsStruct &&
        name == other.name &&
        id == other.id &&
        namePortuguese == other.namePortuguese;
  }

  @override
  int get hashCode => const ListEquality().hash([name, id, namePortuguese]);
}

GoalsStruct createGoalsStruct({
  String? name,
  Goal? id,
  String? namePortuguese,
}) =>
    GoalsStruct(
      name: name,
      id: id,
      namePortuguese: namePortuguese,
    );
