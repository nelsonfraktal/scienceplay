// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudioStruct extends BaseStruct {
  AudioStruct({
    List<String>? audio,
  }) : _audio = audio;

  // "audio" field.
  List<String>? _audio;
  List<String> get audio => _audio ?? const [];
  set audio(List<String>? val) => _audio = val;

  void updateAudio(Function(List<String>) updateFn) {
    updateFn(_audio ??= []);
  }

  bool hasAudio() => _audio != null;

  static AudioStruct fromMap(Map<String, dynamic> data) => AudioStruct(
        audio: getDataList(data['audio']),
      );

  static AudioStruct? maybeFromMap(dynamic data) =>
      data is Map ? AudioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'audio': _audio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'audio': serializeParam(
          _audio,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AudioStruct fromSerializableMap(Map<String, dynamic> data) =>
      AudioStruct(
        audio: deserializeParam<String>(
          data['audio'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AudioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AudioStruct && listEquality.equals(audio, other.audio);
  }

  @override
  int get hashCode => const ListEquality().hash([audio]);
}

AudioStruct createAudioStruct() => AudioStruct();
