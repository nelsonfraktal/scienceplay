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
import 'select_preference_content_model.dart';
export 'select_preference_content_model.dart';

class SelectPreferenceContentWidget extends StatefulWidget {
  const SelectPreferenceContentWidget({super.key});

  @override
  State<SelectPreferenceContentWidget> createState() =>
      _SelectPreferenceContentWidgetState();
}

class _SelectPreferenceContentWidgetState
    extends State<SelectPreferenceContentWidget> {
  late SelectPreferenceContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectPreferenceContentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(!(FFAppState().userPreferencesContents.isNotEmpty) ||
          functions.listPreferencesContainsItemWithValue(
              FFAppState().userPreferencesContents.toList(),
              Preference.Undefined))) {
        _model.tempPreferences = FFAppState()
            .userPreferencesContents
            .toList()
            .cast<PreferencesStruct>();
        safeSetState(() {});
      }
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
        width: MediaQuery.sizeOf(context).width * 1.0,
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
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                        FFAppState().userPreferencesContents = _model
                            .tempPreferences
                            .toList()
                            .cast<PreferencesStruct>();
                        safeSetState(() {});
                        unawaited(
                          () async {
                            await WfBerearGroup.updatePreferedContentCall.call(
                              preferencesList: FFAppState()
                                  .userPreferencesContents
                                  .map((e) => e.id)
                                  .toList()
                                  .map((e) => e.name)
                                  .toList(),
                              token: currentAuthenticationToken,
                            );
                          }(),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Prefered type of content updated.',
                                ptText:
                                    'Tipo de conteúdo preferido atualizado.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: const Duration(milliseconds: 3000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                        Navigator.pop(context);
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'u5a0cney' /* Save */,
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
              Expanded(
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.sizeOf(context).height * 0.5,
                  ),
                  decoration: const BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (functions.listPreferencesContainsItemWithValue(
                                _model.tempPreferences.toList(),
                                Preference.Texts)) {
                              _model.removeFromTempPreferences(_model
                                      .tempPreferences[
                                  functions.getIndexSpecificItemInPreferences(
                                      _model.tempPreferences.toList(),
                                      Preference.Texts)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempPreferences(PreferencesStruct(
                                name: 'Texts',
                                id: Preference.Texts,
                                namePortuguese: 'Textos',
                              ));
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
                                color: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.Texts)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.Texts)
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
                                  if (functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.Texts))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.Texts))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ga21gz8u' /* Texts */,
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
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (functions.listPreferencesContainsItemWithValue(
                                _model.tempPreferences.toList(),
                                Preference.ShortAudios)) {
                              _model.removeFromTempPreferences(_model
                                      .tempPreferences[
                                  functions.getIndexSpecificItemInPreferences(
                                      _model.tempPreferences.toList(),
                                      Preference.ShortAudios)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempPreferences(PreferencesStruct(
                                name: 'Short audios',
                                id: Preference.ShortAudios,
                                namePortuguese: 'Áudios curtos',
                              ));
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
                                color: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.ShortAudios)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.ShortAudios)
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
                                  if (functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.ShortAudios))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.ShortAudios))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '4fb5ql05' /* Short audios */,
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
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (functions.listPreferencesContainsItemWithValue(
                                _model.tempPreferences.toList(),
                                Preference.LongAudios)) {
                              _model.removeFromTempPreferences(_model
                                      .tempPreferences[
                                  functions.getIndexSpecificItemInPreferences(
                                      _model.tempPreferences.toList(),
                                      Preference.LongAudios)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempPreferences(PreferencesStruct(
                                name: 'Long audios',
                                id: Preference.LongAudios,
                                namePortuguese: 'Áudios longos',
                              ));
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
                                color: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.LongAudios)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.LongAudios)
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
                                  if (functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.LongAudios))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.LongAudios))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'qdvrzcie' /* Long audios */,
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
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (functions.listPreferencesContainsItemWithValue(
                                _model.tempPreferences.toList(),
                                Preference.SmallVideos)) {
                              _model.removeFromTempPreferences(_model
                                      .tempPreferences[
                                  functions.getIndexSpecificItemInPreferences(
                                      _model.tempPreferences.toList(),
                                      Preference.SmallVideos)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempPreferences(PreferencesStruct(
                                name: 'Small videos',
                                id: Preference.SmallVideos,
                                namePortuguese: 'Vídeos curtos',
                              ));
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
                                color: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.SmallVideos)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions
                                        .listPreferencesContainsItemWithValue(
                                            _model.tempPreferences.toList(),
                                            Preference.SmallVideos)
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
                                  if (functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.SmallVideos))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions
                                      .listPreferencesContainsItemWithValue(
                                          _model.tempPreferences.toList(),
                                          Preference.SmallVideos))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'shvc52z6' /* Small videos */,
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
                      ].divide(const SizedBox(height: 16.0)),
                    ),
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
