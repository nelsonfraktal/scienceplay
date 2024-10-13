import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/components/select_country_region_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/outros/audio_preferences/audio_preferences_widget.dart';
import '/outros/change_photo/change_photo_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'personal_informations_model.dart';
export 'personal_informations_model.dart';

class PersonalInformationsWidget extends StatefulWidget {
  const PersonalInformationsWidget({
    super.key,
    bool? editar,
  }) : editar = editar ?? false;

  final bool editar;

  @override
  State<PersonalInformationsWidget> createState() =>
      _PersonalInformationsWidgetState();
}

class _PersonalInformationsWidgetState
    extends State<PersonalInformationsWidget> {
  late PersonalInformationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalInformationsModel());

    _model.textController1 ??= TextEditingController(
        text: valueOrDefault<String>(
      currentUserData?.displayName,
      '-',
    ));
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController(
        text: valueOrDefault<String>(
      currentUserData?.username,
      '-',
    ));
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    height: 72.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.goNamed('Profile');
                              },
                              child: wrapWithModel(
                                model: _model.componentVoltarModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const ComponentVoltarWidget(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'ht9u2jit' /* Personal Information */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (currentUserData?.username ==
                                  _model.textController2.text) {
                                if (widget.editar) {
                                  context.goNamed(
                                    'Personal_informations',
                                    queryParameters: {
                                      'editar': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  _model.resultUpdateUser =
                                      await WfGroup.updateUserCall.call(
                                    name: _model.textController1.text,
                                    nickname: _model.textController2.text,
                                    countryName:
                                        FFAppState().countryName != ''
                                            ? FFAppState().countryName
                                            : currentUserData?.countryName,
                                    countryDialCode:
                                        FFAppState().countryDialCode !=
                                                    ''
                                            ? FFAppState().countryDialCode
                                            : currentUserData?.countryCodial,
                                    countryCode:
                                        FFAppState().countryCode != ''
                                            ? FFAppState().countryCode
                                            : currentUserData?.countryCode,
                                    audioPref: valueOrDefault<String>(
                                      !widget.editar
                                          ? currentUserData?.preferenciaAudio
                                          : (FFAppState().audioPref != ''
                                              ? FFAppState().audioPref
                                              : currentUserData
                                                  ?.preferenciaAudio),
                                      '-',
                                    ),
                                    email: currentUserData?.email,
                                    profile: currentUserData?.image,
                                    notificationEmail:
                                        currentUserData?.notificationEmail,
                                    notificationNewContent:
                                        currentUserData?.notificationNewContent,
                                    notificationContentSuggestion:
                                        currentUserData
                                            ?.notificationContentSuggestion,
                                    notificationPublicities: currentUserData
                                        ?.notificationPublicities,
                                    linguagem: _model.dropDownValue,
                                  );

                                  if ((_model.resultUpdateUser?.succeeded ??
                                      true)) {
                                    authManager.updateAuthUserData(
                                      authenticationToken:
                                          currentAuthenticationToken,
                                      refreshToken: currentAuthRefreshToken,
                                      tokenExpiration:
                                          currentAuthTokenExpiration,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        uid: currentUserUid,
                                        displayName:
                                            WfGroup.updateUserCall.fullName(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        username:
                                            WfGroup.updateUserCall.nickname(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        email: WfGroup.updateUserCall
                                            .authenticationEmailEmail(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        image: WfGroup.updateUserCall.userImage(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        countryName:
                                            WfGroup.updateUserCall.countryName(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        countryCode:
                                            WfGroup.updateUserCall.countryCode(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        countryCodial: WfGroup.updateUserCall
                                            .countryDialCode(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        linguagemPreferida: WfGroup
                                            .updateUserCall
                                            .userLinguagem(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        preferenciaAudio:
                                            WfGroup.updateUserCall.prefAudio(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        createTime: currentUserData?.createTime,
                                        notificationEmail: WfGroup
                                            .updateUserCall
                                            .notificationEmail(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        notificationNewContent: WfGroup
                                            .updateUserCall
                                            .notificationNewContent(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        notificationContentSuggestion: WfGroup
                                            .updateUserCall
                                            .notificationSuggestion(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                        notificationPublicities: WfGroup
                                            .updateUserCall
                                            .notificationPublicities(
                                          (_model.resultUpdateUser?.jsonBody ??
                                              ''),
                                        ),
                                      ),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            enText:
                                                'Your information has been updated successfully!',
                                            ptText:
                                                'Suas informações foram atualizadas com sucesso!',
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            enText: 'Oops, something happened!',
                                            ptText:
                                                'Opa, algo de errado aconteceu, tente novamente.',
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  }

                                  context.goNamed(
                                    'Personal_informations',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                } else {
                                  context.goNamed(
                                    'Personal_informations',
                                    queryParameters: {
                                      'editar': serializeParam(
                                        true,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              } else {
                                if (widget.editar) {
                                  context.goNamed(
                                    'Personal_informations',
                                    queryParameters: {
                                      'editar': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );

                                  _model.apiCheckNickname =
                                      await ObjGroup.getUserNicknameCall.call(
                                    constraints:
                                        '[{\"key\": \"nickname\", \"constraint_type\": \"equals\", \"value\": \"${_model.textController2.text}\"}]',
                                  );

                                  if ((_model.apiCheckNickname?.succeeded ??
                                      true)) {
                                    if (ObjGroup.getUserNicknameCall.count(
                                          (_model.apiCheckNickname?.jsonBody ??
                                              ''),
                                        )! >=
                                        1) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                              enText:
                                                  'This username is already in use!',
                                              ptText:
                                                  'Este apelido já está em uso!',
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                        ),
                                      );
                                    } else {
                                      _model.resultUpdateUser2 =
                                          await WfGroup.updateUserCall.call(
                                        name: _model.textController1.text,
                                        nickname: _model.textController2.text,
                                        countryName: FFAppState().countryName != ''
                                            ? FFAppState().countryName
                                            : currentUserData?.countryName,
                                        countryDialCode: FFAppState().countryDialCode !=
                                                    ''
                                            ? FFAppState().countryDialCode
                                            : currentUserData?.countryCodial,
                                        countryCode: FFAppState().countryCode != ''
                                            ? FFAppState().countryCode
                                            : currentUserData?.countryCode,
                                        audioPref: valueOrDefault<String>(
                                          !widget.editar
                                              ? currentUserData
                                                  ?.preferenciaAudio
                                              : (FFAppState().audioPref !=
                                                          ''
                                                  ? FFAppState().audioPref
                                                  : currentUserData
                                                      ?.preferenciaAudio),
                                          '-',
                                        ),
                                        email: currentUserData?.email,
                                        profile: currentUserData?.image,
                                        notificationEmail:
                                            currentUserData?.notificationEmail,
                                        notificationNewContent: currentUserData
                                            ?.notificationNewContent,
                                        notificationContentSuggestion:
                                            currentUserData
                                                ?.notificationContentSuggestion,
                                        notificationPublicities: currentUserData
                                            ?.notificationPublicities,
                                        linguagem:
                                            currentUserData?.linguagemPreferida,
                                      );

                                      if ((_model
                                              .resultUpdateUser2?.succeeded ??
                                          true)) {
                                        authManager.updateAuthUserData(
                                          authenticationToken:
                                              currentAuthenticationToken,
                                          refreshToken: currentAuthRefreshToken,
                                          tokenExpiration:
                                              currentAuthTokenExpiration,
                                          authUid: currentUserUid,
                                          userData: UserStruct(
                                            uid: currentUserUid,
                                            displayName:
                                                _model.textController1.text,
                                            username:
                                                _model.textController2.text,
                                            email: WfGroup.updateUserCall
                                                .authenticationEmailEmail(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            image: WfGroup.updateUserCall
                                                .userImage(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            countryName: WfGroup.updateUserCall
                                                .countryName(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            countryCode: WfGroup.updateUserCall
                                                .countryCode(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            countryCodial: WfGroup
                                                .updateUserCall
                                                .countryDialCode(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            linguagemPreferida: WfGroup
                                                .updateUserCall
                                                .userLinguagem(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            preferenciaAudio: WfGroup
                                                .updateUserCall
                                                .prefAudio(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            createTime:
                                                currentUserData?.createTime,
                                            notificationEmail: WfGroup
                                                .updateUserCall
                                                .notificationEmail(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            notificationNewContent: WfGroup
                                                .updateUserCall
                                                .notificationNewContent(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            notificationContentSuggestion:
                                                WfGroup.updateUserCall
                                                    .notificationSuggestion(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            notificationPublicities: WfGroup
                                                .updateUserCall
                                                .notificationPublicities(
                                              (_model.resultUpdateUser2
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                          ),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText:
                                                    'Your information has been updated successfully!',
                                                ptText:
                                                    'Suas informações foram atualizadas com sucesso!',
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText:
                                                    'Oops, something happened!',
                                                ptText:
                                                    'Opa, algo de errado aconteceu, tente novamente.',
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      }

                                      context.goNamed(
                                        'Personal_informations',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            enText:
                                                'Oops, something happened, try again.',
                                            ptText:
                                                'Opa, algo de errado aconteceu, tente novamente.',
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  }
                                } else {
                                  context.goNamed(
                                    'Personal_informations',
                                    queryParameters: {
                                      'editar': serializeParam(
                                        true,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              }

                              safeSetState(() {});
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: widget.editar
                                    ? const Color(0xFF3F7652)
                                    : const Color(0xFFEEE7ED),
                                shape: BoxShape.circle,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (!widget.editar)
                                    const Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        FFIcons.kicon,
                                        color: Color(0xFF383438),
                                        size: 24.0,
                                      ),
                                    ),
                                  if (widget.editar)
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.check_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        size: 24.0,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        valueOrDefault<String>(
                          currentUserData?.image,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/science-play-12-min-e5r7cu/assets/ramkasmfk4jb/profile.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const ChangePhotoWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'oxwdeb45' /* Edit photo */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF7A3080),
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3F2F3),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'kmiove0r' /* Name */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF383438),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: TextFormField(
                                    controller: _model.textController1,
                                    focusNode: _model.textFieldFocusNode1,
                                    autofocus: widget.editar,
                                    readOnly: !widget.editar,
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      alignLabelWithHint: false,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: const Color(0xFF383438),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                    ),
                                    textAlign: TextAlign.end,
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEAE9EB),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F2F3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 16.0, 12.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'x5j28530' /* Username */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Flexible(
                              child: FutureBuilder<ApiCallResponse>(
                                future: ObjGroup.getUserNicknameCall.call(
                                  constraints:
                                      '[{\"key\": \"nickname\", \"constraint_type\": \"equals\", \"value\": \"${_model.textController2.text}\"}]',
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 24.0,
                                        height: 24.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final columnGetUserNicknameResponse =
                                      snapshot.data!;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(),
                                        child: TextFormField(
                                          controller: _model.textController2,
                                          focusNode: _model.textFieldFocusNode2,
                                          autofocus: false,
                                          readOnly: !widget.editar,
                                          obscureText: false,
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            alignLabelWithHint: false,
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: const Color(0xFF383438),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.0,
                                          ),
                                          textAlign: TextAlign.end,
                                          validator: _model
                                              .textController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      if (widget.editar &&
                                          (_model.textController2.text !=
                                              currentUserData?.username) &&
                                          (ObjGroup.getUserNicknameCall.count(
                                                columnGetUserNicknameResponse
                                                    .jsonBody,
                                              )! >=
                                              1))
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '4vw7o85a' /* The username is already in use */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: const Color(0xFFDF0000),
                                            fontSize: 14.0,
                                          ),
                                        ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEAE9EB),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F2F3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (widget.editar) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                useSafeArea: true,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const SelectCountryRegionWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '30i3vj7c' /* Country/Region */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF383438),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Flexible(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 16.0),
                                        child: Text(
                                          !widget.editar
                                              ? '${currentUserData?.countryName} (${currentUserData?.countryCodial})'
                                              : (FFAppState()
                                                              .countryName !=
                                                          ''
                                                  ? '${FFAppState().countryName} (${FFAppState().countryDialCode})'
                                                  : '${currentUserData?.countryName} (${currentUserData?.countryCodial})'),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFF383438),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      if (widget.editar)
                                        const Icon(
                                          Icons.chevron_right_sharp,
                                          color: Color(0xFF383438),
                                          size: 24.0,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFEAE9EB),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF3F2F3),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'l4z1s9m1' /* E-mail */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.editar
                                            ? const Color(0xFF9B9A9A)
                                            : const Color(0xFF383438),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      currentUserData?.email,
                                      '-',
                                    ),
                                    textAlign: TextAlign.end,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: widget.editar
                                              ? const Color(0xFF9B9A9A)
                                              : const Color(0xFF383438),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3F2F3),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'cndyo5ac' /* Preferred language */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF383438),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue ??=
                                      currentUserData?.linguagemPreferida,
                                ),
                                options:
                                    List<String>.from(['Português', 'English']),
                                optionLabels: [
                                  FFLocalizations.of(context).getText(
                                    '3ywlq7j7' /* Portuguese */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'm1nawh2p' /* English */,
                                  )
                                ],
                                onChanged: (val) => safeSetState(
                                    () => _model.dropDownValue = val),
                                width: 120.0,
                                textStyle: GoogleFonts.getFont(
                                  'Poppins',
                                  color: const Color(0xFF383438),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                                icon: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 2.0,
                                borderRadius: 0.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                hidesUnderline: true,
                                disabled: !widget.editar,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ].divide(const SizedBox(width: 12.0)),
                          ),
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 1.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEAE9EB),
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF3F2F3),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (widget.editar) {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    useSafeArea: true,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: GestureDetector(
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const AudioPreferencesWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vbvwc430' /* Audio preferences */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                !widget.editar
                                                    ? FFLocalizations.of(
                                                            context)
                                                        .getVariableText(
                                                        enText: currentUserData
                                                                    ?.preferenciaAudio ==
                                                                'Woman'
                                                            ? 'Woman'
                                                            : 'Man',
                                                        ptText: currentUserData
                                                                    ?.preferenciaAudio ==
                                                                'Mulher'
                                                            ? 'Mulher'
                                                            : 'Homem',
                                                      )
                                                    : (FFAppState()
                                                                    .audioPref !=
                                                                ''
                                                        ? FFAppState().audioPref
                                                        : currentUserData
                                                            ?.preferenciaAudio),
                                                '-',
                                              ),
                                              maxLines: 1,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.chevron_right_sharp,
                                          color: Color(0xFF383438),
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
