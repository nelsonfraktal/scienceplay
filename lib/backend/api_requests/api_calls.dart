import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() => 'https://science-play.bubbleapps.io/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
  };
  static LoginCall loginCall = LoginCall();
  static ForgotPwCall forgotPwCall = ForgotPwCall();
  static RegisterCall registerCall = RegisterCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static DeleteAccountCall deleteAccountCall = DeleteAccountCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  dynamic responseUser(dynamic response) => getJsonField(
        response,
        r'''$.response.User''',
      );
  String? countryCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.country_code''',
      ));
  String? countryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.country_name''',
      ));
  String? fullName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.full_name''',
      ));
  String? nickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.nickname''',
      ));
  String? countryDialCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.country_dialCode''',
      ));
  bool? userSignedUP(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.user_signed_up''',
      ));
  dynamic userAuthentication(dynamic response) => getJsonField(
        response,
        r'''$.response.User.authentication''',
      );
  dynamic userAuthenticationEmail(dynamic response) => getJsonField(
        response,
        r'''$.response.User.authentication.email''',
      );
  String? userAuthenticationEmailEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.User.authentication.email.email''',
      ));
  String? userImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.image''',
      ));
  String? userUID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User._id''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  String? tokenUserID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  int? tokenExpires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.expires''',
      ));
  String? userLinguagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.linguagem''',
      ));
  String? userTipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.tipo_user''',
      ));
  int? lastacess(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.User.last_acess''',
      ));
  String? preferenciaAudio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.preferencia_audio''',
      ));
  bool? onboarding(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.complete_onboarding''',
      ));
  List<String>? areaOfInterest(dynamic response) => (getJsonField(
        response,
        r'''$.response.User.area_of_interest''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? notificationSuggestion(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_content_suggestion''',
      ));
  bool? notificationEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_email''',
      ));
  bool? notificationNewContent(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_new_content''',
      ));
  bool? notificationPublicities(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_publicities''',
      ));
  List<String>? occupationOrInterest(dynamic response) => (getJsonField(
        response,
        r'''$.response.User.occupation_or_interest''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? userLevel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.level''',
      ));
  List<String>? myFiles(dynamic response) => (getJsonField(
        response,
        r'''$.response.User.my_files''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? accessLevel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.access_level''',
      ));
  bool? isFree(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.isFree''',
      ));
}

class ForgotPwCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotPw',
      apiUrl: '$baseUrl/forgot_pw',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? fullName = '',
    String? nickname = '',
    String? countryName = '',
    String? countryDialCode = '',
    String? countryCode = '',
    String? email = '',
    String? password = '',
    String? confirmPassword = '',
    String? language = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "full_name": "$fullName",
  "nickname": "$nickname",
  "country_name": "$countryName",
  "country_dialCode": "$countryDialCode",
  "country_code": "$countryCode",
  "email": "$email",
  "password": "$password",
  "confirm_password": "$confirmPassword",
  "language": "$language"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '$baseUrl/register',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.response.User''',
      );
  String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User._id''',
      ));
  String? userCountryCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.country_code''',
      ));
  String? userCountryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.country_name''',
      ));
  String? userFullName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.full_name''',
      ));
  String? userNickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.nickname''',
      ));
  String? userCountrydialCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.User.country_dialCode''',
      ));
  bool? userSignedUp(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.user_signed_up''',
      ));
  dynamic userAuthentication(dynamic response) => getJsonField(
        response,
        r'''$.response.User.authentication''',
      );
  dynamic userAuthenticationEmail(dynamic response) => getJsonField(
        response,
        r'''$.response.User.authentication.email''',
      );
  String? userAuthenticationEmailEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.User.authentication.email.email''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  String? userUID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  int? expires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.expires''',
      ));
  bool? deletado(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.deletado''',
      ));
  String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.image''',
      ));
  String? linguagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.linguagem''',
      ));
  bool? notificationSuggestion(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_content_suggestion''',
      ));
  bool? notificationEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_email''',
      ));
  bool? notificationNewContent(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_new_content''',
      ));
  bool? notificationPublicities(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.User.notification_publicities''',
      ));
  bool? onboarding(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.User.complete_onboarding''',
      ));
  String? prefAudio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.preferencia_audio''',
      ));
  String? tipoUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.User.tipo_user''',
      ));
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? oldPassword = '',
    String? newPassword = '',
    String? confirmNewPassword = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "old_password": "$oldPassword",
  "new_password": "$newPassword",
  "confirm_new_password": "$confirmNewPassword"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changePassword',
      apiUrl: '$baseUrl/update_password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.token''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user_id''',
      ));
  int? expires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.expires''',
      ));
}

class DeleteAccountCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteAccount',
      apiUrl: '$baseUrl/delete_account',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

/// End Auth Group Code

/// Start wf Group Code

class WfGroup {
  static String getBaseUrl() => 'https://science-play.bubbleapps.io/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
  };
  static AreasCall areasCall = AreasCall();
  static SpecialtiesCall specialtiesCall = SpecialtiesCall();
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static UpdateProfileImageCall updateProfileImageCall =
      UpdateProfileImageCall();
  static RequestPersonalDataCall requestPersonalDataCall =
      RequestPersonalDataCall();
  static AreaHorseCall areaHorseCall = AreaHorseCall();
  static SpecialtiesHorseCall specialtiesHorseCall = SpecialtiesHorseCall();
  static SpecialtiesHorseAreaCall specialtiesHorseAreaCall =
      SpecialtiesHorseAreaCall();
}

class AreasCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = WfGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'areas',
      apiUrl: '$baseUrl/areas',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.area[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.area[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? areaJson(dynamic response) => getJsonField(
        response,
        r'''$.response.area''',
        true,
      ) as List?;
}

class SpecialtiesCall {
  Future<ApiCallResponse> call({
    dynamic areaUidJson,
  }) async {
    final baseUrl = WfGroup.getBaseUrl();

    final areaUid = _serializeJson(areaUidJson);

    return ApiManager.instance.makeApiCall(
      callName: 'specialties',
      apiUrl: '$baseUrl/specialties',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'area': areaUid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? areaUID(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:].area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.response.specialties''',
        true,
      ) as List?;
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? nickname = '',
    String? email = '',
    String? profile = '',
    String? countryName = '',
    String? countryDialCode = '',
    String? countryCode = '',
    String? audioPref = '',
    bool? notificationEmail,
    bool? notificationNewContent,
    bool? notificationContentSuggestion,
    bool? notificationPublicities,
    String? linguagem = '',
  }) async {
    final baseUrl = WfGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "nickname": "$nickname",
  "email": "$email",
  "profile": "$profile",
  "country_name": "$countryName",
  "country_dialCode": "$countryDialCode",
  "country_code": "$countryCode",
  "audio_pref": "$audioPref",
  "notification_email": $notificationEmail,
  "notification_new_content": $notificationNewContent,
  "notification_content_suggestion": $notificationContentSuggestion,
  "notification_publicities": $notificationPublicities,
  "linguagem": "$linguagem"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUser',
      apiUrl: '$baseUrl/update_user',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  dynamic userJson(dynamic response) => getJsonField(
        response,
        r'''$.response.user''',
      );
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user._id''',
      ));
  String? countryCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.country_code''',
      ));
  String? countryName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.country_name''',
      ));
  String? fullName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.full_name''',
      ));
  String? nickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.nickname''',
      ));
  String? countryDialCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.country_dialCode''',
      ));
  bool? signedUp(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.user.user_signed_up''',
      ));
  dynamic authentication(dynamic response) => getJsonField(
        response,
        r'''$.response.user.authentication''',
      );
  dynamic authenticationEmail(dynamic response) => getJsonField(
        response,
        r'''$.response.user.authentication.email''',
      );
  String? authenticationEmailEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.user.authentication.email.email''',
      ));
  String? userImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.image''',
      ));
  String? userLinguagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.linguagem''',
      ));
  String? tipoUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.tipo_user''',
      ));
  List<String>? areaOfInterest(dynamic response) => (getJsonField(
        response,
        r'''$.response.user.area_of_interest''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? lastAccess(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.user.last_acess''',
      ));
  List<String>? occupationOrInterest(dynamic response) => (getJsonField(
        response,
        r'''$.response.user.occupation_or_interest''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? completeOnboarding(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.user.complete_onboarding''',
      ));
  String? prefAudio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.preferencia_audio''',
      ));
  String? userLevel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.level''',
      ));
  String? userAccessLevel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.user.access_level''',
      ));
  bool? notificationSuggestion(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.user.notification_content_suggestion''',
      ));
  bool? notificationEmail(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.response.user.notification_email''',
      ));
  bool? notificationNewContent(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.user.notification_new_content''',
      ));
  bool? notificationPublicities(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.response.user.notification_publicities''',
      ));
  List<String>? myFiles(dynamic response) => (getJsonField(
        response,
        r'''$.response.user.my_files''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UpdateProfileImageCall {
  Future<ApiCallResponse> call({
    String? image = '',
    String? uid = '',
  }) async {
    final baseUrl = WfGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "image": "$image",
  "uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProfileImage',
      apiUrl: '$baseUrl/update_profile_image',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? sucesso(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  String? profileImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.profile_image''',
      ));
}

class RequestPersonalDataCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final baseUrl = WfGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'requestPersonalData',
      apiUrl: '$baseUrl/request_personal_data',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class AreaHorseCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = WfGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'AreaHorse',
      apiUrl: '$baseUrl/area_horse',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List? area(dynamic response) => getJsonField(
        response,
        r'''$.response.area''',
        true,
      ) as List?;
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.area[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? specialties(dynamic response) => (getJsonField(
        response,
        r'''$.response.area[:].specialties''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.area[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nameportuguese(dynamic response) => (getJsonField(
        response,
        r'''$.response.area[:].name_portuguese''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SpecialtiesHorseCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = WfGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SpecialtiesHorse',
      apiUrl: '$baseUrl/specialties_horse',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.response.specialties''',
        true,
      ) as List?;
  List<String>? area(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:].area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SpecialtiesHorseAreaCall {
  Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    final baseUrl = WfGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SpecialtiesHorseArea',
      apiUrl: '$baseUrl/specialties_horse_area',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.response.specialties''',
        true,
      ) as List?;
  List<String>? area(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:].area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.specialties[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End wf Group Code

/// Start obj Group Code

class ObjGroup {
  static String getBaseUrl() => 'https://thescienceplay.com/api/1.1/obj';
  static Map<String, String> headers = {
    'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
  };
  static GetContentsCall getContentsCall = GetContentsCall();
  static GetSpecialtiesCall getSpecialtiesCall = GetSpecialtiesCall();
  static GetTrackAudioCall getTrackAudioCall = GetTrackAudioCall();
  static GetTracksCall getTracksCall = GetTracksCall();
  static GetAreasCall getAreasCall = GetAreasCall();
  static GetContentsByKeywordCall getContentsByKeywordCall =
      GetContentsByKeywordCall();
  static GetUserNicknameCall getUserNicknameCall = GetUserNicknameCall();
  static GetUserUIDCall getUserUIDCall = GetUserUIDCall();
  static GetPlansCall getPlansCall = GetPlansCall();
  static UpdatePhotoCall updatePhotoCall = UpdatePhotoCall();
  static GetAuthorsCall getAuthorsCall = GetAuthorsCall();
}

class GetContentsCall {
  Future<ApiCallResponse> call({
    String? constraints =
        '[{\"key\": \"english_title\", \"constraint_type\": \"text contains\", \"value\": \"Medicine\"}]',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getContents',
      apiUrl: '$baseUrl/content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List<String>? articleFile(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].article''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishAbout(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_about''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishAudio(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_audio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.response.results[:].specialties''',
        true,
      ) as List?;
  List<String>? englishSummary(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_summary''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].cover_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishJournal(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_journal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishTitle(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? level(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].level''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? portugueseAudio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_audio''',
      ));
  String? portugueseJournal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_journal''',
      ));
  String? portugueseSummary(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_summary''',
      ));
  String? portugueseTitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_title''',
      ));
  List<String>? residentUID(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].resident''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? cursor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.cursor''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  List<String>? areaUID(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishFileAudio(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_file_audio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status1(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].status_1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status2(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].status_2''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
  int? remaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.remaining''',
      ));
}

class GetSpecialtiesCall {
  Future<ApiCallResponse> call({
    String? constraints = '',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSpecialties',
      apiUrl: '$baseUrl/specialties',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  int? cursor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.cursor''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  List<String>? area(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
  int? remaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.remaining''',
      ));
}

class GetTrackAudioCall {
  Future<ApiCallResponse> call({
    String? constraints =
        '[{\"key\": \"english_title\", \"constraint_type\": \"text contains\", \"value\": \"Medicine\"}]',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getTrackAudio',
      apiUrl: '$baseUrl/tracks_audio',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  int? cursor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.cursor''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].content''',
      ));
  int? ordem(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.results[:].ordem''',
      ));
  String? track(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].track''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:]._id''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
  int? remaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.remaining''',
      ));
}

class GetTracksCall {
  Future<ApiCallResponse> call({
    String? constraints = '',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getTracks',
      apiUrl: '$baseUrl/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  int? cursor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.cursor''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  String? access(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].access''',
      ));
  String? area(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].area''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].title''',
      ));
  List<String>? audio(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].audio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? credits(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.results[:].credits''',
      ));
  List<String>? specialty(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].specialty''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:]._id''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
  int? remaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.remaining''',
      ));
}

class GetAreasCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAreas',
      apiUrl: '$baseUrl/area',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  int? cursor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.cursor''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  List<bool>? edit(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].edit''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.response.results[:].specialties''',
        true,
      ) as List?;
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
  int? remaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.remaining''',
      ));
}

class GetContentsByKeywordCall {
  Future<ApiCallResponse> call({
    String? constraints =
        '[{\"key\": \"english_title\", \"constraint_type\": \"text contains\", \"value\": \"Medicine\"}]',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getContentsByKeyword',
      apiUrl: '$baseUrl/content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
  List<String>? articleFile(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].article''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishAbout(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_about''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishAudio(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_audio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.response.results[:].specialties''',
        true,
      ) as List?;
  List<String>? englishSummary(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_summary''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].cover_image''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishJournal(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_journal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishTitle(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? level(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].level''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? portugueseAudio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_audio''',
      ));
  String? portugueseJournal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_journal''',
      ));
  String? portugueseSummary(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_summary''',
      ));
  String? portugueseTitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].portuguese_title''',
      ));
  List<String>? residentUID(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].resident''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? cursor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.cursor''',
      ));
  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
  List<String>? areaUID(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? englishFileAudio(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].english_file_audio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status1(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].status_1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status2(dynamic response) => (getJsonField(
        response,
        r'''$.response.results[:].status_2''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
  int? remaining(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.remaining''',
      ));
}

class GetUserNicknameCall {
  Future<ApiCallResponse> call({
    String? constraints =
        '[{\"key\": \"nickname\", \"constraint_type\": \"equals\", \"value\": \"named\"}]',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserNickname',
      apiUrl: '$baseUrl/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].nickname''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:]._id''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].authentication.email.email''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
}

class GetUserUIDCall {
  Future<ApiCallResponse> call({
    String? constraints =
        '[{\"key\": \"_id\", \"constraint_type\": \"equals\", \"value\": \"1715078768193x883618949263637000\"}]',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserUID',
      apiUrl: '$baseUrl/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nickname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].nickname''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:]._id''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].authentication.email.email''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.count''',
      ));
  int? experiencia(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.results[:].experiencia''',
      ));
  int? credits(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.results[:].credits''',
      ));
  String? planUID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].Plan''',
      ));
}

class GetPlansCall {
  Future<ApiCallResponse> call({
    String? constraints =
        '[{\"key\": \"_id\", \"constraint_type\": \"equals\", \"value\": \"1718388076299x266071773114038720\"}]',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPlans',
      apiUrl: '$baseUrl/plans',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'constraints': constraints,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].Name''',
      ));
  String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:]._id''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.results[:].Description''',
      ));
}

class UpdatePhotoCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? image = '',
  }) async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'updatePhoto',
      apiUrl: '$baseUrl/User/$userId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAuthorsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ObjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAuthors',
      apiUrl: '$baseUrl/authors',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 2df1818102ed4086ce88f0fe37d4a98d',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? results(dynamic response) => getJsonField(
        response,
        r'''$.response.results''',
        true,
      ) as List?;
}

/// End obj Group Code

/// Start wfBerear Group Code

class WfBerearGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thescienceplay.com/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetTrackByIdCall getTrackByIdCall = GetTrackByIdCall();
  static GetTracksAreaBasedCall getTracksAreaBasedCall =
      GetTracksAreaBasedCall();
  static GetTrackSpecialtiesCall getTrackSpecialtiesCall =
      GetTrackSpecialtiesCall();
  static GetPurchasedTrackCall getPurchasedTrackCall = GetPurchasedTrackCall();
  static GetMyTracksCall getMyTracksCall = GetMyTracksCall();
  static GetTrackAreaCall getTrackAreaCall = GetTrackAreaCall();
  static AddFavoriteTrackCall addFavoriteTrackCall = AddFavoriteTrackCall();
  static AddFavoriteContentCall addFavoriteContentCall =
      AddFavoriteContentCall();
  static PurchasedTrackCall purchasedTrackCall = PurchasedTrackCall();
  static RemoveFavoriteTrackCall removeFavoriteTrackCall =
      RemoveFavoriteTrackCall();
  static RemoveFavoriteContentCall removeFavoriteContentCall =
      RemoveFavoriteContentCall();
  static OnBoardingCompletedCall onBoardingCompletedCall =
      OnBoardingCompletedCall();
  static GetAllContentsCall getAllContentsCall = GetAllContentsCall();
  static CreateFileCall createFileCall = CreateFileCall();
  static GetMyFilesCall getMyFilesCall = GetMyFilesCall();
  static GetContentByIdCall getContentByIdCall = GetContentByIdCall();
  static GetContentByAreaCall getContentByAreaCall = GetContentByAreaCall();
  static GetAreaByIdCall getAreaByIdCall = GetAreaByIdCall();
  static DeleteFileCall deleteFileCall = DeleteFileCall();
  static ValidTokenCall validTokenCall = ValidTokenCall();
  static UpdateOccupationCall updateOccupationCall = UpdateOccupationCall();
  static UpdateAreasInterestsCall updateAreasInterestsCall =
      UpdateAreasInterestsCall();
  static UpdateLevelCall updateLevelCall = UpdateLevelCall();
  static UpdateGoalsCall updateGoalsCall = UpdateGoalsCall();
  static UpdateDedicationCall updateDedicationCall = UpdateDedicationCall();
  static UpdatePreferedContentCall updatePreferedContentCall =
      UpdatePreferedContentCall();
  static ResetAllPreferenciesCall resetAllPreferenciesCall =
      ResetAllPreferenciesCall();
  static GetContentPreferencesCall getContentPreferencesCall =
      GetContentPreferencesCall();
  static GetContentByKWCall getContentByKWCall = GetContentByKWCall();
  static AddRatingToContentCall addRatingToContentCall =
      AddRatingToContentCall();
  static AddRatingToTrackCall addRatingToTrackCall = AddRatingToTrackCall();
  static GetUserRatingContentCall getUserRatingContentCall =
      GetUserRatingContentCall();
  static GetUserRatingTrackCall getUserRatingTrackCall =
      GetUserRatingTrackCall();
  static GetTopContentCall getTopContentCall = GetTopContentCall();
  static GetContentThatWeLoveCall getContentThatWeLoveCall =
      GetContentThatWeLoveCall();
  static GetAllTracksCall getAllTracksCall = GetAllTracksCall();
  static AddContentCompletedCall addContentCompletedCall =
      AddContentCompletedCall();
  static GetListGlobalRankingResumeCall getListGlobalRankingResumeCall =
      GetListGlobalRankingResumeCall();
  static AddStartedContentCall addStartedContentCall = AddStartedContentCall();
  static GetContentsSpecificGlobalRankingCall
      getContentsSpecificGlobalRankingCall =
      GetContentsSpecificGlobalRankingCall();
  static GetFiltersSpecialtiesCall getFiltersSpecialtiesCall =
      GetFiltersSpecialtiesCall();
  static BuyCreditsXPCall buyCreditsXPCall = BuyCreditsXPCall();
  static LogtesteCall logtesteCall = LogtesteCall();
  static GetBackWhereYouStoppedCall getBackWhereYouStoppedCall =
      GetBackWhereYouStoppedCall();
  static UpdateMyContentsInFilesCall updateMyContentsInFilesCall =
      UpdateMyContentsInFilesCall();
  static RemoveContentFromFileCall removeContentFromFileCall =
      RemoveContentFromFileCall();
  static AddContentToFileCall addContentToFileCall = AddContentToFileCall();
  static GetUserStreakResumeCall getUserStreakResumeCall =
      GetUserStreakResumeCall();
  static GetUserStreakAllCall getUserStreakAllCall = GetUserStreakAllCall();
  static GetUsersBadgesCall getUsersBadgesCall = GetUsersBadgesCall();
  static IniciouUmaPlaylistCall iniciouUmaPlaylistCall =
      IniciouUmaPlaylistCall();
  static RegisterStudySessionCall registerStudySessionCall =
      RegisterStudySessionCall();
  static GetDailyQuestCall getDailyQuestCall = GetDailyQuestCall();
  static GetTinyUrlCall getTinyUrlCall = GetTinyUrlCall();
  static GetTinyUrlTrackCall getTinyUrlTrackCall = GetTinyUrlTrackCall();
  static ReportTranscriptionCall reportTranscriptionCall =
      ReportTranscriptionCall();
  static GetContentShareCall getContentShareCall = GetContentShareCall();
  static GetContentShareTrackCall getContentShareTrackCall =
      GetContentShareTrackCall();
  static SolicitarCancelamentoAssinaturaCall
      solicitarCancelamentoAssinaturaCall =
      SolicitarCancelamentoAssinaturaCall();
}

class GetTrackByIdCall {
  Future<ApiCallResponse> call({
    String? trackId = '',
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getTrackById',
      apiUrl: '$baseUrl/get_track_by_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'track_id': trackId,
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic track(dynamic response) => getJsonField(
        response,
        r'''$.track''',
      );
}

class GetTracksAreaBasedCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getTracksAreaBased',
      apiUrl: '$baseUrl/get_tracks_area_based',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? tracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
}

class GetTrackSpecialtiesCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getTrackSpecialties',
      apiUrl: '$baseUrl/get_tracks_specialties',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? tracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
}

class GetPurchasedTrackCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getPurchasedTrack',
      apiUrl: '$baseUrl/get_purchased_track',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? purchasedtrack(dynamic response) => getJsonField(
        response,
        r'''$.purchased_track''',
        true,
      ) as List?;
  dynamic track(dynamic response) => getJsonField(
        response,
        r'''$.purchased_track[:].track''',
      );
}

class GetMyTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getMyTracks',
      apiUrl: '$baseUrl/get_my_tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? myTracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
}

class GetTrackAreaCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getTrackArea',
      apiUrl: '$baseUrl/get_all_tracks_area',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? tracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
}

class AddFavoriteTrackCall {
  Future<ApiCallResponse> call({
    String? trackId = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addFavoriteTrack',
      apiUrl: '$baseUrl/add_favorite_track',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'track_id': trackId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddFavoriteContentCall {
  Future<ApiCallResponse> call({
    String? contentId = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addFavoriteContent',
      apiUrl: '$baseUrl/add_favorite_content',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'content_id': contentId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PurchasedTrackCall {
  Future<ApiCallResponse> call({
    String? track = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'purchasedTrack',
      apiUrl: '$baseUrl/purchase_track',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'track': track,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class RemoveFavoriteTrackCall {
  Future<ApiCallResponse> call({
    String? trackId = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'removeFavoriteTrack',
      apiUrl: '$baseUrl/remove_favorite_track',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'track_id': trackId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveFavoriteContentCall {
  Future<ApiCallResponse> call({
    String? contentId = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'removeFavoriteContent',
      apiUrl: '$baseUrl/remove_favorite_content',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'content_id': contentId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OnBoardingCompletedCall {
  Future<ApiCallResponse> call({
    List<String>? areasList,
    List<String>? specialtiesList,
    String? level = '',
    List<String>? goalsList,
    String? timeDedication = '',
    List<String>? preferenceContentsList,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final areas = _serializeList(areasList);
    final specialties = _serializeList(specialtiesList);
    final goals = _serializeList(goalsList);
    final preferenceContents = _serializeList(preferenceContentsList);

    return ApiManager.instance.makeApiCall(
      callName: 'onBoardingCompleted',
      apiUrl: '$baseUrl/onboarding_completed',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'areas': areas,
        'specialties': specialties,
        'level': level,
        'goals': goals,
        'time_dedication': timeDedication,
        'preference_contents': preferenceContents,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllContentsCall {
  Future<ApiCallResponse> call({
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAllContents',
      apiUrl: '$baseUrl/get_all_contents',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? contents(dynamic response) => getJsonField(
        response,
        r'''$.contents''',
        true,
      ) as List?;
}

class CreateFileCall {
  Future<ApiCallResponse> call({
    String? name = '',
    List<String>? listOfContentsList,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final listOfContents = _serializeList(listOfContentsList);

    return ApiManager.instance.makeApiCall(
      callName: 'createFile',
      apiUrl: '$baseUrl/create_file',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'name': name,
        'list_of_contents': listOfContents,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyFilesCall {
  Future<ApiCallResponse> call({
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getMyFiles',
      apiUrl: '$baseUrl/get_my_files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? files(dynamic response) => getJsonField(
        response,
        r'''$.files''',
        true,
      ) as List?;
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.files[:].contents[:].specialties''',
        true,
      ) as List?;
  List<String>? listContentsId(dynamic response) => (getJsonField(
        response,
        r'''$.files[:].contents[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetContentByIdCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentById',
      apiUrl: '$baseUrl/get_content_by_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.content''',
      );
  List? writers(dynamic response) => getJsonField(
        response,
        r'''$.content.writers''',
        true,
      ) as List?;
}

class GetContentByAreaCall {
  Future<ApiCallResponse> call({
    String? areaId = '',
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentByArea',
      apiUrl: '$baseUrl/get_content_by_area',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'area_id': areaId,
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? contentsBySpecialties(dynamic response) => getJsonField(
        response,
        r'''$.contentsBySpecialties''',
        true,
      ) as List?;
}

class GetAreaByIdCall {
  Future<ApiCallResponse> call({
    String? idArea = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAreaById',
      apiUrl: '$baseUrl/get_area_by_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_area': idArea,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic area(dynamic response) => getJsonField(
        response,
        r'''$.response.area''',
      );
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.area.name''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.area._id''',
      ));
}

class DeleteFileCall {
  Future<ApiCallResponse> call({
    String? idFile = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteFile',
      apiUrl: '$baseUrl/delete_file',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_file': idFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'validToken',
      apiUrl: '$baseUrl/validar-token',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateOccupationCall {
  Future<ApiCallResponse> call({
    List<String>? occupationsList,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final occupations = _serializeList(occupationsList);

    return ApiManager.instance.makeApiCall(
      callName: 'updateOccupation',
      apiUrl: '$baseUrl/update_occupation',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'occupations': occupations,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAreasInterestsCall {
  Future<ApiCallResponse> call({
    List<String>? areasList,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final areas = _serializeList(areasList);

    return ApiManager.instance.makeApiCall(
      callName: 'updateAreasInterests',
      apiUrl: '$baseUrl/update_areas_interests',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'areas': areas,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateLevelCall {
  Future<ApiCallResponse> call({
    String? level = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'updateLevel',
      apiUrl: '$baseUrl/update_level',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'level': level,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateGoalsCall {
  Future<ApiCallResponse> call({
    List<String>? goalsList,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final goals = _serializeList(goalsList);

    return ApiManager.instance.makeApiCall(
      callName: 'updateGoals',
      apiUrl: '$baseUrl/update_goals',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'goals': goals,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDedicationCall {
  Future<ApiCallResponse> call({
    String? dedication = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'updateDedication',
      apiUrl: '$baseUrl/update_dedication',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'dedication': dedication,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePreferedContentCall {
  Future<ApiCallResponse> call({
    List<String>? preferencesList,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final preferences = _serializeList(preferencesList);

    return ApiManager.instance.makeApiCall(
      callName: 'updatePreferedContent',
      apiUrl: '$baseUrl/update_prefered_content',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'preferences': preferences,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetAllPreferenciesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'resetAllPreferencies',
      apiUrl: '$baseUrl/reset_all_preferencies',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContentPreferencesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentPreferences',
      apiUrl: '$baseUrl/get_content_preferences',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<OccupationOrInterestStruct>? occupations(dynamic response) =>
      (getJsonField(
        response,
        r'''$.occupations''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => OccupationOrInterestStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  List<AreaInterestStruct>? areas(dynamic response) => (getJsonField(
        response,
        r'''$.areas''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => AreaInterestStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  List<GoalsStruct>? goals(dynamic response) => (getJsonField(
        response,
        r'''$.goals''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => GoalsStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  List<PreferencesStruct>? preferedtype(dynamic response) => (getJsonField(
        response,
        r'''$.prefered_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => PreferencesStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  dynamic level(dynamic response) => getJsonField(
        response,
        r'''$.level''',
      );
  dynamic dedication(dynamic response) => getJsonField(
        response,
        r'''$.dedication''',
      );
}

class GetContentByKWCall {
  Future<ApiCallResponse> call({
    String? kw = '',
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentByKW',
      apiUrl: '$baseUrl/get_content_by_kw',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'kw': kw,
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddRatingToContentCall {
  Future<ApiCallResponse> call({
    int? rate,
    String? idContent = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addRatingToContent',
      apiUrl: '$baseUrl/add_rating_to_content',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'rate': rate,
        'id_content': idContent,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddRatingToTrackCall {
  Future<ApiCallResponse> call({
    int? rate,
    String? idTrack = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addRatingToTrack',
      apiUrl: '$baseUrl/add_rating_to_track',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'rate': rate,
        'id_track': idTrack,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserRatingContentCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getUserRatingContent',
      apiUrl: '$baseUrl/get_user_rating_content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? rate(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rate''',
      ));
}

class GetUserRatingTrackCall {
  Future<ApiCallResponse> call({
    String? idTrack = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getUserRatingTrack',
      apiUrl: '$baseUrl/get_user_rating_track',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_track': idTrack,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? rate(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rate''',
      ));
}

class GetTopContentCall {
  Future<ApiCallResponse> call({
    String? language = '',
    String? accessOS = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getTopContent',
      apiUrl: '$baseUrl/get_top_content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
        'access_OS': accessOS,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContentThatWeLoveCall {
  Future<ApiCallResponse> call({
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentThatWeLove',
      apiUrl: '$baseUrl/get_content_that_we_love',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAllTracks',
      apiUrl: '$baseUrl/get_all_tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? tracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
}

class AddContentCompletedCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    int? time,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addContentCompleted',
      apiUrl: '$baseUrl/add_content_completed',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListGlobalRankingResumeCall {
  Future<ApiCallResponse> call({
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getListGlobalRankingResume',
      apiUrl: '$baseUrl/get_list_global_ranking_resume',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? ranking(dynamic response) => getJsonField(
        response,
        r'''$.ranking''',
        true,
      ) as List?;
}

class AddStartedContentCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addStartedContent',
      apiUrl: '$baseUrl/add_started_content',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContentsSpecificGlobalRankingCall {
  Future<ApiCallResponse> call({
    String? idGlobalRanking = '',
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentsSpecificGlobalRanking',
      apiUrl: '$baseUrl/get_contents_specific_global_ranking',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_global_ranking': idGlobalRanking,
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? contents(dynamic response) => getJsonField(
        response,
        r'''$.contents''',
        true,
      ) as List?;
}

class GetFiltersSpecialtiesCall {
  Future<ApiCallResponse> call({
    List<String>? idsContentsList,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final idsContents = _serializeList(idsContentsList);

    return ApiManager.instance.makeApiCall(
      callName: 'getFiltersSpecialties',
      apiUrl: '$baseUrl/get_filters_specialties',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'ids_contents': idsContents,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuyCreditsXPCall {
  Future<ApiCallResponse> call({
    int? credits,
    int? xp,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'BuyCreditsXP',
      apiUrl: '$baseUrl/buy_credits_xp',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'credits': credits,
        'xp': xp,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogtesteCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? text,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'logteste',
      apiUrl: '$baseUrl/log_teste',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'text': text,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBackWhereYouStoppedCall {
  Future<ApiCallResponse> call({
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getBackWhereYouStopped',
      apiUrl: '$baseUrl/get_back_where_you_stopped',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? contents(dynamic response) => getJsonField(
        response,
        r'''$.contents''',
        true,
      ) as List?;
}

class UpdateMyContentsInFilesCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    List<String>? listIdsFilesList,
    bool? isAdd,
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );
    final listIdsFiles = _serializeList(listIdsFilesList);

    return ApiManager.instance.makeApiCall(
      callName: 'updateMyContentsInFiles',
      apiUrl: '$baseUrl/update_my_contents_in_files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
        'list_ids_files': listIdsFiles,
        'isAdd': isAdd,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveContentFromFileCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? idFile = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'removeContentFromFile',
      apiUrl: '$baseUrl/remove_content_from_file',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
        'id_file': idFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddContentToFileCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? idFile = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addContentToFile',
      apiUrl: '$baseUrl/add_content_to_file',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
        'id_file': idFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserStreakResumeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getUserStreakResume',
      apiUrl: '$baseUrl/get_user_streak_resume',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? currentstreak(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current_streak''',
      ));
  bool? today(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.today''',
      ));
  bool? yesterday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.yesterday''',
      ));
  bool? twoDayAgo(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.twoDayAgo''',
      ));
}

class GetUserStreakAllCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getUserStreakAll',
      apiUrl: '$baseUrl/get_user_streak_all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? currentstreak(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current_streak''',
      ));
  bool? sunday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.sunday''',
      ));
  bool? monday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.monday''',
      ));
  bool? tuesday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.tuesday''',
      ));
  bool? wednesday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.wednesday''',
      ));
  bool? thursday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.thursday''',
      ));
  bool? friday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.friday''',
      ));
  bool? saturday(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.saturday''',
      ));
}

class GetUsersBadgesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getUsersBadges',
      apiUrl: '$baseUrl/get_users_badges',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? badgesCompleted(dynamic response) => getJsonField(
        response,
        r'''$.badgesCompleted''',
        true,
      ) as List?;
  List? badgesIncompleted(dynamic response) => getJsonField(
        response,
        r'''$.badgesIncompleted''',
        true,
      ) as List?;
}

class IniciouUmaPlaylistCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'iniciouUmaPlaylist',
      apiUrl: '$baseUrl/iniciou_uma_playlist',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterStudySessionCall {
  Future<ApiCallResponse> call({
    int? seconds,
    String? idContent = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'registerStudySession',
      apiUrl: '$baseUrl/register_study_session',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'seconds': seconds,
        'id_content': idContent,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDailyQuestCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDailyQuest',
      apiUrl: '$baseUrl/get_daily_quest',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? listen(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.listen''',
      ));
  int? time(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.time''',
      ));
  dynamic contentQuest(dynamic response) => getJsonField(
        response,
        r'''$.content_quest''',
      );
}

class GetTinyUrlCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? url = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getTinyUrl',
      apiUrl: '$baseUrl/get_tiny_url',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
        'url': url,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTinyUrlTrackCall {
  Future<ApiCallResponse> call({
    String? url = '',
    String? idTrack = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getTinyUrlTrack',
      apiUrl: '$baseUrl/get_tiny_url_track',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_track': idTrack,
        'url': url,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReportTranscriptionCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? motivo = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'reportTranscription',
      apiUrl: '$baseUrl/report_transcription',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
        'motivo': motivo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContentShareCall {
  Future<ApiCallResponse> call({
    String? contentId = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentShare',
      apiUrl: '$baseUrl/get_content_share',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'content_id': contentId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic contents(dynamic response) => getJsonField(
        response,
        r'''$.contents''',
      );
}

class GetContentShareTrackCall {
  Future<ApiCallResponse> call({
    String? trackId = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getContentShareTrack',
      apiUrl: '$baseUrl/get_content_share_track',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'track_id': trackId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic track(dynamic response) => getJsonField(
        response,
        r'''$.track''',
      );
}

class SolicitarCancelamentoAssinaturaCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'solicitarCancelamentoAssinatura',
      apiUrl: '$baseUrl/solicitar_cancelamento_assinatura',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End wfBerear Group Code

/// Start wfBerear Notes Group Code

class WfBerearNotesGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thescienceplay.com/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static AddNoteContentCall addNoteContentCall = AddNoteContentCall();
  static GetNotesContentCall getNotesContentCall = GetNotesContentCall();
  static DeleteNoteContentCall deleteNoteContentCall = DeleteNoteContentCall();
}

class AddNoteContentCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? annotation = '',
    String? time = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearNotesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'addNoteContent',
      apiUrl: '$baseUrl/add_note_content',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
        'annotation': annotation,
        'time': time,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotesContentCall {
  Future<ApiCallResponse> call({
    String? idContent = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearNotesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getNotesContent',
      apiUrl: '$baseUrl/get_notes_content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? notes(dynamic response) => getJsonField(
        response,
        r'''$.response.notes''',
        true,
      ) as List?;
}

class DeleteNoteContentCall {
  Future<ApiCallResponse> call({
    String? idNote = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearNotesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteNoteContent',
      apiUrl: '$baseUrl/delete_note_content',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_note': idNote,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End wfBerear Notes Group Code

/// Start wfBerearBook Group Code

class WfBerearBookGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thescienceplay.com/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetBookContentsResumeCall getBookContentsResumeCall =
      GetBookContentsResumeCall();
  static GetBookByIdCall getBookByIdCall = GetBookByIdCall();
  static CreateContentQuestBookCall createContentQuestBookCall =
      CreateContentQuestBookCall();
  static GetDailyQuestBookCall getDailyQuestBookCall = GetDailyQuestBookCall();
  static UpdateStatusDailyQuestBookCall updateStatusDailyQuestBookCall =
      UpdateStatusDailyQuestBookCall();
  static ExitQuestCall exitQuestCall = ExitQuestCall();
}

class GetBookContentsResumeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearBookGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getBookContentsResume',
      apiUrl: '$baseUrl/get_book_contents_resume',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? books(dynamic response) => getJsonField(
        response,
        r'''$.books''',
        true,
      ) as List?;
}

class GetBookByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearBookGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getBookById',
      apiUrl: '$baseUrl/get_book_by_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? chapters(dynamic response) => getJsonField(
        response,
        r'''$.chapters''',
        true,
      ) as List?;
  String? summary(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.summary''',
      ));
  String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.link''',
      ));
  List? specialties(dynamic response) => getJsonField(
        response,
        r'''$.specialties''',
        true,
      ) as List?;
}

class CreateContentQuestBookCall {
  Future<ApiCallResponse> call({
    String? idBook = '',
    double? days,
    String? token = '',
  }) async {
    final baseUrl = WfBerearBookGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createContentQuestBook',
      apiUrl: '$baseUrl/create_content_quest_book',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_book': idBook,
        'days': days,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.id''',
      ));
}

class GetDailyQuestBookCall {
  Future<ApiCallResponse> call({
    String? idContentQuestBook = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearBookGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDailyQuestBook',
      apiUrl: '$baseUrl/get_daily_quest_book',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content_quest_book': idContentQuestBook,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dailyQuests(dynamic response) => getJsonField(
        response,
        r'''$.daily_quests''',
        true,
      ) as List?;
  int? daysChallenge(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.days_challenge''',
      ));
}

class UpdateStatusDailyQuestBookCall {
  Future<ApiCallResponse> call({
    String? idDailyQuestBook = '',
    int? status,
    String? token = '',
  }) async {
    final baseUrl = WfBerearBookGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'updateStatusDailyQuestBook',
      apiUrl: '$baseUrl/update_status_daily_quest_book',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_daily_quest_book': idDailyQuestBook,
        'status': status,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExitQuestCall {
  Future<ApiCallResponse> call({
    String? idContentQuestBook = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearBookGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'exitQuest',
      apiUrl: '$baseUrl/exist_quest',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content_quest_book': idContentQuestBook,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End wfBerearBook Group Code

/// Start wfBerearAuthors Group Code

class WfBerearAuthorsGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thescienceplay.com/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static GetAuthorsWFCall getAuthorsWFCall = GetAuthorsWFCall();
  static GetAuthorsByIdCall getAuthorsByIdCall = GetAuthorsByIdCall();
}

class GetAuthorsWFCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearAuthorsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAuthorsWF',
      apiUrl: '$baseUrl/get_authors',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? authors(dynamic response) => getJsonField(
        response,
        r'''$.authors''',
        true,
      ) as List?;
}

class GetAuthorsByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearAuthorsGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAuthorsById',
      apiUrl: '$baseUrl/get_authors_by_id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? contents(dynamic response) => getJsonField(
        response,
        r'''$.contents''',
        true,
      ) as List?;
}

/// End wfBerearAuthors Group Code

/// Start wfBerear User Group Code

class WfBerearUserGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://thescienceplay.com/api/1.1/wf';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static UpdateUserLanguageCall updateUserLanguageCall =
      UpdateUserLanguageCall();
  static GetAccessUserCall getAccessUserCall = GetAccessUserCall();
}

class UpdateUserLanguageCall {
  Future<ApiCallResponse> call({
    String? language = '',
    String? token = '',
  }) async {
    final baseUrl = WfBerearUserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'updateUserLanguage',
      apiUrl: '$baseUrl/update_user_language',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAccessUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = WfBerearUserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAccessUser',
      apiUrl: '$baseUrl/get_access_user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isFree(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isFree''',
      ));
  String? dateRenew(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.date_renew''',
      ));
}

/// End wfBerear User Group Code

/// Start SheereID Group Code

class SheereIDGroup {
  static String getBaseUrl() => 'https://services.sheerid.com/rest/v2';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static BuscarInstituicaoCall buscarInstituicaoCall = BuscarInstituicaoCall();
  static VerificarVeracidadeCall verificarVeracidadeCall =
      VerificarVeracidadeCall();
  static GerarTokenCall gerarTokenCall = GerarTokenCall();
  static ConsultarTokenCall consultarTokenCall = ConsultarTokenCall();
  static EnviarDocumentosCall enviarDocumentosCall = EnviarDocumentosCall();
}

class BuscarInstituicaoCall {
  Future<ApiCallResponse> call({
    String? programId = '',
    String? name = 'teste',
  }) async {
    final baseUrl = SheereIDGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Instituicao',
      apiUrl: '$baseUrl/program/$programId/organization',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'name': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? idExtended(dynamic response) => getJsonField(
        response,
        r'''$[:].idExtended''',
        true,
      ) as List?;
  List? source(dynamic response) => getJsonField(
        response,
        r'''$[:].source''',
        true,
      ) as List?;
}

class VerificarVeracidadeCall {
  Future<ApiCallResponse> call({
    String? idVerification = '',
    String? primeiroNome = '',
    String? sobrenome = '',
    String? dataAniversario = '',
    int? idInstituicao,
    String? nomeInstituicao = '',
    String? email = '',
  }) async {
    final baseUrl = SheereIDGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "firstName": "$primeiroNome",
  "lastName": "$sobrenome",
  "birthDate": "$dataAniversario",
  "email": "$email",
  "organization": {
    "id": $idInstituicao,
    "name": "$nomeInstituicao"
  },
  "metadata": {
    "my": "Fraktal Softwares",
    "goes": "app"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verificar Veracidade',
      apiUrl:
          '$baseUrl/verification/$idVerification/step/collectStudentPersonalInfo',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? verificationId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.verificationId''',
      ));
  String? currentStep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currentStep''',
      ));
  List? errorIds(dynamic response) => getJsonField(
        response,
        r'''$.errorIds''',
        true,
      ) as List?;
  String? segment(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.segment''',
      ));
  String? locale(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.locale''',
      ));
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.country''',
      ));
  int? created(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  int? updated(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.updated''',
      ));
  String? rewardCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rewardCode''',
      ));
  dynamic rewardData(dynamic response) => getJsonField(
        response,
        r'''$.rewardData''',
      );
  String? rewardDataRewardCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.rewardData.rewardCode''',
      ));
}

class GerarTokenCall {
  Future<ApiCallResponse> call({
    String? programId = '',
  }) async {
    final baseUrl = SheereIDGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "programId": "$programId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gerar Token',
      apiUrl: '$baseUrl/verification',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? verificationId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.verificationId''',
      ));
  String? currentStep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currentStep''',
      ));
  List? errorIds(dynamic response) => getJsonField(
        response,
        r'''$.errorIds''',
        true,
      ) as List?;
  String? segment(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.segment''',
      ));
  String? locale(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.locale''',
      ));
  int? created(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  int? updated(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.updated''',
      ));
  String? submissionUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.submissionUrl''',
      ));
  int? instantMatchAttemps(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.instantMatchAttempts''',
      ));
}

class ConsultarTokenCall {
  Future<ApiCallResponse> call({
    String? idVerification = '',
  }) async {
    final baseUrl = SheereIDGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Consultar Token',
      apiUrl: '$baseUrl/verification/$idVerification',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? verificationId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.verificationId''',
      ));
  String? currentStep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currentStep''',
      ));
  List? errorIds(dynamic response) => getJsonField(
        response,
        r'''$.errorIds''',
        true,
      ) as List?;
  String? segment(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.segment''',
      ));
  String? locale(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.locale''',
      ));
  String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.country''',
      ));
  int? created(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  int? updated(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.updated''',
      ));
  String? rewardCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rewardCode''',
      ));
  dynamic rewardData(dynamic response) => getJsonField(
        response,
        r'''$.rewardData''',
      );
  String? rewardDataRewardCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.rewardData.rewardCode''',
      ));
}

class EnviarDocumentosCall {
  Future<ApiCallResponse> call({
    String? idVerificacao = '',
    dynamic docJson,
  }) async {
    final baseUrl = SheereIDGroup.getBaseUrl();

    final doc = _serializeJson(docJson);

    return ApiManager.instance.makeApiCall(
      callName: 'Enviar Documentos',
      apiUrl: '$baseUrl/verification/$idVerificacao/step/docUpload',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'file': doc,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End SheereID Group Code

class CountryCodesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'CountryCodes',
      apiUrl:
          'https://gist.githubusercontent.com/anubhavshrimal/75f6183458db8c453306f93521e93d37/raw/f77e7598a8503f1f70528ae1cbf9f66755698a16/CountryCodes.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dialCode(dynamic response) => (getJsonField(
        response,
        r'''$[:].dial_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetContentForYouCall {
  static Future<ApiCallResponse> call({
    String? token =
        'bus|1716392781891x759170970886358500|1716416352441x471114238710224100',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getContentForYou',
      apiUrl: 'https://thescienceplay.com/api/1.1/wf/get_content_for_you',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? contents(dynamic response) => getJsonField(
        response,
        r'''$.response.contents''',
        true,
      ) as List?;
}

class GetContentForYouAboutCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? idContent = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getContentForYouAbout',
      apiUrl: 'https://thescienceplay.com/api/1.1/wf/get_content_for_you_about',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'id_content': idContent,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? englishAbout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.english_about''',
      ));
}

class GetContentForYouResumeCall {
  static Future<ApiCallResponse> call({
    String? token =
        'bus|1716392781891x759170970886358500|1716416352441x471114238710224100',
    String? language = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getContentForYouResume',
      apiUrl:
          'https://thescienceplay.com/api/1.1/wf/get_content_for_you_resume',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'language': language,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? contents(dynamic response) => getJsonField(
        response,
        r'''$.contents''',
        true,
      ) as List?;
}

class TesteCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'teste',
      apiUrl:
          'https://science-play.bubbleapps.io/version-test/api/1.1/wf/log_teste/initialize',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
