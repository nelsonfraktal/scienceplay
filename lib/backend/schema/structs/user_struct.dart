// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? username,
    String? createTime,
    String? email,
    String? image,
    String? countryName,
    String? countryCode,
    String? countryCodial,
    String? preferenciaAudio,
    String? linguagemPreferida,
    bool? notificationEmail,
    bool? notificationNewContent,
    bool? notificationContentSuggestion,
    bool? notificationPublicities,
    bool? isFree,
  })  : _uid = uid,
        _displayName = displayName,
        _username = username,
        _createTime = createTime,
        _email = email,
        _image = image,
        _countryName = countryName,
        _countryCode = countryCode,
        _countryCodial = countryCodial,
        _preferenciaAudio = preferenciaAudio,
        _linguagemPreferida = linguagemPreferida,
        _notificationEmail = notificationEmail,
        _notificationNewContent = notificationNewContent,
        _notificationContentSuggestion = notificationContentSuggestion,
        _notificationPublicities = notificationPublicities,
        _isFree = isFree;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "country_name" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  set countryName(String? val) => _countryName = val;

  bool hasCountryName() => _countryName != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "country_codial" field.
  String? _countryCodial;
  String get countryCodial => _countryCodial ?? '';
  set countryCodial(String? val) => _countryCodial = val;

  bool hasCountryCodial() => _countryCodial != null;

  // "preferencia_audio" field.
  String? _preferenciaAudio;
  String get preferenciaAudio => _preferenciaAudio ?? '';
  set preferenciaAudio(String? val) => _preferenciaAudio = val;

  bool hasPreferenciaAudio() => _preferenciaAudio != null;

  // "linguagem_preferida" field.
  String? _linguagemPreferida;
  String get linguagemPreferida => _linguagemPreferida ?? '';
  set linguagemPreferida(String? val) => _linguagemPreferida = val;

  bool hasLinguagemPreferida() => _linguagemPreferida != null;

  // "notification_email" field.
  bool? _notificationEmail;
  bool get notificationEmail => _notificationEmail ?? false;
  set notificationEmail(bool? val) => _notificationEmail = val;

  bool hasNotificationEmail() => _notificationEmail != null;

  // "notification_new_content" field.
  bool? _notificationNewContent;
  bool get notificationNewContent => _notificationNewContent ?? false;
  set notificationNewContent(bool? val) => _notificationNewContent = val;

  bool hasNotificationNewContent() => _notificationNewContent != null;

  // "notification_content_suggestion" field.
  bool? _notificationContentSuggestion;
  bool get notificationContentSuggestion =>
      _notificationContentSuggestion ?? false;
  set notificationContentSuggestion(bool? val) =>
      _notificationContentSuggestion = val;

  bool hasNotificationContentSuggestion() =>
      _notificationContentSuggestion != null;

  // "notification_publicities" field.
  bool? _notificationPublicities;
  bool get notificationPublicities => _notificationPublicities ?? false;
  set notificationPublicities(bool? val) => _notificationPublicities = val;

  bool hasNotificationPublicities() => _notificationPublicities != null;

  // "isFree" field.
  bool? _isFree;
  bool get isFree => _isFree ?? false;
  set isFree(bool? val) => _isFree = val;

  bool hasIsFree() => _isFree != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        username: data['username'] as String?,
        createTime: data['create_time'] as String?,
        email: data['email'] as String?,
        image: data['image'] as String?,
        countryName: data['country_name'] as String?,
        countryCode: data['country_code'] as String?,
        countryCodial: data['country_codial'] as String?,
        preferenciaAudio: data['preferencia_audio'] as String?,
        linguagemPreferida: data['linguagem_preferida'] as String?,
        notificationEmail: data['notification_email'] as bool?,
        notificationNewContent: data['notification_new_content'] as bool?,
        notificationContentSuggestion:
            data['notification_content_suggestion'] as bool?,
        notificationPublicities: data['notification_publicities'] as bool?,
        isFree: data['isFree'] as bool?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'username': _username,
        'create_time': _createTime,
        'email': _email,
        'image': _image,
        'country_name': _countryName,
        'country_code': _countryCode,
        'country_codial': _countryCodial,
        'preferencia_audio': _preferenciaAudio,
        'linguagem_preferida': _linguagemPreferida,
        'notification_email': _notificationEmail,
        'notification_new_content': _notificationNewContent,
        'notification_content_suggestion': _notificationContentSuggestion,
        'notification_publicities': _notificationPublicities,
        'isFree': _isFree,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'country_name': serializeParam(
          _countryName,
          ParamType.String,
        ),
        'country_code': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'country_codial': serializeParam(
          _countryCodial,
          ParamType.String,
        ),
        'preferencia_audio': serializeParam(
          _preferenciaAudio,
          ParamType.String,
        ),
        'linguagem_preferida': serializeParam(
          _linguagemPreferida,
          ParamType.String,
        ),
        'notification_email': serializeParam(
          _notificationEmail,
          ParamType.bool,
        ),
        'notification_new_content': serializeParam(
          _notificationNewContent,
          ParamType.bool,
        ),
        'notification_content_suggestion': serializeParam(
          _notificationContentSuggestion,
          ParamType.bool,
        ),
        'notification_publicities': serializeParam(
          _notificationPublicities,
          ParamType.bool,
        ),
        'isFree': serializeParam(
          _isFree,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        countryName: deserializeParam(
          data['country_name'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['country_code'],
          ParamType.String,
          false,
        ),
        countryCodial: deserializeParam(
          data['country_codial'],
          ParamType.String,
          false,
        ),
        preferenciaAudio: deserializeParam(
          data['preferencia_audio'],
          ParamType.String,
          false,
        ),
        linguagemPreferida: deserializeParam(
          data['linguagem_preferida'],
          ParamType.String,
          false,
        ),
        notificationEmail: deserializeParam(
          data['notification_email'],
          ParamType.bool,
          false,
        ),
        notificationNewContent: deserializeParam(
          data['notification_new_content'],
          ParamType.bool,
          false,
        ),
        notificationContentSuggestion: deserializeParam(
          data['notification_content_suggestion'],
          ParamType.bool,
          false,
        ),
        notificationPublicities: deserializeParam(
          data['notification_publicities'],
          ParamType.bool,
          false,
        ),
        isFree: deserializeParam(
          data['isFree'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        username == other.username &&
        createTime == other.createTime &&
        email == other.email &&
        image == other.image &&
        countryName == other.countryName &&
        countryCode == other.countryCode &&
        countryCodial == other.countryCodial &&
        preferenciaAudio == other.preferenciaAudio &&
        linguagemPreferida == other.linguagemPreferida &&
        notificationEmail == other.notificationEmail &&
        notificationNewContent == other.notificationNewContent &&
        notificationContentSuggestion == other.notificationContentSuggestion &&
        notificationPublicities == other.notificationPublicities &&
        isFree == other.isFree;
  }

  @override
  int get hashCode => const ListEquality().hash([
        uid,
        displayName,
        username,
        createTime,
        email,
        image,
        countryName,
        countryCode,
        countryCodial,
        preferenciaAudio,
        linguagemPreferida,
        notificationEmail,
        notificationNewContent,
        notificationContentSuggestion,
        notificationPublicities,
        isFree
      ]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? username,
  String? createTime,
  String? email,
  String? image,
  String? countryName,
  String? countryCode,
  String? countryCodial,
  String? preferenciaAudio,
  String? linguagemPreferida,
  bool? notificationEmail,
  bool? notificationNewContent,
  bool? notificationContentSuggestion,
  bool? notificationPublicities,
  bool? isFree,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      username: username,
      createTime: createTime,
      email: email,
      image: image,
      countryName: countryName,
      countryCode: countryCode,
      countryCodial: countryCodial,
      preferenciaAudio: preferenciaAudio,
      linguagemPreferida: linguagemPreferida,
      notificationEmail: notificationEmail,
      notificationNewContent: notificationNewContent,
      notificationContentSuggestion: notificationContentSuggestion,
      notificationPublicities: notificationPublicities,
      isFree: isFree,
    );
