// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsStruct extends BaseStruct {
  ResultsStruct({
    String? access,
    String? area,
    List<String>? audio,
    int? credits,
    String? title,
    List<String>? specialty,
    String? slug,
  })  : _access = access,
        _area = area,
        _audio = audio,
        _credits = credits,
        _title = title,
        _specialty = specialty,
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

  // "Slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  static ResultsStruct fromMap(Map<String, dynamic> data) => ResultsStruct(
        access: data['access'] as String?,
        area: data['area'] as String?,
        audio: getDataList(data['audio']),
        credits: castToType<int>(data['credits']),
        title: data['title'] as String?,
        specialty: getDataList(data['specialty']),
        slug: data['Slug'] as String?,
      );

  static ResultsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResultsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'access': _access,
        'area': _area,
        'audio': _audio,
        'credits': _credits,
        'title': _title,
        'specialty': _specialty,
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
        'Slug': serializeParam(
          _slug,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultsStruct(
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
        slug: deserializeParam(
          data['Slug'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResultsStruct &&
        access == other.access &&
        area == other.area &&
        listEquality.equals(audio, other.audio) &&
        credits == other.credits &&
        title == other.title &&
        listEquality.equals(specialty, other.specialty) &&
        slug == other.slug;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([access, area, audio, credits, title, specialty, slug]);
}

ResultsStruct createResultsStruct({
  String? access,
  String? area,
  int? credits,
  String? title,
  String? slug,
}) =>
    ResultsStruct(
      access: access,
      area: area,
      credits: credits,
      title: title,
      slug: slug,
    );
