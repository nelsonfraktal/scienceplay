import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_level_model.dart';
export 'select_level_model.dart';

class SelectLevelWidget extends StatefulWidget {
  const SelectLevelWidget({super.key});

  @override
  State<SelectLevelWidget> createState() => _SelectLevelWidgetState();
}

class _SelectLevelWidgetState extends State<SelectLevelWidget> {
  late SelectLevelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectLevelModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.tempLevel = FFAppState().userLevel;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          maxHeight: 744.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x00000040),
              offset: Offset(
                0.0,
                0.0,
              ),
            )
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  wrapWithModel(
                    model: _model.componentVoltarBaixoModel,
                    updateCallback: () => safeSetState(() {}),
                    child: ComponentVoltarBaixoWidget(
                      customAction: () async {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 8.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().userLevel = _model.tempLevel!;
                        safeSetState(() {});
                        unawaited(
                          () async {
                            await WfBerearGroup.updateLevelCall.call(
                              level: FFAppState().userLevel.id.name,
                              token: currentAuthenticationToken,
                            );
                          }(),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Level of knowledge updated.',
                                ptText: 'Nível de conhecimento atualizado.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'p80czf08' /* Save */,
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 16.0)),
              ),
            ),
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).height * 0.5,
                ),
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tempLevel?.id != Level.Student) {
                            _model.tempLevel = LevelStruct(
                              id: Level.Student,
                              name: 'Student',
                              namePortuguese: 'Estudante',
                            );
                            safeSetState(() {});
                          }
                        },
                        child: Container(
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
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: functions.compareEnumLevelJson(
                                      Level.Student,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0x00000000),
                              width: functions.compareEnumLevelJson(
                                      Level.Student,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? 1.0
                                  : 0.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (functions.compareEnumLevelJson(
                                    Level.Student,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  Icon(
                                    Icons.radio_button_checked,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                if (!functions.compareEnumLevelJson(
                                    Level.Student,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  const Icon(
                                    Icons.radio_button_off,
                                    color: Color(0xFF9D979E),
                                    size: 24.0,
                                  ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'imnfvo05' /* Student */,
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tempLevel?.id != Level.Graduate) {
                            _model.tempLevel = LevelStruct(
                              id: Level.Graduate,
                              name: 'Graduate',
                              namePortuguese: 'Graduação',
                            );
                            safeSetState(() {});
                          }
                        },
                        child: Container(
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
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: functions.compareEnumLevelJson(
                                      Level.Graduate,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0x00000000),
                              width: functions.compareEnumLevelJson(
                                      Level.Graduate,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? 1.0
                                  : 0.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (functions.compareEnumLevelJson(
                                    Level.Graduate,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  Icon(
                                    Icons.radio_button_checked,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                if (!functions.compareEnumLevelJson(
                                    Level.Graduate,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  const Icon(
                                    Icons.radio_button_off,
                                    color: Color(0xFF9D979E),
                                    size: 24.0,
                                  ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '8uprne8r' /* Graduate */,
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tempLevel?.id != Level.Postgraduate) {
                            _model.tempLevel = LevelStruct(
                              id: Level.Postgraduate,
                              name: 'Postgraduate',
                              namePortuguese: 'Pós-graduação',
                            );
                            safeSetState(() {});
                          }
                        },
                        child: Container(
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
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: functions.compareEnumLevelJson(
                                      Level.Postgraduate,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0x00000000),
                              width: functions.compareEnumLevelJson(
                                      Level.Postgraduate,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? 1.0
                                  : 0.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (functions.compareEnumLevelJson(
                                    Level.Postgraduate,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  Icon(
                                    Icons.radio_button_checked,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                if (!functions.compareEnumLevelJson(
                                    Level.Postgraduate,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  const Icon(
                                    Icons.radio_button_off,
                                    color: Color(0xFF9D979E),
                                    size: 24.0,
                                  ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '9q54pqus' /* Postgraduate */,
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tempLevel?.id != Level.MastersDegree) {
                            _model.tempLevel = LevelStruct(
                              id: Level.MastersDegree,
                              name: 'Master\'s Degree',
                              namePortuguese: 'Mestrado',
                            );
                            safeSetState(() {});
                          }
                        },
                        child: Container(
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
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: functions.compareEnumLevelJson(
                                      Level.MastersDegree,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0x00000000),
                              width: functions.compareEnumLevelJson(
                                      Level.MastersDegree,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? 1.0
                                  : 0.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (functions.compareEnumLevelJson(
                                    Level.MastersDegree,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  Icon(
                                    Icons.radio_button_checked,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                if (!functions.compareEnumLevelJson(
                                    Level.MastersDegree,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  const Icon(
                                    Icons.radio_button_off,
                                    color: Color(0xFF9D979E),
                                    size: 24.0,
                                  ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'q46ydu2c' /* Master's Degree */,
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.tempLevel?.id != Level.DoctoralDegree) {
                            _model.tempLevel = LevelStruct(
                              id: Level.DoctoralDegree,
                              name: 'Doctoral Degree',
                              namePortuguese: 'Doutorado',
                            );
                            safeSetState(() {});
                          }
                        },
                        child: Container(
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
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: functions.compareEnumLevelJson(
                                      Level.DoctoralDegree,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? FlutterFlowTheme.of(context).primary
                                  : const Color(0x00000000),
                              width: functions.compareEnumLevelJson(
                                      Level.DoctoralDegree,
                                      getJsonField(
                                        _model.tempLevel?.toMap(),
                                        r'''$.id''',
                                      ))
                                  ? 1.0
                                  : 0.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (functions.compareEnumLevelJson(
                                    Level.DoctoralDegree,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  Icon(
                                    Icons.radio_button_checked,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                if (!functions.compareEnumLevelJson(
                                    Level.DoctoralDegree,
                                    getJsonField(
                                      _model.tempLevel?.toMap(),
                                      r'''$.id''',
                                    )))
                                  const Icon(
                                    Icons.radio_button_off,
                                    color: Color(0xFF9D979E),
                                    size: 24.0,
                                  ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'yl5kdaxk' /* Doctoral Degree */,
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
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
