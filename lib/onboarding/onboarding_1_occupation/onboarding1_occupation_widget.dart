import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'onboarding1_occupation_model.dart';
export 'onboarding1_occupation_model.dart';

class Onboarding1OccupationWidget extends StatefulWidget {
  const Onboarding1OccupationWidget({super.key});

  @override
  State<Onboarding1OccupationWidget> createState() =>
      _Onboarding1OccupationWidgetState();
}

class _Onboarding1OccupationWidgetState
    extends State<Onboarding1OccupationWidget> {
  late Onboarding1OccupationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding1OccupationModel());
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 8.0, 0.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(),
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
                                  color: FlutterFlowTheme.of(context).secondary,
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
                        '3jtvf70p' /* What is your occupation or int... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
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
                          final listViewAreasResponse = snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final areaResult = WfGroup.areasCall
                                      .areaJson(
                                        listViewAreasResponse.jsonBody,
                                      )
                                      ?.toList() ??
                                  [];

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                primary: false,
                                scrollDirection: Axis.vertical,
                                itemCount: areaResult.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 12.0),
                                itemBuilder: (context, areaResultIndex) {
                                  final areaResultItem =
                                      areaResult[areaResultIndex];
                                  return Column(
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
                                                .listOccupationContainsItemWithValue(
                                                    FFAppState()
                                                        .occupationsOrInterests
                                                        .toList(),
                                                    getJsonField(
                                                      areaResultItem,
                                                      r'''$._id''',
                                                    ).toString())) {
                                              FFAppState().removeFromOccupationsOrInterests(
                                                  FFAppState()
                                                          .occupationsOrInterests[
                                                      functions
                                                          .getIndexSpecificItemInOccupation(
                                                              FFAppState()
                                                                  .occupationsOrInterests
                                                                  .toList(),
                                                              getJsonField(
                                                                areaResultItem,
                                                                r'''$._id''',
                                                              ).toString())]);
                                              safeSetState(() {});
                                            } else {
                                              FFAppState()
                                                  .addToOccupationsOrInterests(
                                                      OccupationOrInterestStruct(
                                                name: getJsonField(
                                                  areaResultItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                id: getJsonField(
                                                  areaResultItem,
                                                  r'''$._id''',
                                                ).toString(),
                                                namePortuguese: getJsonField(
                                                  areaResultItem,
                                                  r'''$.name_portuguese''',
                                                ).toString(),
                                              ));
                                              safeSetState(() {});
                                            }
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 80.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              border: Border.all(
                                                color: functions
                                                        .listOccupationContainsItemWithValue(
                                                            FFAppState()
                                                                .occupationsOrInterests
                                                                .toList(),
                                                            getJsonField(
                                                              areaResultItem,
                                                              r'''$._id''',
                                                            ).toString())
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .primary
                                                    : const Color(0x00000000),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (!functions
                                                      .listOccupationContainsItemWithValue(
                                                          FFAppState()
                                                              .occupationsOrInterests
                                                              .toList(),
                                                          getJsonField(
                                                            areaResultItem,
                                                            r'''$._id''',
                                                          ).toString()))
                                                    const Icon(
                                                      Icons
                                                          .check_box_outline_blank,
                                                      color: Color(0xFF9D979E),
                                                      size: 24.0,
                                                    ),
                                                  if (functions
                                                      .listOccupationContainsItemWithValue(
                                                          FFAppState()
                                                              .occupationsOrInterests
                                                              .toList(),
                                                          getJsonField(
                                                            areaResultItem,
                                                            r'''$._id''',
                                                          ).toString()))
                                                    Icon(
                                                      Icons.check_box,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 24.0,
                                                    ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      enText: valueOrDefault<
                                                          String>(
                                                        getJsonField(
                                                          areaResultItem,
                                                          r'''$.name''',
                                                        )?.toString(),
                                                        'empty',
                                                      ),
                                                      ptText: valueOrDefault<
                                                          String>(
                                                        getJsonField(
                                                          areaResultItem,
                                                          r'''$.name_portuguese''',
                                                        )?.toString(),
                                                        'empty',
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
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
                                      ),
                                    ].divide(const SizedBox(height: 12.0)),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: 127.0,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.apiResultUpdateOccupation =
                                      await WfBerearGroup.updateOccupationCall
                                          .call(
                                    occupationsList: FFAppState()
                                        .occupationsOrInterests
                                        .map((e) => e.id)
                                        .toList(),
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultUpdateOccupation
                                          ?.succeeded ??
                                      true)) {
                                    context.pushNamed(
                                      'Onboarding_2_area',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
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
                                  'tcb0ngk8' /* Continue */,
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
                                  elevation: 0.0,
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
                                  height: 55.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(56.0),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'brms4k2u' /* Maybe later */,
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
                              ),
                            ].divide(const SizedBox(height: 16.0)),
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
      ),
    );
  }
}
