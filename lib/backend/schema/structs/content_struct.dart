// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentStruct extends BaseStruct {
  ContentStruct({
    String? englishTitle,
  }) : _englishTitle = englishTitle;

  // "english_title" field.
  String? _englishTitle;
  String get englishTitle => _englishTitle ?? '';
  set englishTitle(String? val) => _englishTitle = val;

  bool hasEnglishTitle() => _englishTitle != null;

  static ContentStruct fromMap(Map<String, dynamic> data) => ContentStruct(
        englishTitle: data['english_title'] as String?,
      );

  static ContentStruct? maybeFromMap(dynamic data) =>
      data is Map ? ContentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'english_title': _englishTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'english_title': serializeParam(
          _englishTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContentStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContentStruct(
        englishTitle: deserializeParam(
          data['english_title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContentStruct && englishTitle == other.englishTitle;
  }

  @override
  int get hashCode => const ListEquality().hash([englishTitle]);
}

ContentStruct createContentStruct({
  String? englishTitle,
}) =>
    ContentStruct(
      englishTitle: englishTitle,
    );
