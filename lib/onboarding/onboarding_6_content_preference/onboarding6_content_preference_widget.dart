import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'onboarding6_content_preference_model.dart';
export 'onboarding6_content_preference_model.dart';

class Onboarding6ContentPreferenceWidget extends StatefulWidget {
  const Onboarding6ContentPreferenceWidget({super.key});

  @override
  State<Onboarding6ContentPreferenceWidget> createState() =>
      _Onboarding6ContentPreferenceWidgetState();
}

class _Onboarding6ContentPreferenceWidgetState
    extends State<Onboarding6ContentPreferenceWidget> {
  late Onboarding6ContentPreferenceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding6ContentPreferenceModel());
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
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              icon: const Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Color(0xFF383438),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.goNamed('Onboarding_5_dedication');
                              },
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 168) /
                                          6,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 168) /
                                          6,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 168) /
                                          6,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 168) /
                                          6,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 168) /
                                          6,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.sizeOf(context).width - 168) /
                                          6,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 4.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: const BoxDecoration(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'w6t1tjom' /* Last but not least, how do you... */,
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
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions
                                    .listPreferencesContainsItemWithValue(
                                        FFAppState()
                                            .userPreferencesContents
                                            .toList(),
                                        Preference.Texts)) {
                                  FFAppState().removeFromUserPreferencesContents(
                                      FFAppState().userPreferencesContents[
                                          functions
                                              .getIndexSpecificItemInPreferences(
                                                  FFAppState()
                                                      .userPreferencesContents
                                                      .toList(),
                                                  Preference.Texts)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserPreferencesContents(
                                      PreferencesStruct(
                                    name: 'Texts',
                                    id: Preference.Texts,
                                    namePortuguese: 'Textos',
                                  ));
                                  safeSetState(() {});
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 25.0,
                                      color: Color(0x0E000000),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: functions
                                            .listPreferencesContainsItemWithValue(
                                                FFAppState()
                                                    .userPreferencesContents
                                                    .toList(),
                                                Preference.Texts)
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.Texts))
                                        Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.Texts))
                                        Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'kgi1awyu' /* Texts */,
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
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions
                                    .listPreferencesContainsItemWithValue(
                                        FFAppState()
                                            .userPreferencesContents
                                            .toList(),
                                        Preference.ShortAudios)) {
                                  FFAppState().removeFromUserPreferencesContents(
                                      FFAppState().userPreferencesContents[
                                          functions
                                              .getIndexSpecificItemInPreferences(
                                                  FFAppState()
                                                      .userPreferencesContents
                                                      .toList(),
                                                  Preference.ShortAudios)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserPreferencesContents(
                                      PreferencesStruct(
                                    name: 'Short audios',
                                    id: Preference.ShortAudios,
                                    namePortuguese: 'Áudios curtos',
                                  ));
                                  safeSetState(() {});
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 25.0,
                                      color: Color(0x0E000000),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: functions
                                            .listPreferencesContainsItemWithValue(
                                                FFAppState()
                                                    .userPreferencesContents
                                                    .toList(),
                                                Preference.ShortAudios)
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.ShortAudios))
                                        Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.ShortAudios))
                                        Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '7wrc7jag' /* Short audios */,
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
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions
                                    .listPreferencesContainsItemWithValue(
                                        FFAppState()
                                            .userPreferencesContents
                                            .toList(),
                                        Preference.LongAudios)) {
                                  FFAppState().removeFromUserPreferencesContents(
                                      FFAppState().userPreferencesContents[
                                          functions
                                              .getIndexSpecificItemInPreferences(
                                                  FFAppState()
                                                      .userPreferencesContents
                                                      .toList(),
                                                  Preference.LongAudios)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserPreferencesContents(
                                      PreferencesStruct(
                                    name: 'Long audios',
                                    id: Preference.LongAudios,
                                    namePortuguese: 'Áudios longos',
                                  ));
                                  safeSetState(() {});
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 25.0,
                                      color: Color(0x0E000000),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: functions
                                            .listPreferencesContainsItemWithValue(
                                                FFAppState()
                                                    .userPreferencesContents
                                                    .toList(),
                                                Preference.LongAudios)
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.LongAudios))
                                        Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.LongAudios))
                                        Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ru7ieupq' /* Long audios */,
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
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions
                                    .listPreferencesContainsItemWithValue(
                                        FFAppState()
                                            .userPreferencesContents
                                            .toList(),
                                        Preference.SmallVideos)) {
                                  FFAppState().removeFromUserPreferencesContents(
                                      FFAppState().userPreferencesContents[
                                          functions
                                              .getIndexSpecificItemInPreferences(
                                                  FFAppState()
                                                      .userPreferencesContents
                                                      .toList(),
                                                  Preference.SmallVideos)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserPreferencesContents(
                                      PreferencesStruct(
                                    name: 'Small videos',
                                    id: Preference.SmallVideos,
                                    namePortuguese: 'Vídeos curtos',
                                  ));
                                  safeSetState(() {});
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 25.0,
                                      color: Color(0x0E000000),
                                      offset: Offset(
                                        0.0,
                                        0.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: functions
                                            .listPreferencesContainsItemWithValue(
                                                FFAppState()
                                                    .userPreferencesContents
                                                    .toList(),
                                                Preference.SmallVideos)
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.SmallVideos))
                                        Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listPreferencesContainsItemWithValue(
                                              FFAppState()
                                                  .userPreferencesContents
                                                  .toList(),
                                              Preference.SmallVideos))
                                        Icon(
                                          Icons.check_box_outline_blank,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '4iwequy1' /* Small videos */,
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
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultCompleteOnboarding =
                                    await WfBerearGroup.onBoardingCompletedCall
                                        .call(
                                  token: currentAuthenticationToken,
                                  areasList: FFAppState()
                                      .occupationsOrInterests
                                      .map((e) => e.id)
                                      .toList(),
                                  specialtiesList: FFAppState()
                                      .areasOfInterests
                                      .map((e) => e.id)
                                      .toList(),
                                  level: FFAppState().userLevel.id.name,
                                  goalsList: FFAppState()
                                      .userGoals
                                      .map((e) => e.id)
                                      .toList()
                                      .map((e) => e.name)
                                      .toList(),
                                  timeDedication:
                                      FFAppState().userDedication.id.name,
                                  preferenceContentsList: FFAppState()
                                      .userPreferencesContents
                                      .map((e) => e.id)
                                      .toList()
                                      .map((e) => e.name)
                                      .toList(),
                                );

                                if ((_model.apiResultCompleteOnboarding
                                        ?.succeeded ??
                                    true)) {
                                  context.goNamed(
                                    'Onboarding_finish',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                }

                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'f9ujvypa' /* Finish */,
                              ),
                              options: FFButtonOptions(
                                width: 382.0,
                                height: 56.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 19.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(56.0),
                              ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 48.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
