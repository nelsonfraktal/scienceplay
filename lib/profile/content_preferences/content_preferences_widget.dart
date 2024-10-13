import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/components/select_areas_interests/select_areas_interests_widget.dart';
import '/profile/components/select_goals/select_goals_widget.dart';
import '/profile/components/select_level/select_level_widget.dart';
import '/profile/components/select_occupation/select_occupation_widget.dart';
import '/profile/components/select_preference_content/select_preference_content_widget.dart';
import '/profile/components/select_time_available/select_time_available_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'content_preferences_model.dart';
export 'content_preferences_model.dart';

class ContentPreferencesWidget extends StatefulWidget {
  const ContentPreferencesWidget({super.key});

  @override
  State<ContentPreferencesWidget> createState() =>
      _ContentPreferencesWidgetState();
}

class _ContentPreferencesWidgetState extends State<ContentPreferencesWidget> {
  late ContentPreferencesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentPreferencesModel());
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
                            'y0um1c8k' /* Content preferences */,
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
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 12.0, 24.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'cp4b3fhd' /* Occupation or interest */,
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
                            ),
                            Expanded(
                              child: InkWell(
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
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: SelectOccupationWidget(
                                              idsArea: FFAppState()
                                                  .occupationsOrInterests,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (!(FFAppState()
                                        .occupationsOrInterests
                                        .isNotEmpty))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 24.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'eoelrz8x' /* Undefined */,
                                            ),
                                            textAlign: TextAlign.end,
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
                                      ),
                                    if (FFAppState()
                                        .occupationsOrInterests
                                        .isNotEmpty)
                                      Flexible(
                                        child: Builder(
                                          builder: (context) {
                                            final occupation = FFAppState()
                                                .occupationsOrInterests
                                                .toList();

                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: List.generate(
                                                    occupation.length,
                                                    (occupationIndex) {
                                                  final occupationItem =
                                                      occupation[
                                                          occupationIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 24.0,
                                                                0.0, 24.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        enText:
                                                            occupationItem.name,
                                                        ptText: occupationItem
                                                            .namePortuguese,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFF383438),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  );
                                                }).divide(const SizedBox(width: 4.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
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
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 12.0, 24.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'idyax0ju' /* Areas of interest */,
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
                            ),
                            Flexible(
                              child: InkWell(
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
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const SelectAreasInterestsWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (!(FFAppState()
                                        .areasOfInterests
                                        .isNotEmpty))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 24.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '7dk7qz37' /* Undefined */,
                                            ),
                                            textAlign: TextAlign.end,
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
                                      ),
                                    if (FFAppState()
                                        .areasOfInterests
                                        .isNotEmpty)
                                      Flexible(
                                        child: Builder(
                                          builder: (context) {
                                            final areaInterest = FFAppState()
                                                .areasOfInterests
                                                .toList();

                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: List.generate(
                                                    areaInterest.length,
                                                    (areaInterestIndex) {
                                                  final areaInterestItem =
                                                      areaInterest[
                                                          areaInterestIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 24.0,
                                                                0.0, 24.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        enText: areaInterestItem
                                                            .name,
                                                        ptText: areaInterestItem
                                                            .namePortuguese,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFF383438),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  );
                                                }).divide(const SizedBox(width: 8.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
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
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 12.0, 24.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '6obj5ymz' /* Level of knowledge */,
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
                            ),
                            Flexible(
                              child: InkWell(
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
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const SelectLevelWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Flexible(
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 24.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  enText: FFAppState()
                                                      .userLevel
                                                      .name,
                                                  ptText: FFAppState()
                                                      .userLevel
                                                      .namePortuguese,
                                                ),
                                                textAlign: TextAlign.end,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
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
                            Flexible(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 24.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'pvyyadln' /* Goals */,
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
                            ),
                            Flexible(
                              flex: 1,
                              child: InkWell(
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
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const SelectGoalsWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (!(FFAppState().userGoals.isNotEmpty))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 24.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '61q0p9ep' /* Undefined */,
                                            ),
                                            textAlign: TextAlign.end,
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
                                      ),
                                    if (FFAppState().userGoals.isNotEmpty)
                                      Flexible(
                                        child: Builder(
                                          builder: (context) {
                                            final goal =
                                                FFAppState().userGoals.toList();

                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: List.generate(
                                                    goal.length, (goalIndex) {
                                                  final goalItem =
                                                      goal[goalIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 24.0,
                                                                0.0, 24.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        enText: goalItem.name,
                                                        ptText: goalItem
                                                            .namePortuguese,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFF383438),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  );
                                                }).divide(const SizedBox(width: 8.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
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
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 12.0, 24.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '9wr103oh' /* Time available */,
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
                          ),
                          Flexible(
                            child: InkWell(
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
                                        onTap: () =>
                                            FocusScope.of(context).unfocus(),
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: const SelectTimeAvailableWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 24.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText: FFAppState()
                                                    .userDedication
                                                    .name,
                                                ptText: FFAppState()
                                                    .userDedication
                                                    .namePortuguese,
                                              ),
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: const BoxDecoration(),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 12.0, 24.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'a75l7skz' /* Prefered type of content */,
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
                            ),
                            Flexible(
                              child: InkWell(
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
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                const SelectPreferenceContentWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    if (!(FFAppState()
                                        .userPreferencesContents
                                        .isNotEmpty))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 24.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'g1vq0vtq' /* Undefined */,
                                            ),
                                            textAlign: TextAlign.end,
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
                                      ),
                                    if (FFAppState()
                                        .userPreferencesContents
                                        .isNotEmpty)
                                      Flexible(
                                        child: Builder(
                                          builder: (context) {
                                            final preferedContent = FFAppState()
                                                .userPreferencesContents
                                                .toList();

                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: List.generate(
                                                    preferedContent.length,
                                                    (preferedContentIndex) {
                                                  final preferedContentItem =
                                                      preferedContent[
                                                          preferedContentIndex];
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 24.0,
                                                                0.0, 24.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        enText:
                                                            preferedContentItem
                                                                .name,
                                                        ptText:
                                                            preferedContentItem
                                                                .namePortuguese,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFF383438),
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  );
                                                }).divide(const SizedBox(width: 8.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_arrow_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 24.0, 24.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'Are you sure?',
                                      ptText: 'Você tem certeza?',
                                    )),
                                    content: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText:
                                          'Make sure before to reset all preferencies.',
                                      ptText:
                                          'Tem certeza que deseja redefinir todas suas preferências?',
                                    )),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text(FFLocalizations.of(context)
                                            .getVariableText(
                                          enText: 'Cancel',
                                          ptText: 'Cancelar',
                                        )),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text(FFLocalizations.of(context)
                                            .getVariableText(
                                          enText: 'Reset',
                                          ptText: 'Sim, redefinir',
                                        )),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ) ??
                            false;
                        if (confirmDialogResponse) {
                          FFAppState().occupationsOrInterests = [];
                          FFAppState().areasOfInterests = [];
                          FFAppState().userLevel =
                              LevelStruct.fromSerializableMap(jsonDecode(
                                  '{\"id\":\"Undefined\",\"display\":\"Undefined\"}'));
                          FFAppState().userGoals = [];
                          FFAppState().userDedication =
                              TimeAvailableStruct.fromSerializableMap(
                                  jsonDecode('{\"id\":\"Undefined\"}'));
                          FFAppState().userPreferencesContents = [];
                          safeSetState(() {});
                          unawaited(
                            () async {
                              await WfBerearGroup.resetAllPreferenciesCall.call(
                                token: currentAuthenticationToken,
                              );
                            }(),
                          );
                        }
                      },
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'aeqfrif1' /* Reset all preferences */,
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
