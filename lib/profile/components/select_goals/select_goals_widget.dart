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
import 'select_goals_model.dart';
export 'select_goals_model.dart';

class SelectGoalsWidget extends StatefulWidget {
  const SelectGoalsWidget({super.key});

  @override
  State<SelectGoalsWidget> createState() => _SelectGoalsWidgetState();
}

class _SelectGoalsWidgetState extends State<SelectGoalsWidget> {
  late SelectGoalsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectGoalsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(!(FFAppState().userGoals.isNotEmpty) ||
          functions.listGoalsContainsItemWithValue(
              FFAppState().userGoals.toList(), Goal.Undefined))) {
        _model.tempGoals = FFAppState().userGoals.toList().cast<GoalsStruct>();
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
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                        FFAppState().userGoals =
                            _model.tempGoals.toList().cast<GoalsStruct>();
                        safeSetState(() {});
                        unawaited(
                          () async {
                            await WfBerearGroup.updateGoalsCall.call(
                              goalsList: FFAppState()
                                  .userGoals
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
                                enText: 'Goals updated.',
                                ptText: 'Objetivos atualizados.',
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
                          '163k57fg' /* Save */,
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
                            if (functions.listGoalsContainsItemWithValue(
                                _model.tempGoals.toList(),
                                Goal.UpToDateResearchDiscoveries)) {
                              _model.removeFromTempGoals(_model.tempGoals[
                                  functions.getIndexSpecificItemInGoals(
                                      _model.tempGoals.toList(),
                                      Goal.UpToDateResearchDiscoveries)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempGoals(GoalsStruct(
                                name:
                                    'Stay up to date with the latest research and discoveries',
                                id: Goal.UpToDateResearchDiscoveries,
                                namePortuguese:
                                    'Manter-se atualizado com as últimas pesquisas e descobertas',
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
                                color: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.UpToDateResearchDiscoveries)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.UpToDateResearchDiscoveries)
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
                                  if (functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.UpToDateResearchDiscoveries))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.UpToDateResearchDiscoveries))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ndkgzg4j' /* Stay up to date with the lates... */,
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
                            if (functions.listGoalsContainsItemWithValue(
                                _model.tempGoals.toList(),
                                Goal.PrepareExamsTests)) {
                              _model.removeFromTempGoals(_model.tempGoals[
                                  functions.getIndexSpecificItemInGoals(
                                      _model.tempGoals.toList(),
                                      Goal.PrepareExamsTests)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempGoals(GoalsStruct(
                                name: 'Prepare for exams or tests',
                                id: Goal.PrepareExamsTests,
                                namePortuguese:
                                    'Se preparar para exames ou testes',
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
                                color: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.PrepareExamsTests)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.PrepareExamsTests)
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
                                  if (functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.PrepareExamsTests))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.PrepareExamsTests))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'oyp38s7r' /* Prepare for exams or tests */,
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
                            if (functions.listGoalsContainsItemWithValue(
                                _model.tempGoals.toList(), Goal.Deepen)) {
                              _model.removeFromTempGoals(_model.tempGoals[
                                  functions.getIndexSpecificItemInGoals(
                                      _model.tempGoals.toList(), Goal.Deepen)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempGoals(GoalsStruct(
                                name:
                                    'Deepen my knowledge in a specific specialty',
                                id: Goal.Deepen,
                                namePortuguese:
                                    'Aprofundar em conhecimentos em uma especialidade específica',
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
                                color: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(), Goal.Deepen)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(), Goal.Deepen)
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
                                  if (functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(), Goal.Deepen))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(), Goal.Deepen))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'v9nye3t8' /* Deepen my knowledge in a speci... */,
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
                            if (functions.listGoalsContainsItemWithValue(
                                _model.tempGoals.toList(),
                                Goal.LearnConceptsTechniques)) {
                              _model.removeFromTempGoals(_model.tempGoals[
                                  functions.getIndexSpecificItemInGoals(
                                      _model.tempGoals.toList(),
                                      Goal.LearnConceptsTechniques)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempGoals(GoalsStruct(
                                name: 'Learn new concepts and techniques',
                                id: Goal.LearnConceptsTechniques,
                                namePortuguese:
                                    'Aprender novos conceitos e técnicas',
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
                                color: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.LearnConceptsTechniques)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.LearnConceptsTechniques)
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
                                  if (functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.LearnConceptsTechniques))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.LearnConceptsTechniques))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '6mpxclao' /* Learn new concepts and techniq... */,
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
                            if (functions.listGoalsContainsItemWithValue(
                                _model.tempGoals.toList(),
                                Goal.ContentLecturesClasses)) {
                              _model.removeFromTempGoals(_model.tempGoals[
                                  functions.getIndexSpecificItemInGoals(
                                      _model.tempGoals.toList(),
                                      Goal.ContentLecturesClasses)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempGoals(GoalsStruct(
                                name: 'Content for lectures and classes',
                                id: Goal.ContentLecturesClasses,
                                namePortuguese:
                                    'Conteúdo para palestras e aulas',
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
                                color: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.ContentLecturesClasses)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.ContentLecturesClasses)
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
                                  if (functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.ContentLecturesClasses))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.ContentLecturesClasses))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '82n4slw0' /* Content for lectures and class... */,
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
                            if (functions.listGoalsContainsItemWithValue(
                                _model.tempGoals.toList(), Goal.Ideas)) {
                              _model.removeFromTempGoals(_model.tempGoals[
                                  functions.getIndexSpecificItemInGoals(
                                      _model.tempGoals.toList(), Goal.Ideas)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempGoals(GoalsStruct(
                                name: 'Ideas for Social Media Content',
                                id: Goal.Ideas,
                                namePortuguese:
                                    'Ideias para conteúdo de mídia social',
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
                                color: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(), Goal.Ideas)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(), Goal.Ideas)
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
                                  if (functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(), Goal.Ideas))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(), Goal.Ideas))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '4p7gx7cx' /* Ideas for Social Media Content */,
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
                            if (functions.listGoalsContainsItemWithValue(
                                _model.tempGoals.toList(),
                                Goal.AcademicResearch)) {
                              _model.removeFromTempGoals(_model.tempGoals[
                                  functions.getIndexSpecificItemInGoals(
                                      _model.tempGoals.toList(),
                                      Goal.AcademicResearch)]);
                              safeSetState(() {});
                            } else {
                              _model.addToTempGoals(GoalsStruct(
                                name: 'Academic Research',
                                id: Goal.AcademicResearch,
                                namePortuguese: 'Pesquisa acadêmica',
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
                                color: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.AcademicResearch)
                                    ? FlutterFlowTheme.of(context).primary
                                    : const Color(0x00000000),
                                width: functions.listGoalsContainsItemWithValue(
                                        _model.tempGoals.toList(),
                                        Goal.AcademicResearch)
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
                                  if (functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.AcademicResearch))
                                    Icon(
                                      Icons.check_box,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24.0,
                                    ),
                                  if (!functions.listGoalsContainsItemWithValue(
                                      _model.tempGoals.toList(),
                                      Goal.AcademicResearch))
                                    const Icon(
                                      Icons.check_box_outline_blank_outlined,
                                      color: Color(0xFF9D979E),
                                      size: 24.0,
                                    ),
                                  Flexible(
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'wds4j965' /* Academic Research */,
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
