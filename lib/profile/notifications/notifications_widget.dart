import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_model.dart';
export 'notifications_model.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  late NotificationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsModel());

    _model.switchValue1 = currentUserData!.notificationEmail;
    _model.switchValue2 = currentUserData!.notificationNewContent;
    _model.switchValue3 = currentUserData!.notificationContentSuggestion;
    _model.switchValue4 = currentUserData!.notificationPublicities;
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                          child: wrapWithModel(
                            model: _model.componentVoltarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const ComponentVoltarWidget(),
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'ym33fazy' /* Content preferences */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F2F3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'qqiucqrz' /* E-mail notifications */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue1!,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.switchValue1 = newValue);
                              if (newValue) {
                                _model.apiResultEmail =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion: currentUserData
                                      ?.notificationContentSuggestion,
                                  notificationPublicities:
                                      currentUserData?.notificationPublicities,
                                );

                                if ((_model.apiResultEmail?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultEmail?.jsonBody ?? ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultEmail?.jsonBody ?? ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultEmail?.jsonBody ?? ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultEmail?.jsonBody ?? ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              } else {
                                _model.apiResultEmail2 =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion: currentUserData
                                      ?.notificationContentSuggestion,
                                  notificationPublicities:
                                      currentUserData?.notificationPublicities,
                                );

                                if ((_model.apiResultEmail2?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultEmail2?.jsonBody ??
                                            ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultEmail2?.jsonBody ??
                                            ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultEmail2?.jsonBody ??
                                            ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultEmail2?.jsonBody ??
                                            ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              }
                            },
                            activeColor: const Color(0xFF325E42),
                            activeTrackColor: const Color(0xFF325E42),
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor: const Color(0xFF808080),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F2F3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'mxky395v' /* New contents  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue2!,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.switchValue2 = newValue);
                              if (newValue) {
                                _model.apiResultNewcontent =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion: currentUserData
                                      ?.notificationContentSuggestion,
                                  notificationPublicities:
                                      currentUserData?.notificationPublicities,
                                );

                                if ((_model.apiResultNewcontent?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultNewcontent?.jsonBody ??
                                            ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultNewcontent?.jsonBody ??
                                            ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultNewcontent?.jsonBody ??
                                            ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultNewcontent?.jsonBody ??
                                            ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              } else {
                                _model.apiResultNewcontent2 =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion: currentUserData
                                      ?.notificationContentSuggestion,
                                  notificationPublicities:
                                      currentUserData?.notificationPublicities,
                                );

                                if ((_model.apiResultNewcontent2?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultNewcontent2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultNewcontent2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultNewcontent2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultNewcontent2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              }
                            },
                            activeColor: const Color(0xFF325E42),
                            activeTrackColor: const Color(0xFF325E42),
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor: const Color(0xFF808080),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F2F3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'hlnj6a3p' /* Content suggestions  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue3!,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.switchValue3 = newValue);
                              if (newValue) {
                                _model.apiResultSuggestion =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion:
                                      _model.switchValue3,
                                  notificationPublicities:
                                      currentUserData?.notificationPublicities,
                                );

                                if ((_model.apiResultSuggestion?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              } else {
                                _model.apiResultSuggestion2 =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion:
                                      _model.switchValue3,
                                  notificationPublicities:
                                      currentUserData?.notificationPublicities,
                                );

                                if ((_model.apiResultSuggestion2?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultSuggestion2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultSuggestion2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultSuggestion2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultSuggestion2
                                                ?.jsonBody ??
                                            ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              }
                            },
                            activeColor: const Color(0xFF325E42),
                            activeTrackColor: const Color(0xFF325E42),
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor: const Color(0xFF808080),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F2F3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '2cl9ppza' /* Publicities and promotions */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Switch.adaptive(
                            value: _model.switchValue4!,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.switchValue4 = newValue);
                              if (newValue) {
                                _model.apiResultPublicities =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion:
                                      _model.switchValue3,
                                  notificationPublicities: _model.switchValue4,
                                );

                                if ((_model.apiResultPublicities?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              } else {
                                _model.apiResultPublicities2 =
                                    await WfGroup.updateUserCall.call(
                                  notificationEmail: _model.switchValue1,
                                  email: currentUserData?.email,
                                  name: currentUserData?.displayName,
                                  nickname: currentUserData?.username,
                                  profile: currentUserData?.image,
                                  countryName: currentUserData?.countryName,
                                  countryDialCode:
                                      currentUserData?.countryCodial,
                                  countryCode: currentUserData?.countryCode,
                                  audioPref: currentUserData?.preferenciaAudio,
                                  notificationNewContent: _model.switchValue2,
                                  notificationContentSuggestion:
                                      _model.switchValue3,
                                  notificationPublicities: _model.switchValue4,
                                );

                                if ((_model.apiResultPublicities2?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken:
                                        currentAuthenticationToken,
                                    refreshToken: currentAuthRefreshToken,
                                    tokenExpiration: currentAuthTokenExpiration,
                                    authUid: currentUserUid,
                                    userData: UserStruct(
                                      notificationEmail: WfGroup.updateUserCall
                                          .notificationEmail(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      uid: currentUserData?.uid,
                                      displayName: currentUserData?.displayName,
                                      username: currentUserData?.username,
                                      email: currentUserData?.email,
                                      image: currentUserData?.image,
                                      countryName: currentUserData?.countryName,
                                      countryCode: currentUserData?.countryCode,
                                      countryCodial:
                                          currentUserData?.countryCodial,
                                      preferenciaAudio:
                                          currentUserData?.preferenciaAudio,
                                      linguagemPreferida:
                                          currentUserData?.linguagemPreferida,
                                      notificationNewContent: WfGroup
                                          .updateUserCall
                                          .notificationNewContent(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      notificationContentSuggestion: WfGroup
                                          .updateUserCall
                                          .notificationSuggestion(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                      notificationPublicities: WfGroup
                                          .updateUserCall
                                          .notificationPublicities(
                                        (_model.apiResultSuggestion?.jsonBody ??
                                            ''),
                                      ),
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              }
                            },
                            activeColor: const Color(0xFF325E42),
                            activeTrackColor: const Color(0xFF325E42),
                            inactiveTrackColor:
                                FlutterFlowTheme.of(context).alternate,
                            inactiveThumbColor: const Color(0xFF808080),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
