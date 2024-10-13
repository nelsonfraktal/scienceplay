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
import 'onboarding4_goals_model.dart';
export 'onboarding4_goals_model.dart';

class Onboarding4GoalsWidget extends StatefulWidget {
  const Onboarding4GoalsWidget({super.key});

  @override
  State<Onboarding4GoalsWidget> createState() => _Onboarding4GoalsWidgetState();
}

class _Onboarding4GoalsWidgetState extends State<Onboarding4GoalsWidget> {
  late Onboarding4GoalsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding4GoalsModel());
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
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
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
                                context.goNamed('Onboarding_3_level');
                              },
                            ),
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
                        'n4s0njww' /* What are your goals when using... */,
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
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 12.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions.listGoalsContainsItemWithValue(
                                    FFAppState().userGoals.toList(),
                                    Goal.UpToDateResearchDiscoveries)) {
                                  FFAppState().removeFromUserGoals(FFAppState()
                                          .userGoals[
                                      functions.getIndexSpecificItemInGoals(
                                          FFAppState().userGoals.toList(),
                                          Goal.UpToDateResearchDiscoveries)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserGoals(GoalsStruct(
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
                                            .listGoalsContainsItemWithValue(
                                                FFAppState().userGoals.toList(),
                                                Goal.UpToDateResearchDiscoveries)
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
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.UpToDateResearchDiscoveries))
                                        Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.UpToDateResearchDiscoveries))
                                        const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'lvccwy32' /* Stay up to date with the lates... */,
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
                                if (functions.listGoalsContainsItemWithValue(
                                    FFAppState().userGoals.toList(),
                                    Goal.PrepareExamsTests)) {
                                  FFAppState().removeFromUserGoals(
                                      FFAppState().userGoals[
                                          functions.getIndexSpecificItemInGoals(
                                              FFAppState().userGoals.toList(),
                                              Goal.PrepareExamsTests)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserGoals(GoalsStruct(
                                    name: 'Prepare for exams or tests',
                                    id: Goal.PrepareExamsTests,
                                    namePortuguese:
                                        'Se preparar para exames ou testes',
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
                                            .listGoalsContainsItemWithValue(
                                                FFAppState().userGoals.toList(),
                                                Goal.PrepareExamsTests)
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
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.PrepareExamsTests))
                                        Icon(
                                          Icons.check_box,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.PrepareExamsTests))
                                        const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'lra9xpeq' /* Prepare for exams or tests */,
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
                                if (functions.listGoalsContainsItemWithValue(
                                    FFAppState().userGoals.toList(),
                                    Goal.Deepen)) {
                                  FFAppState().removeFromUserGoals(
                                      FFAppState().userGoals[
                                          functions.getIndexSpecificItemInGoals(
                                              FFAppState().userGoals.toList(),
                                              Goal.Deepen)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserGoals(GoalsStruct(
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
                                            .listGoalsContainsItemWithValue(
                                                FFAppState().userGoals.toList(),
                                                Goal.Deepen)
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
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.Deepen))
                                        const Icon(
                                          Icons.check_box,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.Deepen))
                                        const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'vfzk3mrj' /* Deepen my knowledge in a speci... */,
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
                                if (functions.listGoalsContainsItemWithValue(
                                    FFAppState().userGoals.toList(),
                                    Goal.LearnConceptsTechniques)) {
                                  FFAppState().removeFromUserGoals(
                                      FFAppState().userGoals[
                                          functions.getIndexSpecificItemInGoals(
                                              FFAppState().userGoals.toList(),
                                              Goal.LearnConceptsTechniques)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserGoals(GoalsStruct(
                                    name: 'Learn new concepts and techniques',
                                    id: Goal.LearnConceptsTechniques,
                                    namePortuguese:
                                        'Aprender novos conceitos e técnicas',
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
                                            .listGoalsContainsItemWithValue(
                                                FFAppState().userGoals.toList(),
                                                Goal.LearnConceptsTechniques)
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
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.LearnConceptsTechniques))
                                        const Icon(
                                          Icons.check_box,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.LearnConceptsTechniques))
                                        const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'bg7lvbho' /* Learn new concepts and techniq... */,
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
                                24.0, 0.0, 24.0, 12.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions.listGoalsContainsItemWithValue(
                                    FFAppState().userGoals.toList(),
                                    Goal.ContentLecturesClasses)) {
                                  FFAppState().removeFromUserGoals(
                                      FFAppState().userGoals[
                                          functions.getIndexSpecificItemInGoals(
                                              FFAppState().userGoals.toList(),
                                              Goal.ContentLecturesClasses)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserGoals(GoalsStruct(
                                    name: 'Content for lectures and classes',
                                    id: Goal.ContentLecturesClasses,
                                    namePortuguese:
                                        'Conteúdo para palestras e aulas',
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
                                            .listGoalsContainsItemWithValue(
                                                FFAppState().userGoals.toList(),
                                                Goal.ContentLecturesClasses)
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
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.ContentLecturesClasses))
                                        const Icon(
                                          Icons.check_box,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.ContentLecturesClasses))
                                        const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            's7wvkgjk' /* Content for lectures and class... */,
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
                                24.0, 0.0, 24.0, 12.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions.listGoalsContainsItemWithValue(
                                    FFAppState().userGoals.toList(),
                                    Goal.Ideas)) {
                                  FFAppState().removeFromUserGoals(
                                      FFAppState().userGoals[
                                          functions.getIndexSpecificItemInGoals(
                                              FFAppState().userGoals.toList(),
                                              Goal.Ideas)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserGoals(GoalsStruct(
                                    name: 'Ideas for Social Media Content',
                                    id: Goal.Ideas,
                                    namePortuguese:
                                        'Ideias para conteúdo de mídia social',
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
                                            .listGoalsContainsItemWithValue(
                                                FFAppState().userGoals.toList(),
                                                Goal.Ideas)
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
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.Ideas))
                                        const Icon(
                                          Icons.check_box,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.Ideas))
                                        const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'q2yatyxt' /* Ideas for Social Media Content */,
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
                                24.0, 0.0, 24.0, 12.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (functions.listGoalsContainsItemWithValue(
                                    FFAppState().userGoals.toList(),
                                    Goal.AcademicResearch)) {
                                  FFAppState().removeFromUserGoals(
                                      FFAppState().userGoals[
                                          functions.getIndexSpecificItemInGoals(
                                              FFAppState().userGoals.toList(),
                                              Goal.AcademicResearch)]);
                                  safeSetState(() {});
                                } else {
                                  FFAppState().addToUserGoals(GoalsStruct(
                                    name: 'Academic Research',
                                    id: Goal.AcademicResearch,
                                    namePortuguese: 'Pesquisa acadêmica',
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
                                            .listGoalsContainsItemWithValue(
                                                FFAppState().userGoals.toList(),
                                                Goal.AcademicResearch)
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
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.AcademicResearch))
                                        const Icon(
                                          Icons.check_box,
                                          color: Color(0xFF3F7652),
                                          size: 24.0,
                                        ),
                                      if (!functions
                                          .listGoalsContainsItemWithValue(
                                              FFAppState().userGoals.toList(),
                                              Goal.AcademicResearch))
                                        const Icon(
                                          Icons.check_box_outline_blank,
                                          color: Color(0xFF9D979E),
                                          size: 24.0,
                                        ),
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'x7gofo74' /* Academic Research */,
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
                        ].divide(const SizedBox(height: 12.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              _model.apiResultUpdateGoals =
                                  await WfBerearGroup.updateGoalsCall.call(
                                goalsList: FFAppState()
                                    .userGoals
                                    .map((e) => e.id)
                                    .toList()
                                    .map((e) => e.name)
                                    .toList(),
                                token: currentAuthenticationToken,
                              );

                              if ((_model.apiResultUpdateGoals?.succeeded ??
                                  true)) {
                                context.pushNamed(
                                  'Onboarding_5_dedication',
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
                                            color: FlutterFlowTheme.of(context)
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
                              'v4rjv1mw' /* Continue */,
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
                                  'kbl3d5xg' /* Maybe later */,
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
                ].divide(const SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
