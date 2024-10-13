// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudiosDaTrackStruct extends BaseStruct {
  AudiosDaTrackStruct({
    int? ordem,
    String? title,
    String? coverImage,
    String? fileAudio,
    String? about,
    String? journal,
    String? author,
  })  : _ordem = ordem,
        _title = title,
        _coverImage = coverImage,
        _fileAudio = fileAudio,
        _about = about,
        _journal = journal,
        _author = author;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "cover_image" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  set coverImage(String? val) => _coverImage = val;

  bool hasCoverImage() => _coverImage != null;

  // "file_audio" field.
  String? _fileAudio;
  String get fileAudio => _fileAudio ?? '';
  set fileAudio(String? val) => _fileAudio = val;

  bool hasFileAudio() => _fileAudio != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  set about(String? val) => _about = val;

  bool hasAbout() => _about != null;

  // "journal" field.
  String? _journal;
  String get journal => _journal ?? '';
  set journal(String? val) => _journal = val;

  bool hasJournal() => _journal != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  set author(String? val) => _author = val;

  bool hasAuthor() => _author != null;

  static AudiosDaTrackStruct fromMap(Map<String, dynamic> data) =>
      AudiosDaTrackStruct(
        ordem: castToType<int>(data['ordem']),
        title: data['title'] as String?,
        coverImage: data['cover_image'] as String?,
        fileAudio: data['file_audio'] as String?,
        about: data['about'] as String?,
        journal: data['journal'] as String?,
        author: data['author'] as String?,
      );

  static AudiosDaTrackStruct? maybeFromMap(dynamic data) => data is Map
      ? AudiosDaTrackStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ordem': _ordem,
        'title': _title,
        'cover_image': _coverImage,
        'file_audio': _fileAudio,
        'about': _about,
        'journal': _journal,
        'author': _author,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'cover_image': serializeParam(
          _coverImage,
          ParamType.String,
        ),
        'file_audio': serializeParam(
          _fileAudio,
          ParamType.String,
        ),
        'about': serializeParam(
          _about,
          ParamType.String,
        ),
        'journal': serializeParam(
          _journal,
          ParamType.String,
        ),
        'author': serializeParam(
          _author,
          ParamType.String,
        ),
      }.withoutNulls;

  static AudiosDaTrackStruct fromSerializableMap(Map<String, dynamic> data) =>
      AudiosDaTrackStruct(
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        coverImage: deserializeParam(
          data['cover_image'],
          ParamType.String,
          false,
        ),
        fileAudio: deserializeParam(
          data['file_audio'],
          ParamType.String,
          false,
        ),
        about: deserializeParam(
          data['about'],
          ParamType.String,
          false,
        ),
        journal: deserializeParam(
          data['journal'],
          ParamType.String,
          false,
        ),
        author: deserializeParam(
          data['author'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AudiosDaTrackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudiosDaTrackStruct &&
        ordem == other.ordem &&
        title == other.title &&
        coverImage == other.coverImage &&
        fileAudio == other.fileAudio &&
        about == other.about &&
        journal == other.journal &&
        author == other.author;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([ordem, title, coverImage, fileAudio, about, journal, author]);
}

AudiosDaTrackStruct createAudiosDaTrackStruct({
  int? ordem,
  String? title,
  String? coverImage,
  String? fileAudio,
  String? about,
  String? journal,
  String? author,
}) =>
    AudiosDaTrackStruct(
      ordem: ordem,
      title: title,
      coverImage: coverImage,
      fileAudio: fileAudio,
      about: about,
      journal: journal,
      author: author,
    );
