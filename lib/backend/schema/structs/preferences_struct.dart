// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreferencesStruct extends BaseStruct {
  PreferencesStruct({
    String? name,
    Preference? id,
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
  Preference? _id;
  Preference get id => _id ?? Preference.Undefined;
  set id(Preference? val) => _id = val;

  bool hasId() => _id != null;

  // "name_portuguese" field.
  String? _namePortuguese;
  String get namePortuguese => _namePortuguese ?? 'Indefinido';
  set namePortuguese(String? val) => _namePortuguese = val;

  bool hasNamePortuguese() => _namePortuguese != null;

  static PreferencesStruct fromMap(Map<String, dynamic> data) =>
      PreferencesStruct(
        name: data['name'] as String?,
        id: deserializeEnum<Preference>(data['id']),
        namePortuguese: data['name_portuguese'] as String?,
      );

  static PreferencesStruct? maybeFromMap(dynamic data) => data is Map
      ? PreferencesStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static PreferencesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PreferencesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam<Preference>(
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
  String toString() => 'PreferencesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PreferencesStruct &&
        name == other.name &&
        id == other.id &&
        namePortuguese == other.namePortuguese;
  }

  @override
  int get hashCode => const ListEquality().hash([name, id, namePortuguese]);
}

PreferencesStruct createPreferencesStruct({
  String? name,
  Preference? id,
  String? namePortuguese,
}) =>
    PreferencesStruct(
      name: name,
      id: id,
      namePortuguese: namePortuguese,
    );
