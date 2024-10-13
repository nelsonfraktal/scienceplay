import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'onboarding2_area_model.dart';
export 'onboarding2_area_model.dart';

class Onboarding2AreaWidget extends StatefulWidget {
  const Onboarding2AreaWidget({super.key});

  @override
  State<Onboarding2AreaWidget> createState() => _Onboarding2AreaWidgetState();
}

class _Onboarding2AreaWidgetState extends State<Onboarding2AreaWidget> {
  late Onboarding2AreaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding2AreaModel());

    _model.textFieldOtherTextController ??= TextEditingController();
    _model.textFieldOtherFocusNode ??= FocusNode();
    _model.textFieldOtherFocusNode!.addListener(() => safeSetState(() {}));
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
                mainAxisSize: MainAxisSize.min,
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
                              context.goNamed('Onboarding_1_occupation');
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'zgnu7wv6' /* What is your area of interest? */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'nali7ddc' /* Tell us what you’re interested... */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF514C52),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: const BoxDecoration(),
                              child: FutureBuilder<ApiCallResponse>(
                                future: WfGroup.specialtiesCall.call(
                                  areaUidJson: getJsonField(
                                    <String?, List<dynamic>?>{
                                      'area': functions.dataTypeToListOfIds(
                                          FFAppState()
                                              .occupationsOrInterests
                                              .toList()),
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final wrapSpecialtiesResponse =
                                      snapshot.data!;

                                  return Builder(
                                    builder: (context) {
                                      final specialtiesResp =
                                          WfGroup.specialtiesCall
                                                  .specialties(
                                                    wrapSpecialtiesResponse
                                                        .jsonBody,
                                                  )
                                                  ?.toList() ??
                                              [];

                                      return Wrap(
                                        spacing: 8.0,
                                        runSpacing: 8.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: List.generate(
                                            specialtiesResp.length,
                                            (specialtiesRespIndex) {
                                          final specialtiesRespItem =
                                              specialtiesResp[
                                                  specialtiesRespIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (functions
                                                  .listAreaContainsItemWithValue(
                                                      FFAppState()
                                                          .areasOfInterests
                                                          .toList(),
                                                      getJsonField(
                                                        specialtiesRespItem,
                                                        r'''$._id''',
                                                      ).toString())) {
                                                FFAppState().removeFromAreasOfInterests(
                                                    FFAppState()
                                                            .areasOfInterests[
                                                        functions
                                                            .getIndexSpecificItemInArea(
                                                                FFAppState()
                                                                    .areasOfInterests
                                                                    .toList(),
                                                                getJsonField(
                                                                  specialtiesRespItem,
                                                                  r'''$._id''',
                                                                ).toString())]);
                                                safeSetState(() {});
                                              } else {
                                                FFAppState()
                                                    .addToAreasOfInterests(
                                                        AreaInterestStruct(
                                                  name: getJsonField(
                                                    specialtiesRespItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  id: getJsonField(
                                                    specialtiesRespItem,
                                                    r'''$._id''',
                                                  ).toString(),
                                                  namePortuguese: getJsonField(
                                                    specialtiesRespItem,
                                                    r'''$.name_portuguese''',
                                                  ).toString(),
                                                ));
                                                safeSetState(() {});
                                              }
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: functions
                                                        .listAreaContainsItemWithValue(
                                                            FFAppState()
                                                                .areasOfInterests
                                                                .toList(),
                                                            getJsonField(
                                                              specialtiesRespItem,
                                                              r'''$._id''',
                                                            ).toString())
                                                    ? FlutterFlowTheme.of(
                                                            context)
                                                        .purpleAlternate
                                                    : FlutterFlowTheme.of(
                                                            context)
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
                                                    BorderRadius.circular(24.0),
                                                border: Border.all(
                                                  color: functions
                                                          .listAreaContainsItemWithValue(
                                                              FFAppState()
                                                                  .areasOfInterests
                                                                  .toList(),
                                                              getJsonField(
                                                                specialtiesRespItem,
                                                                r'''$._id''',
                                                              ).toString())
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .purpleAlternate
                                                      : const Color(0xFFDEDBDE),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 10.0, 20.0, 10.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                        enText: getJsonField(
                                                          specialtiesRespItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        ptText: getJsonField(
                                                          specialtiesRespItem,
                                                          r'''$.name_portuguese''',
                                                        ).toString(),
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: functions.listAreaContainsItemWithValue(
                                                                        FFAppState().areasOfInterests.toList(),
                                                                        getJsonField(
                                                                          specialtiesRespItem,
                                                                          r'''$._id''',
                                                                        ).toString())
                                                                    ? Colors.white
                                                                    : const Color(0xFF6A646B),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                    if (functions
                                                        .listAreaContainsItemWithValue(
                                                            FFAppState()
                                                                .areasOfInterests
                                                                .toList(),
                                                            getJsonField(
                                                              specialtiesRespItem,
                                                              r'''$._id''',
                                                            ).toString()))
                                                      Icon(
                                                        Icons.close,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 16.0,
                                                      ),
                                                  ].divide(
                                                      const SizedBox(width: 8.0)),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 8.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.showOther = !_model.showOther;
                                safeSetState(() {});
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _model.showOther
                                      ? const Color(0xFFA669A9)
                                      : const Color(0x00000000),
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
                                  borderRadius: BorderRadius.circular(24.0),
                                  border: Border.all(
                                    color: _model.showOther
                                        ? const Color(0xFFA669A9)
                                        : const Color(0xFFDEDBDE),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 20.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'gsrj1bo2' /* Other */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: _model.showOther
                                                  ? Colors.white
                                                  : const Color(0xFF6A646B),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      if (_model.showOther)
                                        Icon(
                                          Icons.close,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 16.0,
                                        ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (_model.showOther)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 16.0, 24.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 56.0,
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
                                    color: (_model.textFieldOtherFocusNode
                                                ?.hasFocus ??
                                            false)
                                        ? FlutterFlowTheme.of(context).primary
                                        : const Color(0x00000000),
                                    width: (_model.textFieldOtherFocusNode
                                                ?.hasFocus ??
                                            false)
                                        ? 0.5
                                        : 0.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'kma7qr9b' /* Other: */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model
                                              .textFieldOtherTextController,
                                          focusNode:
                                              _model.textFieldOtherFocusNode,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFF6A646B),
                                                letterSpacing: 0.0,
                                              ),
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .textFieldOtherTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: !(FFAppState()
                                      .areasOfInterests
                                      .isNotEmpty)
                                  ? null
                                  : () async {
                                      _model.apiResultUpdateAreas =
                                          await WfBerearGroup
                                              .updateAreasInterestsCall
                                              .call(
                                        areasList: FFAppState()
                                            .areasOfInterests
                                            .map((e) => e.id)
                                            .toList(),
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model.apiResultUpdateAreas
                                              ?.succeeded ??
                                          true)) {
                                        context.pushNamed(
                                          'Onboarding_3_level',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 300),
                                            ),
                                          },
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText:
                                                    'Ops, something is wrong, try again.',
                                                ptText:
                                                    'Opa, algo de errado aconteceu, tente novamente.',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .error,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                              text: FFLocalizations.of(context).getText(
                                '3e1bwsli' /* Continue */,
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
                                disabledColor: const Color(0xFFB7B2B8),
                                disabledTextColor: const Color(0xFFEAE9EB),
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
                                    'uhmjx7ov' /* Maybe later */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
