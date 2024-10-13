import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
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
import 'select_areas_interests_model.dart';
export 'select_areas_interests_model.dart';

class SelectAreasInterestsWidget extends StatefulWidget {
  const SelectAreasInterestsWidget({super.key});

  @override
  State<SelectAreasInterestsWidget> createState() =>
      _SelectAreasInterestsWidgetState();
}

class _SelectAreasInterestsWidgetState
    extends State<SelectAreasInterestsWidget> {
  late SelectAreasInterestsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectAreasInterestsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(!(FFAppState().areasOfInterests.isNotEmpty) ||
          functions.listAreaContainsItemWithValue(
              FFAppState().areasOfInterests.toList(), 'Undefined'))) {
        _model.tempAreas =
            FFAppState().areasOfInterests.toList().cast<AreaInterestStruct>();
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

    return FutureBuilder<ApiCallResponse>(
      future: WfGroup.specialtiesCall.call(
        areaUidJson: getJsonField(
          <String?, List<dynamic>?>{
            'area': functions.dataTypeToListOfIds(
                FFAppState().occupationsOrInterests.toList()),
          },
          r'''$.area''',
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30.0,
              height: 30.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final bodySpecialtiesResponse = snapshot.data!;

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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 8.0, 0.0, 8.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().areasOfInterests = _model.tempAreas
                                  .toList()
                                  .cast<AreaInterestStruct>();
                              safeSetState(() {});
                              unawaited(
                                () async {
                                  await WfBerearGroup.updateAreasInterestsCall
                                      .call(
                                    areasList: FFAppState()
                                        .areasOfInterests
                                        .map((e) => e.id)
                                        .toList(),
                                    token: currentAuthenticationToken,
                                  );
                                }(),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText: 'Areas of interest updated.',
                                      ptText: 'Áreas de interesse atualizadas.',
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
                                '0pys5eu3' /* Save */,
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
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '6crlcvrk' /* See all heads of each area */,
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  if (!(WfGroup.specialtiesCall.specialties(
                            bodySpecialtiesResponse.jsonBody,
                          ) !=
                          null &&
                      (WfGroup.specialtiesCall.specialties(
                        bodySpecialtiesResponse.jsonBody,
                      ))!
                          .isNotEmpty))
                    Container(
                      height: 150.0,
                      decoration: const BoxDecoration(),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'fgu01jvy' /* Select occupation or interest ... */,
                        ),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF383438),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  if (WfGroup.specialtiesCall.specialties(
                            bodySpecialtiesResponse.jsonBody,
                          ) !=
                          null &&
                      (WfGroup.specialtiesCall.specialties(
                        bodySpecialtiesResponse.jsonBody,
                      ))!
                          .isNotEmpty)
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.sizeOf(context).height * 0.5,
                        ),
                        decoration: const BoxDecoration(),
                        child: Builder(
                          builder: (context) {
                            final specialty = WfGroup.specialtiesCall
                                    .specialties(
                                      bodySpecialtiesResponse.jsonBody,
                                    )
                                    ?.toList() ??
                                [];

                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(specialty.length,
                                    (specialtyIndex) {
                                  final specialtyItem =
                                      specialty[specialtyIndex];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        32.0, 0.0, 32.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (functions
                                            .listAreaContainsItemWithValue(
                                                _model.tempAreas.toList(),
                                                getJsonField(
                                                  specialtyItem,
                                                  r'''$._id''',
                                                ).toString())) {
                                          _model.removeFromTempAreas(
                                              _model.tempAreas[functions
                                                  .getIndexSpecificItemInArea(
                                                      _model.tempAreas.toList(),
                                                      getJsonField(
                                                        specialtyItem,
                                                        r'''$._id''',
                                                      ).toString())]);
                                          safeSetState(() {});
                                        } else {
                                          _model.addToTempAreas(
                                              AreaInterestStruct(
                                            name: getJsonField(
                                              specialtyItem,
                                              r'''$.name''',
                                            ).toString(),
                                            id: getJsonField(
                                              specialtyItem,
                                              r'''$._id''',
                                            ).toString(),
                                            namePortuguese: getJsonField(
                                              specialtyItem,
                                              r'''$.name_portuguese''',
                                            ).toString(),
                                          ));
                                          safeSetState(() {});
                                        }
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
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
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: functions
                                                    .listAreaContainsItemWithValue(
                                                        _model.tempAreas
                                                            .toList(),
                                                        getJsonField(
                                                          specialtyItem,
                                                          r'''$._id''',
                                                        ).toString())
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : const Color(0x00000000),
                                            width: functions
                                                    .listAreaContainsItemWithValue(
                                                        _model.tempAreas
                                                            .toList(),
                                                        getJsonField(
                                                          specialtyItem,
                                                          r'''$._id''',
                                                        ).toString())
                                                ? 1.0
                                                : 0.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (!functions
                                                  .listAreaContainsItemWithValue(
                                                      _model.tempAreas.toList(),
                                                      getJsonField(
                                                        specialtyItem,
                                                        r'''$._id''',
                                                      ).toString()))
                                                Icon(
                                                  Icons
                                                      .check_box_outline_blank_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                              if (functions
                                                  .listAreaContainsItemWithValue(
                                                      _model.tempAreas.toList(),
                                                      getJsonField(
                                                        specialtyItem,
                                                        r'''$._id''',
                                                      ).toString()))
                                                Icon(
                                                  Icons.check_box,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 24.0,
                                                ),
                                              if (!functions
                                                  .listAreaContainsItemWithValue(
                                                      _model.tempAreas.toList(),
                                                      getJsonField(
                                                        specialtyItem,
                                                        r'''$._id''',
                                                      ).toString()))
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    enText: getJsonField(
                                                      specialtyItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    ptText: getJsonField(
                                                      specialtyItem,
                                                      r'''$.name_portuguese''',
                                                    ).toString(),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              if (functions
                                                  .listAreaContainsItemWithValue(
                                                      _model.tempAreas.toList(),
                                                      getJsonField(
                                                        specialtyItem,
                                                        r'''$._id''',
                                                      ).toString()))
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    enText: getJsonField(
                                                      specialtyItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    ptText: getJsonField(
                                                      specialtyItem,
                                                      r'''$.name_portuguese''',
                                                    ).toString(),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                            ].divide(const SizedBox(width: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).divide(const SizedBox(height: 16.0)),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                ].divide(const SizedBox(height: 16.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
