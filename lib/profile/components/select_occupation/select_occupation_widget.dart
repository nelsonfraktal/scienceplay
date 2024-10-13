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
import 'select_occupation_model.dart';
export 'select_occupation_model.dart';

class SelectOccupationWidget extends StatefulWidget {
  const SelectOccupationWidget({
    super.key,
    required this.idsArea,
  });

  final List<OccupationOrInterestStruct>? idsArea;

  @override
  State<SelectOccupationWidget> createState() => _SelectOccupationWidgetState();
}

class _SelectOccupationWidgetState extends State<SelectOccupationWidget> {
  late SelectOccupationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectOccupationModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(!(FFAppState().occupationsOrInterests.isNotEmpty) ||
          functions.listOccupationContainsItemWithValue(
              FFAppState().occupationsOrInterests.toList(), 'Undefined'))) {
        _model.tempIdsArea =
            widget.idsArea!.toList().cast<OccupationOrInterestStruct>();
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
      future: WfGroup.areasCall.call(),
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
        final bodyAreasResponse = snapshot.data!;

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
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
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
                            FFAppState().occupationsOrInterests = _model
                                .tempIdsArea
                                .toList()
                                .cast<OccupationOrInterestStruct>();
                            safeSetState(() {});
                            unawaited(
                              () async {
                                await WfBerearGroup.updateOccupationCall.call(
                                  occupationsList: FFAppState()
                                      .occupationsOrInterests
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
                                    enText: 'Occupation or interest updated.',
                                    ptText: 'Ocupação ou interesse atualizado.',
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
                              '9wv36wyz' /* Save */,
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
                        'y90w4z83' /* See all heads of each area */,
                      ),
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: FlutterFlowTheme.of(context).primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.5,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Builder(
                      builder: (context) {
                        final area = WfGroup.areasCall
                                .areaJson(
                                  bodyAreasResponse.jsonBody,
                                )
                                ?.toList() ??
                            [];

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(area.length, (areaIndex) {
                              final areaItem = area[areaIndex];
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
                                        .listOccupationContainsItemWithValue(
                                            _model.tempIdsArea.toList(),
                                            getJsonField(
                                              areaItem,
                                              r'''$._id''',
                                            ).toString())) {
                                      _model.removeFromTempIdsArea(
                                          _model.tempIdsArea[functions
                                              .getIndexSpecificItemInOccupation(
                                                  _model.tempIdsArea.toList(),
                                                  getJsonField(
                                                    areaItem,
                                                    r'''$._id''',
                                                  ).toString())]);
                                      safeSetState(() {});
                                    } else {
                                      _model.addToTempIdsArea(
                                          OccupationOrInterestStruct(
                                        name: getJsonField(
                                          areaItem,
                                          r'''$.name''',
                                        ).toString(),
                                        id: getJsonField(
                                          areaItem,
                                          r'''$._id''',
                                        ).toString(),
                                        namePortuguese: getJsonField(
                                          areaItem,
                                          r'''$.name_portuguese''',
                                        ).toString(),
                                      ));
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                                .listOccupationContainsItemWithValue(
                                                    _model.tempIdsArea.toList(),
                                                    getJsonField(
                                                      areaItem,
                                                      r'''$._id''',
                                                    ).toString())
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : const Color(0x00000000),
                                        width: functions
                                                .listOccupationContainsItemWithValue(
                                                    _model.tempIdsArea.toList(),
                                                    getJsonField(
                                                      areaItem,
                                                      r'''$._id''',
                                                    ).toString())
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
                                          if (!functions
                                              .listOccupationContainsItemWithValue(
                                                  _model.tempIdsArea.toList(),
                                                  getJsonField(
                                                    areaItem,
                                                    r'''$._id''',
                                                  ).toString()))
                                            Icon(
                                              Icons
                                                  .check_box_outline_blank_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          if (functions
                                              .listOccupationContainsItemWithValue(
                                                  _model.tempIdsArea.toList(),
                                                  getJsonField(
                                                    areaItem,
                                                    r'''$._id''',
                                                  ).toString()))
                                            Icon(
                                              Icons.check_box,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              size: 24.0,
                                            ),
                                          if (!functions
                                              .listOccupationContainsItemWithValue(
                                                  _model.tempIdsArea.toList(),
                                                  getJsonField(
                                                    areaItem,
                                                    r'''$._id''',
                                                  ).toString()))
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText: getJsonField(
                                                  areaItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                ptText: getJsonField(
                                                  areaItem,
                                                  r'''$.name_portuguese''',
                                                ).toString(),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          if (functions
                                              .listOccupationContainsItemWithValue(
                                                  _model.tempIdsArea.toList(),
                                                  getJsonField(
                                                    areaItem,
                                                    r'''$._id''',
                                                  ).toString()))
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText: getJsonField(
                                                  areaItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                ptText: getJsonField(
                                                  areaItem,
                                                  r'''$.name_portuguese''',
                                                ).toString(),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                        ].divide(const SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                                .divide(const SizedBox(height: 16.0))
                                .addToStart(const SizedBox(height: 32.0))
                                .addToEnd(const SizedBox(height: 32.0)),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
