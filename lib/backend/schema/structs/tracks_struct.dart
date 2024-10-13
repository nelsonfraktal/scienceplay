// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TracksStruct extends BaseStruct {
  TracksStruct({
    String? access,
    String? area,
    List<String>? audio,
    int? credits,
    String? title,
    List<String>? specialty,
    String? createdDate,
    String? modifiedDate,
    String? createdBy,
    String? id,
    String? slug,
  })  : _access = access,
        _area = area,
        _audio = audio,
        _credits = credits,
        _title = title,
        _specialty = specialty,
        _createdDate = createdDate,
        _modifiedDate = modifiedDate,
        _createdBy = createdBy,
        _id = id,
        _slug = slug;

  // "access" field.
  String? _access;
  String get access => _access ?? '';
  set access(String? val) => _access = val;

  bool hasAccess() => _access != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  set area(String? val) => _area = val;

  bool hasArea() => _area != null;

  // "audio" field.
  List<String>? _audio;
  List<String> get audio => _audio ?? const [];
  set audio(List<String>? val) => _audio = val;

  void updateAudio(Function(List<String>) updateFn) {
    updateFn(_audio ??= []);
  }

  bool hasAudio() => _audio != null;

  // "credits" field.
  int? _credits;
  int get credits => _credits ?? 0;
  set credits(int? val) => _credits = val;

  void incrementCredits(int amount) => credits = credits + amount;

  bool hasCredits() => _credits != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "specialty" field.
  List<String>? _specialty;
  List<String> get specialty => _specialty ?? const [];
  set specialty(List<String>? val) => _specialty = val;

  void updateSpecialty(Function(List<String>) updateFn) {
    updateFn(_specialty ??= []);
  }

  bool hasSpecialty() => _specialty != null;

  // "Created_Date" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  set createdDate(String? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  // "Modified_Date" field.
  String? _modifiedDate;
  String get modifiedDate => _modifiedDate ?? '';
  set modifiedDate(String? val) => _modifiedDate = val;

  bool hasModifiedDate() => _modifiedDate != null;

  // "Created_By" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "Slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  static TracksStruct fromMap(Map<String, dynamic> data) => TracksStruct(
        access: data['access'] as String?,
        area: data['area'] as String?,
        audio: getDataList(data['audio']),
        credits: castToType<int>(data['credits']),
        title: data['title'] as String?,
        specialty: getDataList(data['specialty']),
        createdDate: data['Created_Date'] as String?,
        modifiedDate: data['Modified_Date'] as String?,
        createdBy: data['Created_By'] as String?,
        id: data['id'] as String?,
        slug: data['Slug'] as String?,
      );

  static TracksStruct? maybeFromMap(dynamic data) =>
      data is Map ? TracksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'access': _access,
        'area': _area,
        'audio': _audio,
        'credits': _credits,
        'title': _title,
        'specialty': _specialty,
        'Created_Date': _createdDate,
        'Modified_Date': _modifiedDate,
        'Created_By': _createdBy,
        'id': _id,
        'Slug': _slug,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access': serializeParam(
          _access,
          ParamType.String,
        ),
        'area': serializeParam(
          _area,
          ParamType.String,
        ),
        'audio': serializeParam(
          _audio,
          ParamType.String,
          isList: true,
        ),
        'credits': serializeParam(
          _credits,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'specialty': serializeParam(
          _specialty,
          ParamType.String,
          isList: true,
        ),
        'Created_Date': serializeParam(
          _createdDate,
          ParamType.String,
        ),
        'Modified_Date': serializeParam(
          _modifiedDate,
          ParamType.String,
        ),
        'Created_By': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'Slug': serializeParam(
          _slug,
          ParamType.String,
        ),
      }.withoutNulls;

  static TracksStruct fromSerializableMap(Map<String, dynamic> data) =>
      TracksStruct(
        access: deserializeParam(
          data['access'],
          ParamType.String,
          false,
        ),
        area: deserializeParam(
          data['area'],
          ParamType.String,
          false,
        ),
        audio: deserializeParam<String>(
          data['audio'],
          ParamType.String,
          true,
        ),
        credits: deserializeParam(
          data['credits'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        specialty: deserializeParam<String>(
          data['specialty'],
          ParamType.String,
          true,
        ),
        createdDate: deserializeParam(
          data['Created_Date'],
          ParamType.String,
          false,
        ),
        modifiedDate: deserializeParam(
          data['Modified_Date'],
          ParamType.String,
          false,
        ),
        createdBy: deserializeParam(
          data['Created_By'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        slug: deserializeParam(
          data['Slug'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TracksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TracksStruct &&
        access == other.access &&
        area == other.area &&
        listEquality.equals(audio, other.audio) &&
        credits == other.credits &&
        title == other.title &&
        listEquality.equals(specialty, other.specialty) &&
        createdDate == other.createdDate &&
        modifiedDate == other.modifiedDate &&
        createdBy == other.createdBy &&
        id == other.id &&
        slug == other.slug;
  }

  @override
  int get hashCode => const ListEquality().hash([
        access,
        area,
        audio,
        credits,
        title,
        specialty,
        createdDate,
        modifiedDate,
        createdBy,
        id,
        slug
      ]);
}

TracksStruct createTracksStruct({
  String? access,
  String? area,
  int? credits,
  String? title,
  String? createdDate,
  String? modifiedDate,
  String? createdBy,
  String? id,
  String? slug,
}) =>
    TracksStruct(
      access: access,
      area: area,
      credits: credits,
      title: title,
      createdDate: createdDate,
      modifiedDate: modifiedDate,
      createdBy: createdBy,
      id: id,
      slug: slug,
    );
