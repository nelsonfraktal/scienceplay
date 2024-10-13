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
import 'select_time_available_model.dart';
export 'select_time_available_model.dart';

class SelectTimeAvailableWidget extends StatefulWidget {
  const SelectTimeAvailableWidget({super.key});

  @override
  State<SelectTimeAvailableWidget> createState() =>
      _SelectTimeAvailableWidgetState();
}

class _SelectTimeAvailableWidgetState extends State<SelectTimeAvailableWidget> {
  late SelectTimeAvailableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectTimeAvailableModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.tempTime = FFAppState().userDedication;
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
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
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
                          FFAppState().userDedication = _model.tempTime!;
                          safeSetState(() {});
                          unawaited(
                            () async {
                              await WfBerearGroup.updateDedicationCall.call(
                                dedication: FFAppState().userDedication.id.name,
                                token: currentAuthenticationToken,
                              );
                            }(),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                FFLocalizations.of(context).getVariableText(
                                  enText: 'Time available updated.',
                                  ptText: 'Tempo disponível atualizado.',
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
                            '8l0p3q2v' /* Save */,
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            32.0, 0.0, 32.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.tempTime?.id != Dedication.Daily) {
                              _model.tempTime = TimeAvailableStruct(
                                id: Dedication.Daily,
                                name: 'Daily',
                                namePortuguese: 'Diariamente',
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
                                  color: Color(0x0D000000),
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: functions.compareEnumDedicationJson(
                                        Dedication.Daily,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
                                          r'''$.id''',
                                        ))
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.compareEnumDedicationJson(
                                        Dedication.Daily,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
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
                                  if (functions.compareEnumDedicationJson(
                                      Dedication.Daily,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    Icon(
                                      Icons.radio_button_checked,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.compareEnumDedicationJson(
                                      Dedication.Daily,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    const Icon(
                                      Icons.radio_button_off,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ksgdc9jf' /* Daily */,
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
                            32.0, 0.0, 32.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.tempTime?.id !=
                                Dedication.ThreeTimesWeek) {
                              _model.tempTime = TimeAvailableStruct(
                                id: Dedication.ThreeTimesWeek,
                                name: '3 times a week',
                                namePortuguese: '3 vezes por semana',
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
                                  color: Color(0x0D000000),
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: functions.compareEnumDedicationJson(
                                        Dedication.ThreeTimesWeek,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
                                          r'''$.id''',
                                        ))
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.compareEnumDedicationJson(
                                        Dedication.ThreeTimesWeek,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
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
                                  if (functions.compareEnumDedicationJson(
                                      Dedication.ThreeTimesWeek,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    Icon(
                                      Icons.radio_button_checked,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.compareEnumDedicationJson(
                                      Dedication.ThreeTimesWeek,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    const Icon(
                                      Icons.radio_button_off,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'az5361hj' /* 3 times a week */,
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
                            32.0, 0.0, 32.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.tempTime?.id != Dedication.Weekly) {
                              _model.tempTime = TimeAvailableStruct(
                                id: Dedication.Weekly,
                                name: 'Weekly',
                                namePortuguese: 'Semanalmente',
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
                                  color: Color(0x0D000000),
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: functions.compareEnumDedicationJson(
                                        Dedication.Weekly,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
                                          r'''$.id''',
                                        ))
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.compareEnumDedicationJson(
                                        Dedication.Weekly,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
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
                                  if (functions.compareEnumDedicationJson(
                                      Dedication.Weekly,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    Icon(
                                      Icons.radio_button_checked,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.compareEnumDedicationJson(
                                      Dedication.Weekly,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    const Icon(
                                      Icons.radio_button_off,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '7jr5t4cz' /* Weekly */,
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
                            32.0, 0.0, 32.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (_model.tempTime?.id != Dedication.Custom) {
                              _model.tempTime = TimeAvailableStruct(
                                id: Dedication.Custom,
                                name: 'Customize notifications',
                                namePortuguese: 'Personalizar notificações',
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
                                  color: Color(0x0D000000),
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  spreadRadius: 0.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                color: functions.compareEnumDedicationJson(
                                        Dedication.Custom,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
                                          r'''$.id''',
                                        ))
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.compareEnumDedicationJson(
                                        Dedication.Custom,
                                        getJsonField(
                                          _model.tempTime?.toMap(),
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
                                  if (functions.compareEnumDedicationJson(
                                      Dedication.Custom,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    Icon(
                                      Icons.radio_button_checked,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.compareEnumDedicationJson(
                                      Dedication.Custom,
                                      getJsonField(
                                        _model.tempTime?.toMap(),
                                        r'''$.id''',
                                      )))
                                    const Icon(
                                      Icons.radio_button_off,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'sjdcau5r' /* Customize notifications */,
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
      ),
    );
  }
}
