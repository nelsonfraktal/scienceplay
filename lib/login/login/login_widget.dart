import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(() => safeSetState(() {}));
    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: wrapWithModel(
                    model: _model.componentVoltarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const ComponentVoltarWidget(),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'hk36gr3n' /* Welcome back */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF383438),
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 10.0,
                                      color: Color(0x19000000),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: (_model.textFieldFocusNode1
                                                ?.hasFocus ??
                                            false)
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width:
                                        (_model.textFieldFocusNode1?.hasFocus ??
                                                false)
                                            ? 0.5
                                            : 0.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController1,
                                    focusNode: _model.textFieldFocusNode1,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF9D979E),
                                            letterSpacing: 0.0,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'x58nk8d1' /* E-mail */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF9D979E),
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 4.0, 16.0, 4.0),
                                      prefixIcon: const Icon(
                                        Icons.mail_outline,
                                        color: Color(0xFF847B85),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 10.0,
                                      color: Color(0x19000000),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: (_model.textFieldFocusNode2
                                                ?.hasFocus ??
                                            false)
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width:
                                        (_model.textFieldFocusNode2?.hasFocus ??
                                                false)
                                            ? 0.5
                                            : 0.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController2,
                                    focusNode: _model.textFieldFocusNode2,
                                    autofocus: true,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF9D979E),
                                            letterSpacing: 0.0,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'y0r7wbsk' /* Password */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF9D979E),
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 4.0, 16.0, 4.0),
                                      prefixIcon: const Icon(
                                        Icons.lock_outline,
                                        color: Color(0xFF847B85),
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () => safeSetState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: const Color(0xFF9D979E),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'Resetting-password',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 700),
                                  ),
                                },
                              );
                            },
                            child: Text(
                              FFLocalizations.of(context).getText(
                                't8h25zgt' /* Forgot your password? */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              var shouldSetState = false;
                              _model.apiResultLogin =
                                  await AuthGroup.loginCall.call(
                                email: _model.textController1.text,
                                password: _model.textController2.text,
                              );

                              shouldSetState = true;
                              if ((_model.apiResultLogin?.succeeded ?? true)) {
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signIn(
                                  authenticationToken:
                                      AuthGroup.loginCall.token(
                                    (_model.apiResultLogin?.jsonBody ?? ''),
                                  ),
                                  refreshToken: AuthGroup.loginCall.token(
                                    (_model.apiResultLogin?.jsonBody ?? ''),
                                  ),
                                  authUid: AuthGroup.loginCall.tokenUserID(
                                    (_model.apiResultLogin?.jsonBody ?? ''),
                                  ),
                                  userData: UserStruct(
                                    uid: AuthGroup.loginCall.userUID(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    displayName: AuthGroup.loginCall.fullName(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    image: functions.containsHttps(
                                            AuthGroup.loginCall.userImage(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    )!)
                                        ? AuthGroup.loginCall.userImage(
                                            (_model.apiResultLogin?.jsonBody ??
                                                ''),
                                          )
                                        : 'https:${AuthGroup.loginCall.userImage(
                                            (_model.apiResultLogin?.jsonBody ??
                                                ''),
                                          )}',
                                    email: AuthGroup.loginCall
                                        .userAuthenticationEmailEmail(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    username: AuthGroup.loginCall.nickname(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    countryName:
                                        AuthGroup.loginCall.countryName(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    countryCode:
                                        AuthGroup.loginCall.countryCode(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    countryCodial:
                                        AuthGroup.loginCall.countryDialCode(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    preferenciaAudio:
                                        AuthGroup.loginCall.preferenciaAudio(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    linguagemPreferida:
                                        AuthGroup.loginCall.userLinguagem(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    notificationEmail:
                                        AuthGroup.loginCall.notificationEmail(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    notificationNewContent: AuthGroup.loginCall
                                        .notificationNewContent(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    notificationContentSuggestion: AuthGroup
                                        .loginCall
                                        .notificationSuggestion(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    notificationPublicities: AuthGroup.loginCall
                                        .notificationPublicities(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                    isFree: AuthGroup.loginCall.isFree(
                                      (_model.apiResultLogin?.jsonBody ?? ''),
                                    ),
                                  ),
                                );
                                // Pode acontecer de por algum motivo essa preferência esteja em portugues e o app dele em ingles; daí vai bugar. Então aqui a gente padroniza
                                setAppLanguage(
                                    context,
                                    (AuthGroup.loginCall.userLinguagem(
                                                  (_model.apiResultLogin
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'Português') ||
                                            (AuthGroup.loginCall.userLinguagem(
                                                  (_model.apiResultLogin
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                'Portuguese')
                                        ? 'pt'
                                        : 'en');
                                FFAppState().clearQueryUserStreakCache();
                                _model.apiResultGetPreferences =
                                    await WfBerearGroup
                                        .getContentPreferencesCall
                                        .call(
                                  token: currentAuthenticationToken,
                                );

                                shouldSetState = true;
                                if ((_model
                                        .apiResultGetPreferences?.succeeded ??
                                    true)) {
                                  FFAppState().occupationsOrInterests = [];
                                  FFAppState().userGoals = [];
                                  FFAppState().userPreferencesContents = [];
                                  FFAppState().areasOfInterests = [];
                                  FFAppState().userLevel = LevelStruct
                                      .fromSerializableMap(jsonDecode(
                                          '{\"id\":\"Undefined\",\"display\":\"Undefined\"}'));
                                  FFAppState().userDedication =
                                      TimeAvailableStruct.fromSerializableMap(
                                          jsonDecode('{\"id\":\"Undefined\"}'));
                                  FFAppState().occupationsOrInterests =
                                      WfBerearGroup.getContentPreferencesCall
                                          .occupations(
                                            (_model.apiResultGetPreferences
                                                    ?.jsonBody ??
                                                ''),
                                          )!
                                          .toList()
                                          .cast<OccupationOrInterestStruct>();
                                  FFAppState().userGoals =
                                      WfBerearGroup.getContentPreferencesCall
                                          .goals(
                                            (_model.apiResultGetPreferences
                                                    ?.jsonBody ??
                                                ''),
                                          )!
                                          .toList()
                                          .cast<GoalsStruct>();
                                  FFAppState().userPreferencesContents =
                                      WfBerearGroup.getContentPreferencesCall
                                          .preferedtype(
                                            (_model.apiResultGetPreferences
                                                    ?.jsonBody ??
                                                ''),
                                          )!
                                          .toList()
                                          .cast<PreferencesStruct>();
                                  FFAppState().areasOfInterests =
                                      WfBerearGroup.getContentPreferencesCall
                                          .areas(
                                            (_model.apiResultGetPreferences
                                                    ?.jsonBody ??
                                                ''),
                                          )!
                                          .toList()
                                          .cast<AreaInterestStruct>();
                                  FFAppState().userLevel = LevelStruct(
                                    id: functions.getLevelFromName(getJsonField(
                                      WfBerearGroup.getContentPreferencesCall
                                          .level(
                                        (_model.apiResultGetPreferences
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      r'''$.id''',
                                    ).toString()),
                                    name: getJsonField(
                                      WfBerearGroup.getContentPreferencesCall
                                          .level(
                                        (_model.apiResultGetPreferences
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      r'''$.name''',
                                    ).toString(),
                                    namePortuguese: getJsonField(
                                      WfBerearGroup.getContentPreferencesCall
                                          .level(
                                        (_model.apiResultGetPreferences
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      r'''$.name_portuguese''',
                                    ).toString(),
                                  );
                                  FFAppState().userDedication =
                                      TimeAvailableStruct(
                                    id: functions
                                        .getDedicationFromName(getJsonField(
                                      WfBerearGroup.getContentPreferencesCall
                                          .dedication(
                                        (_model.apiResultGetPreferences
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      r'''$.id''',
                                    ).toString()),
                                    name: getJsonField(
                                      WfBerearGroup.getContentPreferencesCall
                                          .dedication(
                                        (_model.apiResultGetPreferences
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      r'''$.name''',
                                    ).toString(),
                                    namePortuguese: getJsonField(
                                      WfBerearGroup.getContentPreferencesCall
                                          .dedication(
                                        (_model.apiResultGetPreferences
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      r'''$.name_portuguese''',
                                    ).toString(),
                                  );
                                } else {
                                  context.goNamedAuth(
                                      'For_you', context.mounted);

                                  if (shouldSetState) safeSetState(() {});
                                  return;
                                }

                                context.goNamedAuth('For_you', context.mounted);

                                if (shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText:
                                            'Invalid email or password. Please try again.',
                                        ptText:
                                            'E-mail ou senha inválidos. Tente novamente.',
                                      ),
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
                                  ),
                                );
                                if (shouldSetState) safeSetState(() {});
                                return;
                              }

                              if (shouldSetState) safeSetState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'whj23zu7' /* Log in */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 55.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(56.0),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'yv2rmmb7' /* Don’t have an account? */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF514C52),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    'Signup',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 700),
                                      ),
                                    },
                                  );
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'y9tsbkqu' /* Sign up */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 4.0)),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 120.0,
                                height: 1.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF9D979E),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '7xec0e64' /* or */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: const Color(0xFF9D979E),
                                  fontSize: 19.0,
                                ),
                              ),
                              Container(
                                width: 120.0,
                                height: 1.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF9D979E),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 16.0)),
                          ),
                          Container(
                            width: 100.0,
                            height: 56.0,
                            constraints: const BoxConstraints(
                              minWidth: double.infinity,
                              minHeight: 56.0,
                              maxWidth: double.infinity,
                              maxHeight: 56.0,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(56.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 0.5,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 14.0, 24.0, 14.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(24.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Vector.svg',
                                      width: 24.0,
                                      height: 24.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  AutoSizeText(
                                    FFLocalizations.of(context).getText(
                                      'u21xwuzt' /* Continue with Google */,
                                    ),
                                    maxLines: 1,
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19.0,
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 56.0,
                            constraints: const BoxConstraints(
                              minWidth: double.infinity,
                              minHeight: 56.0,
                              maxWidth: double.infinity,
                              maxHeight: 56.0,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(56.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 0.5,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 14.0, 24.0, 14.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(24.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Platform=Facebook,_Color=Original.svg',
                                      width: 24.0,
                                      height: 24.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  AutoSizeText(
                                    FFLocalizations.of(context).getText(
                                      'h7q0ga7d' /* Continue with Facebook */,
                                    ),
                                    maxLines: 1,
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19.0,
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: 100.0,
                              height: 56.0,
                              constraints: const BoxConstraints(
                                minWidth: double.infinity,
                                minHeight: 56.0,
                                maxWidth: double.infinity,
                                maxHeight: 56.0,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFAFAFA),
                                borderRadius: BorderRadius.circular(56.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 14.0, 24.0, 14.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Platform=Apple,_Color=Original.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    AutoSizeText(
                                      FFLocalizations.of(context).getText(
                                        'iu4me5lk' /* Continue with Apple */,
                                      ),
                                      maxLines: 1,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                  ].divide(const SizedBox(height: 48.0)),
                ),
              ].divide(const SizedBox(height: 34.0)),
            ),
          ),
        ),
      ),
    );
  }
}
