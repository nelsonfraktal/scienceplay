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
import 'onboarding5_dedication_model.dart';
export 'onboarding5_dedication_model.dart';

class Onboarding5DedicationWidget extends StatefulWidget {
  const Onboarding5DedicationWidget({super.key});

  @override
  State<Onboarding5DedicationWidget> createState() =>
      _Onboarding5DedicationWidgetState();
}

class _Onboarding5DedicationWidgetState
    extends State<Onboarding5DedicationWidget> {
  late Onboarding5DedicationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding5DedicationModel());
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
                                context.goNamed('Onboarding_4_goals');
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
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF3F7652),
                                    borderRadius: BorderRadius.only(
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
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF3F7652),
                                    borderRadius: BorderRadius.only(
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
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF3F7652),
                                    borderRadius: BorderRadius.only(
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
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF3F7652),
                                    borderRadius: BorderRadius.only(
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
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFD1CDD1),
                                    borderRadius: BorderRadius.only(
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
                          'zqduln0x' /* How much time do you want to d... */,
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
                                FFAppState().userDedication =
                                    TimeAvailableStruct(
                                  id: Dedication.Daily,
                                  name: 'Daily',
                                  namePortuguese: 'Diariamente',
                                );
                                safeSetState(() {});
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
                                    color: functions.compareEnumDedicationJson(
                                            Dedication.Daily,
                                            getJsonField(
                                              FFAppState()
                                                  .userDedication
                                                  .toMap(),
                                              r'''$.id''',
                                            ))
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
                                      if (functions.compareEnumDedicationJson(
                                          Dedication.Daily,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_checked,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions.compareEnumDedicationJson(
                                          Dedication.Daily,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_off,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'an8hcmg1' /* Daily */,
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
                                    ].divide(const SizedBox(width: 12.0)),
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
                                FFAppState().userDedication =
                                    TimeAvailableStruct(
                                  id: Dedication.ThreeTimesWeek,
                                  name: '3 times a week',
                                  namePortuguese: '3 vezes por semana',
                                );
                                safeSetState(() {});
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
                                    color: functions.compareEnumDedicationJson(
                                            Dedication.ThreeTimesWeek,
                                            getJsonField(
                                              FFAppState()
                                                  .userDedication
                                                  .toMap(),
                                              r'''$.id''',
                                            ))
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
                                      if (functions.compareEnumDedicationJson(
                                          Dedication.ThreeTimesWeek,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_checked,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions.compareEnumDedicationJson(
                                          Dedication.ThreeTimesWeek,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_off,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '349g6zuu' /* 3 times a week */,
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
                                    ].divide(const SizedBox(width: 12.0)),
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
                                FFAppState().userDedication =
                                    TimeAvailableStruct(
                                  id: Dedication.Weekly,
                                  name: 'Weekly',
                                  namePortuguese: 'Semanalmente',
                                );
                                safeSetState(() {});
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
                                    color: functions.compareEnumDedicationJson(
                                            Dedication.Weekly,
                                            getJsonField(
                                              FFAppState()
                                                  .userDedication
                                                  .toMap(),
                                              r'''$.id''',
                                            ))
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
                                      if (functions.compareEnumDedicationJson(
                                          Dedication.Weekly,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_checked,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions.compareEnumDedicationJson(
                                          Dedication.Weekly,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_off,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'v0yhuo5e' /* Weekly */,
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
                                    ].divide(const SizedBox(width: 12.0)),
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
                                FFAppState().userDedication =
                                    TimeAvailableStruct(
                                  id: Dedication.Custom,
                                  name: 'Customize notifications',
                                  namePortuguese: 'Personalizar notificações',
                                );
                                safeSetState(() {});
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
                                    color: functions.compareEnumDedicationJson(
                                            Dedication.Custom,
                                            getJsonField(
                                              FFAppState()
                                                  .userDedication
                                                  .toMap(),
                                              r'''$.id''',
                                            ))
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
                                      if (functions.compareEnumDedicationJson(
                                          Dedication.Custom,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_checked,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions.compareEnumDedicationJson(
                                          Dedication.Custom,
                                          getJsonField(
                                            FFAppState().userDedication.toMap(),
                                            r'''$.id''',
                                          )))
                                        const Icon(
                                          Icons.radio_button_off,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'nsithruf' /* Customize notifications */,
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
                                    ].divide(const SizedBox(width: 12.0)),
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
                                _model.apiResultUpdateDedication =
                                    await WfBerearGroup.updateDedicationCall
                                        .call(
                                  dedication:
                                      FFAppState().userDedication.id.name,
                                  token: currentAuthenticationToken,
                                );

                                if ((_model
                                        .apiResultUpdateDedication?.succeeded ??
                                    true)) {
                                  context.pushNamed(
                                    'Onboarding_6_content_preference',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          enText:
                                              'Ops, something is wrong, try again.',
                                          ptText:
                                              'Opa, algo de errado aconteceu, tente novamente.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).error,
                                    ),
                                  );
                                }

                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'mvntrdh8' /* Continue */,
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
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'For_you',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 200),
                                    ),
                                  },
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 56.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'f5jtgbmi' /* Maybe later */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF7A3080),
                                        fontSize: 19.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
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
