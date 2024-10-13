import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'for_you_model.dart';
export 'for_you_model.dart';

class ForYouWidget extends StatefulWidget {
  const ForYouWidget({super.key});

  @override
  State<ForYouWidget> createState() => _ForYouWidgetState();
}

class _ForYouWidgetState extends State<ForYouWidget> {
  late ForYouModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForYouModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Function() navigate = () {};
      _model.apiResultsda = await WfBerearGroup.validTokenCall.call(
        token: currentAuthenticationToken,
      );

      if (!(_model.apiResultsda?.succeeded ?? true)) {
        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        navigate = () => context.goNamedAuth('Welcome', context.mounted);
      }
      _model.hoursLeftToEndDay =
          '${functions.timeLeftToEndDay(currentUserData?.linguagemPreferida)}${FFLocalizations.of(context).getVariableText(
        enText: ' left',
        ptText: 'restante(s)',
      )}';
      safeSetState(() {});

      navigate();
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Logo.png',
                          width: 130.0,
                          height: 35.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            wrapWithModel(
                              model: _model.componentMoedasDoUsuarioModel,
                              updateCallback: () => safeSetState(() {}),
                              child: const ComponentMoedasDoUsuarioWidget(),
                            ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Profile');
                            },
                            child: Container(
                              width: 48.0,
                              height: 48.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                valueOrDefault<String>(
                                  currentUserData?.image,
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/science-play-12-min-e5r7cu/assets/ramkasmfk4jb/profile.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                    ],
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).error,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 12.0, 24.0, 12.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '42m6w692' /* Parece que você está sem inter... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: FFAppState()
                        .queryGetBackWhereYouStopped(
                      requestFn: () =>
                          WfBerearGroup.getBackWhereYouStoppedCall.call(
                        language: currentUserData?.linguagemPreferida,
                        token: currentAuthenticationToken,
                      ),
                    )
                        .then((result) {
                      _model.apiRequestCompleted3 = true;
                      return result;
                    }),
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
                      final bodyGetBackWhereYouStoppedResponse = snapshot.data!;

                      return Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            FFAppState().clearQueryUserStreakCache();
                            safeSetState(() {
                              FFAppState().clearQueryUserStreakCache();
                              _model.apiRequestCompleted4 = false;
                            });
                            FFAppState().clearQueryGetContentJustForYouCache();
                            safeSetState(() {
                              FFAppState()
                                  .clearQueryGetContentJustForYouCache();
                              _model.apiRequestCompleted2 = false;
                            });
                            FFAppState().clearQueryDailyQuestCache();
                            safeSetState(() {
                              FFAppState().clearQueryDailyQuestCache();
                              _model.apiRequestCompleted1 = false;
                            });
                            FFAppState()
                                .clearQueryGetBackWhereYouStoppedCache();
                            safeSetState(() {
                              FFAppState()
                                  .clearQueryGetBackWhereYouStoppedCache();
                              _model.apiRequestCompleted3 = false;
                            });
                            await _model.waitForApiRequestCompleted3();
                          },
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 32.0, 24.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '0reelmla' /* For me */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontSize: 32.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            SizedBox(
                                              width: 50.0,
                                              child: Divider(
                                                height: 4.0,
                                                thickness: 3.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 20.0, 24.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bwxi1zel' /* Achievements */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontSize: 19.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'My_achievements');
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3ej8pp1k' /* See all */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: FFAppState()
                                                    .queryUserStreak(
                                                  requestFn: () => WfBerearGroup
                                                      .getUserStreakResumeCall
                                                      .call(
                                                    token:
                                                        currentAuthenticationToken,
                                                  ),
                                                )
                                                    .then((result) {
                                                  _model.apiRequestCompleted4 =
                                                      true;
                                                  return result;
                                                }),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 30.0,
                                                        height: 30.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final containerStreakGetUserStreakResumeResponse =
                                                      snapshot.data!;

                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        'My_achievements',
                                                        queryParameters: {
                                                          'tab': serializeParam(
                                                            2,
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 25.0,
                                                            color: Color(
                                                                0x0C000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    20.0,
                                                                    16.0,
                                                                    20.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                if (WfBerearGroup
                                                                        .getUserStreakResumeCall
                                                                        .currentstreak(
                                                                      containerStreakGetUserStreakResumeResponse
                                                                          .jsonBody,
                                                                    ) !=
                                                                    null)
                                                                  Text(
                                                                    '${WfBerearGroup.getUserStreakResumeCall.currentstreak(
                                                                          containerStreakGetUserStreakResumeResponse
                                                                              .jsonBody,
                                                                        )?.toString()}${WfBerearGroup.getUserStreakResumeCall.currentstreak(
                                                                          containerStreakGetUserStreakResumeResponse
                                                                              .jsonBody,
                                                                        ) == 1 ? FFLocalizations.of(context).getVariableText(
                                                                        enText:
                                                                            ' day streak!',
                                                                        ptText:
                                                                            ' dia de estudo!',
                                                                      ) : FFLocalizations.of(context).getVariableText(
                                                                        enText:
                                                                            ' day streak!',
                                                                        ptText:
                                                                            ' dias de estudo!',
                                                                      )}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                if (WfBerearGroup
                                                                        .getUserStreakResumeCall
                                                                        .currentstreak(
                                                                      containerStreakGetUserStreakResumeResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    null)
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '2pkdlk9m' /* - day streak! */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'wckxw4l4' /* Track the consecutive days 
yo... */
                                                                    ,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: const Color(
                                                                            0xFF9D979E),
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                            if (WfBerearGroup
                                                                    .getUserStreakResumeCall
                                                                    .today(
                                                                  containerStreakGetUserStreakResumeResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null)
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        functions.getFirstLetterDayOfWeek(
                                                                            2,
                                                                            currentUserData!.linguagemPreferida),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: const Color(0xFF9D979E),
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                      if (WfBerearGroup
                                                                              .getUserStreakResumeCall
                                                                              .twoDayAgo(
                                                                            containerStreakGetUserStreakResumeResponse.jsonBody,
                                                                          ) ??
                                                                          true)
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .solidCheckCircle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      if (!WfBerearGroup
                                                                          .getUserStreakResumeCall
                                                                          .twoDayAgo(
                                                                        containerStreakGetUserStreakResumeResponse
                                                                            .jsonBody,
                                                                      )!)
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .solidTimesCircle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        functions.getFirstLetterDayOfWeek(
                                                                            1,
                                                                            currentUserData!.linguagemPreferida),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: const Color(0xFF9D979E),
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                      if (!WfBerearGroup
                                                                          .getUserStreakResumeCall
                                                                          .yesterday(
                                                                        containerStreakGetUserStreakResumeResponse
                                                                            .jsonBody,
                                                                      )!)
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .solidTimesCircle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      if (WfBerearGroup
                                                                              .getUserStreakResumeCall
                                                                              .yesterday(
                                                                            containerStreakGetUserStreakResumeResponse.jsonBody,
                                                                          ) ??
                                                                          true)
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .solidCheckCircle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        functions.getFirstLetterDayOfWeek(
                                                                            null,
                                                                            currentUserData!.linguagemPreferida),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: const Color(0xFF9D979E),
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                      if (!WfBerearGroup
                                                                          .getUserStreakResumeCall
                                                                          .today(
                                                                        containerStreakGetUserStreakResumeResponse
                                                                            .jsonBody,
                                                                      )!)
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .solidTimesCircle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      if (WfBerearGroup
                                                                              .getUserStreakResumeCall
                                                                              .today(
                                                                            containerStreakGetUserStreakResumeResponse.jsonBody,
                                                                          ) ??
                                                                          true)
                                                                        FaIcon(
                                                                          FontAwesomeIcons
                                                                              .solidCheckCircle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        6.0)),
                                                              ),
                                                            if (WfBerearGroup
                                                                    .getUserStreakResumeCall
                                                                    .today(
                                                                  containerStreakGetUserStreakResumeResponse
                                                                      .jsonBody,
                                                                ) ==
                                                                null)
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    8.0,
                                                                buttonSize:
                                                                    40.0,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .redoAlt,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 16.0,
                                                                ),
                                                                showLoadingIndicator:
                                                                    true,
                                                                onPressed:
                                                                    () async {
                                                                  FFAppState()
                                                                      .clearQueryUserStreakCache();
                                                                  safeSetState(
                                                                      () {
                                                                    FFAppState()
                                                                        .clearQueryUserStreakCache();
                                                                    _model.apiRequestCompleted4 =
                                                                        false;
                                                                  });
                                                                  await _model
                                                                      .waitForApiRequestCompleted4();
                                                                },
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: FFAppState()
                                            .queryDailyQuest(
                                          requestFn: () => WfBerearGroup
                                              .getDailyQuestCall
                                              .call(
                                            token: currentAuthenticationToken,
                                          ),
                                        )
                                            .then((result) {
                                          _model.apiRequestCompleted1 = true;
                                          return result;
                                        }),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 30.0,
                                                height: 30.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final containerDailyQuestsGetDailyQuestResponse =
                                              snapshot.data!;

                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context
                                                  .pushNamed('My_achievements');
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                gradient: const LinearGradient(
                                                  colors: [
                                                    Color(0xFFA669A9),
                                                    Color(0xFF7A3080)
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.0, -1.0),
                                                  end: AlignmentDirectional(
                                                      0, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 24.0, 20.0, 24.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Container(
                                                              height: 20.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xFFECD4E8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        functions
                                                                            .timeLeftToEndDay(currentUserData?.linguagemPreferida),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            1,
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              10.0,
                                                                        ),
                                                                      ),
                                                                      const Align(
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .clock,
                                                                          color:
                                                                              Color(0xFF7A3080),
                                                                          size:
                                                                              10.0,
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const FaIcon(
                                                            FontAwesomeIcons
                                                                .angleRight,
                                                            color: Colors.white,
                                                            size: 16.0,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'jiw5degc' /* Daily Quests */,
                                                            ),
                                                            style: const TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 19.0,
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'vi61m17w' /* Earn XP by completing the ques... */,
                                                            ),
                                                            style: const TextStyle(
                                                              color: Color(
                                                                  0xFFEEE7ED),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 4.0)),
                                                      ),
                                                    ),
                                                    if (WfBerearGroup
                                                            .getDailyQuestCall
                                                            .listen(
                                                          containerDailyQuestsGetDailyQuestResponse
                                                              .jsonBody,
                                                        ) !=
                                                        null)
                                                      Container(
                                                        width: double.infinity,
                                                        height: 69.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      12.0,
                                                                      12.0,
                                                                      12.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'wfw9w2vf' /* Listen two audiobooks */,
                                                                    ),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: const Color(
                                                                          0xFF383438),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'lg1f09cz' /* 40 XP */,
                                                                    ),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: const Color(
                                                                          0xFF9D979E),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 16.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFFEAE9EB),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16.0),
                                                                  ),
                                                                  child:
                                                                      LinearPercentIndicator(
                                                                    percent: (WfBerearGroup
                                                                            .getDailyQuestCall
                                                                            .listen(
                                                                          containerDailyQuestsGetDailyQuestResponse
                                                                              .jsonBody,
                                                                        )!) /
                                                                        2,
                                                                    lineHeight:
                                                                        16.0,
                                                                    animation:
                                                                        true,
                                                                    animateFromLastPercent:
                                                                        true,
                                                                    progressColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                    backgroundColor:
                                                                        const Color(
                                                                            0xFFEAE9EB),
                                                                    center:
                                                                        Text(
                                                                      '${WfBerearGroup.getDailyQuestCall.listen(
                                                                            containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                          )?.toString()}/2',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: WfBerearGroup.getDailyQuestCall.listen(
                                                                                  containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                                )! >=
                                                                                2
                                                                            ? FlutterFlowTheme.of(context).primaryBackground
                                                                            : const Color(0xFF9D979E),
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 8.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    if (WfBerearGroup
                                                            .getDailyQuestCall
                                                            .listen(
                                                          containerDailyQuestsGetDailyQuestResponse
                                                              .jsonBody,
                                                        ) !=
                                                        null)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 69.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        12.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'esa0wm0j' /* Spend 15 minutes learning */,
                                                                      ),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF383438),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'o3ceoqnh' /* 100 XP */,
                                                                      ),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF9D979E),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        16.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFFEAE9EB),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                    ),
                                                                    child:
                                                                        LinearPercentIndicator(
                                                                      percent: (WfBerearGroup
                                                                              .getDailyQuestCall
                                                                              .time(
                                                                            containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                          )!) /
                                                                          15,
                                                                      lineHeight:
                                                                          16.0,
                                                                      animation:
                                                                          true,
                                                                      animateFromLastPercent:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                      backgroundColor:
                                                                          const Color(
                                                                              0xFFEAE9EB),
                                                                      center:
                                                                          Text(
                                                                        '${WfBerearGroup.getDailyQuestCall.time(
                                                                              containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                            )?.toString()}/15',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color: WfBerearGroup.getDailyQuestCall.time(
                                                                                    containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                                  )! >=
                                                                                  8
                                                                              ? FlutterFlowTheme.of(context).primaryBackground
                                                                              : const Color(0xFF9D979E),
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              10.0,
                                                                        ),
                                                                      ),
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (getJsonField(
                                                          WfBerearGroup
                                                              .getDailyQuestCall
                                                              .contentQuest(
                                                            containerDailyQuestsGetDailyQuestResponse
                                                                .jsonBody,
                                                          ),
                                                          r'''$.id''',
                                                        ) !=
                                                        null)
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'Inside_content_quest_book',
                                                              queryParameters: {
                                                                'book':
                                                                    serializeParam(
                                                                  WfBerearGroup
                                                                      .getDailyQuestCall
                                                                      .contentQuest(
                                                                    containerDailyQuestsGetDailyQuestResponse
                                                                        .jsonBody,
                                                                  ),
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                                'idContentQuestBook':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    WfBerearGroup
                                                                        .getDailyQuestCall
                                                                        .contentQuest(
                                                                      containerDailyQuestsGetDailyQuestResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    r'''$.id_content_quest_book''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      25.0,
                                                                  color: Color(
                                                                      0x0D000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    0.0,
                                                                  ),
                                                                  spreadRadius:
                                                                      0.0,
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              border:
                                                                  Border.all(
                                                                color: const Color(
                                                                    0xFFFFB45E),
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          12.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              20.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFFFB45E),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '4a870q98' /* Content Quest */,
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                  maxLines: 1,
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Poppins',
                                                                                    color: Colors.white,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                                ),
                                                                                const Align(
                                                                                  alignment: AlignmentDirectional(1.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.star_rate_rounded,
                                                                                    color: Colors.white,
                                                                                    size: 12.0,
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      const FaIcon(
                                                                        FontAwesomeIcons
                                                                            .angleRight,
                                                                        color: Color(
                                                                            0xFF383438),
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    '${getJsonField(
                                                                      WfBerearGroup
                                                                          .getDailyQuestCall
                                                                          .contentQuest(
                                                                        containerDailyQuestsGetDailyQuestResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      r'''$.days_challenge''',
                                                                    ).toString()}${FFLocalizations.of(context).getVariableText(
                                                                      enText:
                                                                          ' days challenge',
                                                                      ptText:
                                                                          ' dias de desafio',
                                                                    )}',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: const Color(
                                                                          0xFF847B85),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          10.0,
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          getJsonField(
                                                                            WfBerearGroup.getDailyQuestCall.contentQuest(
                                                                              containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                            ),
                                                                            r'''$.image''',
                                                                          ).toString(),
                                                                          width:
                                                                              60.0,
                                                                          height:
                                                                              77.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Text(
                                                                              FFLocalizations.of(context).getVariableText(
                                                                                enText: getJsonField(
                                                                                  WfBerearGroup.getDailyQuestCall.contentQuest(
                                                                                    containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                                  ),
                                                                                  r'''$.title_en''',
                                                                                ).toString(),
                                                                                ptText: getJsonField(
                                                                                  WfBerearGroup.getDailyQuestCall.contentQuest(
                                                                                    containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                                  ),
                                                                                  r'''$.title_pt''',
                                                                                ).toString(),
                                                                              ),
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: const Color(0xFF383438),
                                                                                fontWeight: FontWeight.bold,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              getJsonField(
                                                                                WfBerearGroup.getDailyQuestCall.contentQuest(
                                                                                  containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                                ),
                                                                                r'''$.author''',
                                                                              ).toString(),
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontWeight: FontWeight.w600,
                                                                                fontSize: 12.0,
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 4.0)),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        '${FFLocalizations.of(context).getVariableText(
                                                                          enText:
                                                                              'Day ',
                                                                          ptText:
                                                                              'Dia ',
                                                                        )}${getJsonField(
                                                                          WfBerearGroup
                                                                              .getDailyQuestCall
                                                                              .contentQuest(
                                                                            containerDailyQuestsGetDailyQuestResponse.jsonBody,
                                                                          ),
                                                                          r'''$.current_day''',
                                                                        ).toString()}',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFF383438),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                      ),
                                                                      if ((String
                                                                          var1) {
                                                                        return var1 ==
                                                                                'Checked' ||
                                                                            var1 ==
                                                                                'Feito';
                                                                      }(getJsonField(
                                                                        WfBerearGroup
                                                                            .getDailyQuestCall
                                                                            .contentQuest(
                                                                          containerDailyQuestsGetDailyQuestResponse
                                                                              .jsonBody,
                                                                        ),
                                                                        r'''$.status_daily''',
                                                                      ).toString()))
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFE3F4E2),
                                                                            borderRadius:
                                                                                BorderRadius.circular(56.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                4.0,
                                                                                8.0,
                                                                                4.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Text(
                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                    enText: 'Checked',
                                                                                    ptText: 'Feito',
                                                                                  ),
                                                                                  maxLines: 1,
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Poppins',
                                                                                    color: const Color(0xFF325E42),
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 10.0,
                                                                                  ),
                                                                                ),
                                                                                const FaIcon(
                                                                                  FontAwesomeIcons.solidCheckCircle,
                                                                                  color: Color(0xFF325E42),
                                                                                  size: 12.0,
                                                                                ),
                                                                              ].divide(const SizedBox(width: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if ((String
                                                                          var1) {
                                                                        return var1 ==
                                                                                'Pending' ||
                                                                            var1 ==
                                                                                'Pendente';
                                                                      }(getJsonField(
                                                                        WfBerearGroup
                                                                            .getDailyQuestCall
                                                                            .contentQuest(
                                                                          containerDailyQuestsGetDailyQuestResponse
                                                                              .jsonBody,
                                                                        ),
                                                                        r'''$.status_daily''',
                                                                      ).toString()))
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xFFE9ECEF),
                                                                            borderRadius:
                                                                                BorderRadius.circular(56.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                4.0,
                                                                                8.0,
                                                                                4.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Text(
                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                    enText: 'Pending',
                                                                                    ptText: 'Pendente',
                                                                                  ),
                                                                                  maxLines: 1,
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Poppins',
                                                                                    color: const Color(0xFF9D979E),
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 10.0,
                                                                                  ),
                                                                                ),
                                                                                const Icon(
                                                                                  Icons.circle_outlined,
                                                                                  color: Color(0xFF9D979E),
                                                                                  size: 12.0,
                                                                                ),
                                                                              ].divide(const SizedBox(width: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        8.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    if (WfBerearGroup
                                                            .getDailyQuestCall
                                                            .listen(
                                                          containerDailyQuestsGetDailyQuestResponse
                                                              .jsonBody,
                                                        ) ==
                                                        null)
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                              .clearQueryDailyQuestCache();
                                                          _model.apiResultDailyQuest =
                                                              await WfBerearGroup
                                                                  .getDailyQuestCall
                                                                  .call(
                                                            token:
                                                                currentAuthenticationToken,
                                                          );

                                                          safeSetState(() {});
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '2c7wuwzw' /* Failed to load your progress */,
                                                                  ),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                                FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      8.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .redoAlt,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 16.0,
                                                                  ),
                                                                  showLoadingIndicator:
                                                                      true,
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                                if (WfBerearGroup.getBackWhereYouStoppedCall
                                            .contents(
                                          bodyGetBackWhereYouStoppedResponse
                                              .jsonBody,
                                        ) !=
                                        null &&
                                    (WfBerearGroup.getBackWhereYouStoppedCall
                                            .contents(
                                      bodyGetBackWhereYouStoppedResponse
                                          .jsonBody,
                                    ))!
                                        .isNotEmpty)
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2b593gj6' /* Back where you stopped */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontSize: 19.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3fpwhql5' /* Content that you haven't finis... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFFB7B2B8),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final contentBWYS = WfBerearGroup
                                                    .getBackWhereYouStoppedCall
                                                    .contents(
                                                      bodyGetBackWhereYouStoppedResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];

                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: List.generate(
                                                        contentBWYS.length,
                                                        (contentBWYSIndex) {
                                                  final contentBWYSItem =
                                                      contentBWYS[
                                                          contentBWYSIndex];
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      FFAppState()
                                                              .conteudoSelecionado =
                                                          contentBWYSItem;
                                                      safeSetState(() {});
                                                      if (!getJsonField(
                                                            contentBWYSItem,
                                                            r'''$.isFree''',
                                                          ) &&
                                                          currentUserData!
                                                              .isFree) {
                                                        context.pushNamed(
                                                          'Inside_content_buy',
                                                          queryParameters: {
                                                            'content':
                                                                serializeParam(
                                                              contentBWYSItem,
                                                              ParamType.JSON,
                                                            ),
                                                            'typeContent':
                                                                serializeParam(
                                                              TypeContent.Audio,
                                                              ParamType.Enum,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      } else {
                                                        context.pushNamed(
                                                          'Inside_content',
                                                          queryParameters: {
                                                            'content':
                                                                serializeParam(
                                                              contentBWYSItem,
                                                              ParamType.JSON,
                                                            ),
                                                            'typeContent':
                                                                serializeParam(
                                                              TypeContent.Audio,
                                                              ParamType.Enum,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    },
                                                    child: Container(
                                                      width: 193.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 193.0,
                                                            height: 143.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image: Image
                                                                    .network(
                                                                  getJsonField(
                                                                    contentBWYSItem,
                                                                    r'''$.cover_image''',
                                                                  ).toString(),
                                                                ).image,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          const LinearGradient(
                                                                        colors: [
                                                                          Color(
                                                                              0x007A3080),
                                                                          Color(
                                                                              0xFF7A3080)
                                                                        ],
                                                                        stops: [
                                                                          0.0,
                                                                          1.0
                                                                        ],
                                                                        begin: AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                        end: AlignmentDirectional(
                                                                            0,
                                                                            1.0),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          8.0,
                                                                          8.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                child: BackdropFilter(
                                                                                  filter: ImageFilter.blur(
                                                                                    sigmaX: 2.0,
                                                                                    sigmaY: 2.0,
                                                                                  ),
                                                                                  child: Container(
                                                                                    height: 20.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: const Color(0x4D000000),
                                                                                      borderRadius: BorderRadius.circular(24.0),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'j7fmlh2s' /* Audio */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: const Color(0xFFF0F2F4),
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                            child: SvgPicture.asset(
                                                                                              'assets/images/Sound.svg',
                                                                                              width: 10.0,
                                                                                              height: 10.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (!getJsonField(
                                                                                    contentBWYSItem,
                                                                                    r'''$.isFree''',
                                                                                  ) &&
                                                                                  currentUserData!.isFree)
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: BackdropFilter(
                                                                                    filter: ImageFilter.blur(
                                                                                      sigmaX: 2.0,
                                                                                      sigmaY: 2.0,
                                                                                    ),
                                                                                    child: Container(
                                                                                      height: 20.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: const Color(0x4D000000),
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'lerveng9' /* Premium */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: const Color(0xFFF0F2F4),
                                                                                                      fontSize: 10.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: SvgPicture.asset(
                                                                                                'assets/images/Crown_(1).svg',
                                                                                                width: 10.0,
                                                                                                height: 10.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(width: 4.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (!getJsonField(
                                                                                contentBWYSItem,
                                                                                r'''$.favorited''',
                                                                              ))
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: BackdropFilter(
                                                                                    filter: ImageFilter.blur(
                                                                                      sigmaX: 2.0,
                                                                                      sigmaY: 2.0,
                                                                                    ),
                                                                                    child: Container(
                                                                                      width: 24.0,
                                                                                      height: 24.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: const Color(0x66FFFFFF),
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          _model.apiResultAddFavoriteContent = await WfBerearGroup.addFavoriteContentCall.call(
                                                                                            contentId: getJsonField(
                                                                                              contentBWYSItem,
                                                                                              r'''$.id''',
                                                                                            ).toString(),
                                                                                            token: currentAuthenticationToken,
                                                                                          );

                                                                                          if ((_model.apiResultAddFavoriteContent?.succeeded ?? true)) {
                                                                                            await actions.setBoolValueInJson(
                                                                                              contentBWYSItem,
                                                                                              'favorited',
                                                                                              true,
                                                                                            );
                                                                                            await action_blocks.clearQueryCacheContent(context);
                                                                                            safeSetState(() {});
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Content added to favorites.',
                                                                                                    ptText: 'Conteúdo adicionado aos favoritos.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Something is wrong, try again.',
                                                                                                    ptText: 'Algo deu errado, tente novamente.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                              ),
                                                                                            );
                                                                                          }

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: const Icon(
                                                                                          Icons.favorite_border,
                                                                                          color: Color(0xFFF6F9FB),
                                                                                          size: 12.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              if (getJsonField(
                                                                                contentBWYSItem,
                                                                                r'''$.favorited''',
                                                                              ))
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: BackdropFilter(
                                                                                    filter: ImageFilter.blur(
                                                                                      sigmaX: 2.0,
                                                                                      sigmaY: 2.0,
                                                                                    ),
                                                                                    child: Container(
                                                                                      width: 24.0,
                                                                                      height: 24.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: const Color(0x66FFFFFF),
                                                                                        borderRadius: BorderRadius.circular(24.0),
                                                                                      ),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          _model.apiResultRemoveFavoriteContent = await WfBerearGroup.removeFavoriteContentCall.call(
                                                                                            contentId: getJsonField(
                                                                                              contentBWYSItem,
                                                                                              r'''$.id''',
                                                                                            ).toString(),
                                                                                            token: currentAuthenticationToken,
                                                                                          );

                                                                                          if ((_model.apiResultRemoveFavoriteContent?.succeeded ?? true)) {
                                                                                            await actions.setBoolValueInJson(
                                                                                              contentBWYSItem,
                                                                                              'favorited',
                                                                                              false,
                                                                                            );
                                                                                            await action_blocks.clearQueryCacheContent(context);
                                                                                            safeSetState(() {});
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Content removed from favorites.',
                                                                                                    ptText: 'Conteúdo removido dos favoritos',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Something is wrong, try again.',
                                                                                                    ptText: 'Algo deu errado, tente novamente.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                              ),
                                                                                            );
                                                                                          }

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: const Icon(
                                                                                          Icons.favorite_sharp,
                                                                                          color: Color(0xFFF9F6F6),
                                                                                          size: 12.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            getJsonField(
                                                                              contentBWYSItem,
                                                                              r'''$.title''',
                                                                            ).toString(),
                                                                            maxLines:
                                                                                4,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFFECF0F4),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/News.svg',
                                                                        width:
                                                                            12.0,
                                                                        height:
                                                                            12.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          contentBWYSItem,
                                                                          r'''$.journal''',
                                                                        ).toString(),
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: const Color(0xFF383438),
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          2.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      getJsonField(
                                                                        contentBWYSItem,
                                                                        r'''$.year''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    const Icon(
                                                                      Icons
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFF6A646B),
                                                                      size: 5.0,
                                                                    ),
                                                                    Text(
                                                                      functions
                                                                          .secondsToTimeV2(
                                                                              getJsonField(
                                                                        contentBWYSItem,
                                                                        r'''$.timeAudioSeconds''',
                                                                      )),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    if (getJsonField(
                                                                          contentBWYSItem,
                                                                          r'''$.rating''',
                                                                        ) !=
                                                                        null)
                                                                      const Icon(
                                                                        Icons
                                                                            .circle,
                                                                        color: Color(
                                                                            0xFF6A646B),
                                                                        size:
                                                                            5.0,
                                                                      ),
                                                                    if (getJsonField(
                                                                          contentBWYSItem,
                                                                          r'''$.rating''',
                                                                        ) !=
                                                                        null)
                                                                      Flexible(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children:
                                                                              [
                                                                            const Icon(
                                                                              Icons.star,
                                                                              color: Color(0xFFFFB45E),
                                                                              size: 12.0,
                                                                            ),
                                                                            Flexible(
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  contentBWYSItem,
                                                                                  r'''$.rating''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: const Color(0xFF6A646B),
                                                                                      fontSize: 10.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.normal,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 2.0)),
                                                                        ),
                                                                      ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          5.0)),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 10.0)),
                                                      ),
                                                    ),
                                                  );
                                                })
                                                    .divide(
                                                        const SizedBox(width: 16.0))
                                                    .addToStart(
                                                        const SizedBox(width: 24.0))
                                                    .addToEnd(
                                                        const SizedBox(width: 24.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'crrz50v5' /* Content Quests for you */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontSize: 19.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'aqqv4d4z' /* Join quests to consume a exten... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFFB7B2B8),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Stack(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 383.0,
                                                          height: 170.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                const LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF5B95AE),
                                                                Color(
                                                                    0xFF164892)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      1.0, 0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        7.0,
                                                                        6.0,
                                                                        10.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/aab7cb3113d478cd6f62d4b858000bc0.jpeg',
                                                                    height: double
                                                                        .infinity,
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'u1j75syz' /* 15, 30 ou 60 days challenge */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFFEBEEF0),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                            child:
                                                                                BackdropFilter(
                                                                              filter: ImageFilter.blur(
                                                                                sigmaX: 2.0,
                                                                                sigmaY: 2.0,
                                                                              ),
                                                                              child: Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: const Color(0x66FFFFFF),
                                                                                  borderRadius: BorderRadius.circular(24.0),
                                                                                ),
                                                                                child: const Icon(
                                                                                  Icons.favorite_border,
                                                                                  color: Color(0xFFF6F9FB),
                                                                                  size: 12.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'c26b7k1u' /* The Brain That Changes 
Itself */
                                                                            ,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFFEBEEF0),
                                                                                fontSize: 19.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '72bo2etg' /* By Norman Doidge, M.D. */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFFEAE9EB),
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                7.0,
                                                                                0.0,
                                                                                2.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x4C000000),
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(12.0),
                                                                                  bottomRight: Radius.circular(12.0),
                                                                                  topLeft: Radius.circular(12.0),
                                                                                  topRight: Radius.circular(12.0),
                                                                                ),
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 4.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'xg9a9s4h' /* In progress */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0xFFFDFEFF),
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/images/Clock.svg',
                                                                                        width: 10.0,
                                                                                        height: 10.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 4.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 10.0)),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 383.0,
                                                    height: 170.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xBA101010),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.lock,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 48.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 383.0,
                                                          height: 170.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                const LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF3F7652),
                                                                Color(
                                                                    0xFFFFC85F)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      1.0, 0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        7.0,
                                                                        6.0,
                                                                        10.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/Image_(1).png',
                                                                    height: double
                                                                        .infinity,
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '5tqecq8g' /* 15, 30 ou 60 days challenge */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFFEBEEF0),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                            child:
                                                                                BackdropFilter(
                                                                              filter: ImageFilter.blur(
                                                                                sigmaX: 2.0,
                                                                                sigmaY: 2.0,
                                                                              ),
                                                                              child: Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: const Color(0x66FFFFFF),
                                                                                  borderRadius: BorderRadius.circular(24.0),
                                                                                ),
                                                                                child: const Icon(
                                                                                  Icons.favorite_border,
                                                                                  color: Color(0xFFF6F9FB),
                                                                                  size: 12.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'iocg4rh9' /* The Man Who Mistook His Wife f... */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFFEBEEF0),
                                                                                fontSize: 19.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'w2kaufgc' /* By Oliver Sacks */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFFEAE9EB),
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                7.0,
                                                                                0.0,
                                                                                2.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x4C000000),
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(12.0),
                                                                                  bottomRight: Radius.circular(12.0),
                                                                                  topLeft: Radius.circular(12.0),
                                                                                  topRight: Radius.circular(12.0),
                                                                                ),
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 4.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'mtodh85d' /* Completed */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0xFFFDFEFF),
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/images/Check_Alt_(2).svg',
                                                                                        width: 10.0,
                                                                                        height: 10.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 4.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 10.0)),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 383.0,
                                                    height: 170.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xBA101010),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.lock,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 48.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 383.0,
                                                          height: 170.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                const LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF0CB09D),
                                                                Color(
                                                                    0xFF3F7652)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      1.0, 0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        7.0,
                                                                        6.0,
                                                                        10.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/Image_(2).png',
                                                                    height: double
                                                                        .infinity,
                                                                    fit: BoxFit
                                                                        .scaleDown,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ziwz0t8p' /* 15, 30 ou 60 days challenge */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFFEBEEF0),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                            child:
                                                                                BackdropFilter(
                                                                              filter: ImageFilter.blur(
                                                                                sigmaX: 2.0,
                                                                                sigmaY: 2.0,
                                                                              ),
                                                                              child: Container(
                                                                                width: 24.0,
                                                                                height: 24.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: const Color(0x66FFFFFF),
                                                                                  borderRadius: BorderRadius.circular(24.0),
                                                                                ),
                                                                                child: const Icon(
                                                                                  Icons.favorite_border,
                                                                                  color: Color(0xFFF6F9FB),
                                                                                  size: 12.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'zrgtkrjn' /* The Science of Stress */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFFEBEEF0),
                                                                                fontSize: 19.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'hl1s3ah5' /* By Robert M. Sapolsky */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFFEAE9EB),
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                7.0,
                                                                                0.0,
                                                                                2.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: const BoxDecoration(
                                                                                color: Color(0x4C000000),
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(12.0),
                                                                                  bottomRight: Radius.circular(12.0),
                                                                                  topLeft: Radius.circular(12.0),
                                                                                  topRight: Radius.circular(12.0),
                                                                                ),
                                                                              ),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 4.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '5nsuoi1y' /* Start now */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0xFFFDFEFF),
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/images/Star.svg',
                                                                                        width: 10.0,
                                                                                        height: 10.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 4.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 10.0)),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 383.0,
                                                    height: 170.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xBA101010),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.lock,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 48.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]
                                                .divide(const SizedBox(width: 16.0))
                                                .addToStart(
                                                    const SizedBox(width: 24.0))
                                                .addToEnd(
                                                    const SizedBox(width: 24.0)),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                FutureBuilder<ApiCallResponse>(
                                  future: FFAppState()
                                      .queryGetContentJustForYou(
                                    requestFn: () =>
                                        GetContentForYouResumeCall.call(
                                      token: currentAuthenticationToken,
                                      language:
                                          currentUserData?.linguagemPreferida,
                                    ),
                                  )
                                      .then((result) {
                                    _model.apiRequestCompleted2 = true;
                                    return result;
                                  }),
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
                                    final containerSelectedForYouGetContentForYouResumeResponse =
                                        snapshot.data!;

                                    return Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2zqr3sih' /* Selected just for you */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xFF383438),
                                                        fontSize: 19.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wa734ko8' /* Based on your interests */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xFFB7B2B8),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ].divide(const SizedBox(height: 4.0)),
                                            ),
                                          ),
                                          if (GetContentForYouResumeCall
                                                      .contents(
                                                    containerSelectedForYouGetContentForYouResumeResponse
                                                        .jsonBody,
                                                  ) !=
                                                  null &&
                                              (GetContentForYouResumeCall
                                                      .contents(
                                                containerSelectedForYouGetContentForYouResumeResponse
                                                    .jsonBody,
                                              ))!
                                                  .isNotEmpty)
                                            Builder(
                                              builder: (context) {
                                                final contentsForYou =
                                                    GetContentForYouResumeCall
                                                            .contents(
                                                          containerSelectedForYouGetContentForYouResumeResponse
                                                              .jsonBody,
                                                        )?.toList() ??
                                                        [];

                                                return SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                            contentsForYou
                                                                .length,
                                                            (contentsForYouIndex) {
                                                      final contentsForYouItem =
                                                          contentsForYou[
                                                              contentsForYouIndex];
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          FFAppState()
                                                                  .conteudoSelecionado =
                                                              contentsForYouItem;
                                                          safeSetState(() {});
                                                          if (!getJsonField(
                                                                contentsForYouItem,
                                                                r'''$.isFree''',
                                                              ) &&
                                                              currentUserData!
                                                                  .isFree) {
                                                            context.pushNamed(
                                                              'Inside_content_buy',
                                                              queryParameters: {
                                                                'content':
                                                                    serializeParam(
                                                                  contentsForYouItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                                'typeContent':
                                                                    serializeParam(
                                                                  TypeContent
                                                                      .Audio,
                                                                  ParamType
                                                                      .Enum,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          } else {
                                                            context.pushNamed(
                                                              'Inside_content',
                                                              queryParameters: {
                                                                'content':
                                                                    serializeParam(
                                                                  contentsForYouItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                                'typeContent':
                                                                    serializeParam(
                                                                  TypeContent
                                                                      .Audio,
                                                                  ParamType
                                                                      .Enum,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        },
                                                        child: Container(
                                                          width: 193.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 193.0,
                                                                height: 143.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .network(
                                                                      getJsonField(
                                                                        contentsForYouItem,
                                                                        r'''$.cover_image''',
                                                                      ).toString(),
                                                                    ).image,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        height:
                                                                            double.infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          gradient:
                                                                              const LinearGradient(
                                                                            colors: [
                                                                              Color(0x007A3080),
                                                                              Color(0xFF7A3080)
                                                                            ],
                                                                            stops: [
                                                                              0.0,
                                                                              1.0
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(0.0, -1.0),
                                                                            end:
                                                                                AlignmentDirectional(0, 1.0),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              8.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        child: BackdropFilter(
                                                                                          filter: ImageFilter.blur(
                                                                                            sigmaX: 2.0,
                                                                                            sigmaY: 2.0,
                                                                                          ),
                                                                                          child: Container(
                                                                                            height: 20.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: const Color(0x4D000000),
                                                                                              borderRadius: BorderRadius.circular(24.0),
                                                                                            ),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        '75axocnj' /* Audio */,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: const Color(0xFFF0F2F4),
                                                                                                            fontSize: 10.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w600,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  ClipRRect(
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                    child: SvgPicture.asset(
                                                                                                      'assets/images/Sound.svg',
                                                                                                      width: 10.0,
                                                                                                      height: 10.0,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      if (!getJsonField(
                                                                                            contentsForYouItem,
                                                                                            r'''$.isFree''',
                                                                                          ) &&
                                                                                          currentUserData!.isFree)
                                                                                        ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(0.0),
                                                                                          child: BackdropFilter(
                                                                                            filter: ImageFilter.blur(
                                                                                              sigmaX: 2.0,
                                                                                              sigmaY: 2.0,
                                                                                            ),
                                                                                            child: Container(
                                                                                              height: 20.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: const Color(0x4D000000),
                                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          '7068wq2x' /* Premium */,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Poppins',
                                                                                                              color: const Color(0xFFF0F2F4),
                                                                                                              fontSize: 10.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.w600,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                      child: SvgPicture.asset(
                                                                                                        'assets/images/Crown_(1).svg',
                                                                                                        width: 10.0,
                                                                                                        height: 10.0,
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(const SizedBox(width: 4.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                    ].divide(const SizedBox(width: 4.0)),
                                                                                  ),
                                                                                  if (!getJsonField(
                                                                                    contentsForYouItem,
                                                                                    r'''$.favorited''',
                                                                                  ))
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: BackdropFilter(
                                                                                        filter: ImageFilter.blur(
                                                                                          sigmaX: 2.0,
                                                                                          sigmaY: 2.0,
                                                                                        ),
                                                                                        child: Container(
                                                                                          width: 24.0,
                                                                                          height: 24.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: const Color(0x66FFFFFF),
                                                                                            borderRadius: BorderRadius.circular(24.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              _model.apiResultAddFavoriteContentForYou = await WfBerearGroup.addFavoriteContentCall.call(
                                                                                                contentId: getJsonField(
                                                                                                  contentsForYouItem,
                                                                                                  r'''$.id''',
                                                                                                ).toString(),
                                                                                                token: currentAuthenticationToken,
                                                                                              );

                                                                                              if ((_model.apiResultAddFavoriteContentForYou?.succeeded ?? true)) {
                                                                                                await actions.setBoolValueInJson(
                                                                                                  contentsForYouItem,
                                                                                                  'favorited',
                                                                                                  true,
                                                                                                );
                                                                                                await action_blocks.clearQueryCacheContent(context);
                                                                                                safeSetState(() {});
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      FFLocalizations.of(context).getVariableText(
                                                                                                        enText: 'Content added to favorites.',
                                                                                                        ptText: 'Conteúdo adicionado aos favoritos.',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                  ),
                                                                                                );
                                                                                              } else {
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      FFLocalizations.of(context).getVariableText(
                                                                                                        enText: 'Something is wrong, try again.',
                                                                                                        ptText: 'Algo deu errado, tente novamente.',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                                  ),
                                                                                                );
                                                                                              }

                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: const Icon(
                                                                                              Icons.favorite_border,
                                                                                              color: Color(0xFFF6F9FB),
                                                                                              size: 12.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (getJsonField(
                                                                                    contentsForYouItem,
                                                                                    r'''$.favorited''',
                                                                                  ))
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: BackdropFilter(
                                                                                        filter: ImageFilter.blur(
                                                                                          sigmaX: 2.0,
                                                                                          sigmaY: 2.0,
                                                                                        ),
                                                                                        child: Container(
                                                                                          width: 24.0,
                                                                                          height: 24.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: const Color(0x66FFFFFF),
                                                                                            borderRadius: BorderRadius.circular(24.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              _model.apiResultRemoveFavoriteContentForYou = await WfBerearGroup.removeFavoriteContentCall.call(
                                                                                                contentId: getJsonField(
                                                                                                  contentsForYouItem,
                                                                                                  r'''$.id''',
                                                                                                ).toString(),
                                                                                                token: currentAuthenticationToken,
                                                                                              );

                                                                                              if ((_model.apiResultRemoveFavoriteContentForYou?.succeeded ?? true)) {
                                                                                                await actions.setBoolValueInJson(
                                                                                                  contentsForYouItem,
                                                                                                  'favorited',
                                                                                                  false,
                                                                                                );
                                                                                                await action_blocks.clearQueryCacheContent(context);
                                                                                                safeSetState(() {});
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      FFLocalizations.of(context).getVariableText(
                                                                                                        enText: 'Content removed from favorites.',
                                                                                                        ptText: 'Conteúdo removido dos favoritos',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                  ),
                                                                                                );
                                                                                              } else {
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      FFLocalizations.of(context).getVariableText(
                                                                                                        enText: 'Something is wrong, try again.',
                                                                                                        ptText: 'Algo deu errado, tente novamente.',
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                                  ),
                                                                                                );
                                                                                              }

                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: const Icon(
                                                                                              Icons.favorite_sharp,
                                                                                              color: Color(0xFFF9F6F6),
                                                                                              size: 12.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    getJsonField(
                                                                                      contentsForYouItem,
                                                                                      r'''$.title''',
                                                                                    ).toString(),
                                                                                    maxLines: 4,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: const Color(0xFFECF0F4),
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                  if (getJsonField(
                                                                                    contentsForYouItem,
                                                                                    r'''$.completed''',
                                                                                  ))
                                                                                    LinearPercentIndicator(
                                                                                      percent: 1.0,
                                                                                      width: 166.0,
                                                                                      lineHeight: 3.0,
                                                                                      animation: true,
                                                                                      animateFromLastPercent: true,
                                                                                      progressColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      barRadius: const Radius.circular(4.0),
                                                                                      padding: EdgeInsets.zero,
                                                                                    ),
                                                                                ].divide(const SizedBox(height: 4.0)),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/News.svg',
                                                                            width:
                                                                                12.0,
                                                                            height:
                                                                                12.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            getJsonField(
                                                                              contentsForYouItem,
                                                                              r'''$.journal''',
                                                                            ).toString(),
                                                                            maxLines:
                                                                                2,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: const Color(0xFF383438),
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 2.0)),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          getJsonField(
                                                                            contentsForYouItem,
                                                                            r'''$.year''',
                                                                          ).toString(),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                        const Icon(
                                                                          Icons
                                                                              .circle,
                                                                          color:
                                                                              Color(0xFF6A646B),
                                                                          size:
                                                                              5.0,
                                                                        ),
                                                                        Text(
                                                                          functions
                                                                              .secondsToTimeV2(getJsonField(
                                                                            contentsForYouItem,
                                                                            r'''$.timeAudioSeconds''',
                                                                          )),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                        if (getJsonField(
                                                                              contentsForYouItem,
                                                                              r'''$.rating''',
                                                                            ) !=
                                                                            null)
                                                                          const Icon(
                                                                            Icons.circle,
                                                                            color:
                                                                                Color(0xFF6A646B),
                                                                            size:
                                                                                5.0,
                                                                          ),
                                                                        if (getJsonField(
                                                                              contentsForYouItem,
                                                                              r'''$.rating''',
                                                                            ) !=
                                                                            null)
                                                                          Flexible(
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                const Icon(
                                                                                  Icons.star,
                                                                                  color: Color(0xFFFFB45E),
                                                                                  size: 12.0,
                                                                                ),
                                                                                Flexible(
                                                                                  child: Text(
                                                                                    getJsonField(
                                                                                      contentsForYouItem,
                                                                                      r'''$.rating''',
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: const Color(0xFF6A646B),
                                                                                          fontSize: 10.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 2.0)),
                                                                            ),
                                                                          ),
                                                                      ].divide(const SizedBox(
                                                                              width: 5.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          8.0)),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 10.0)),
                                                          ),
                                                        ),
                                                      );
                                                    })
                                                        .divide(const SizedBox(
                                                            width: 16.0))
                                                        .addToStart(const SizedBox(
                                                            width: 24.0))
                                                        .addToEnd(const SizedBox(
                                                            width: 24.0)),
                                                  ),
                                                );
                                              },
                                            ),
                                          if (!(GetContentForYouResumeCall
                                                      .contents(
                                                    containerSelectedForYouGetContentForYouResumeResponse
                                                        .jsonBody,
                                                  ) !=
                                                  null &&
                                              (GetContentForYouResumeCall
                                                      .contents(
                                                containerSelectedForYouGetContentForYouResumeResponse
                                                    .jsonBody,
                                              ))!
                                                  .isNotEmpty))
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState()
                                                      .clearQueryGetContentJustForYouCache();
                                                  safeSetState(() {
                                                    FFAppState()
                                                        .clearQueryGetContentJustForYouCache();
                                                    _model.apiRequestCompleted2 =
                                                        false;
                                                  });
                                                  await _model
                                                      .waitForApiRequestCompleted2();
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'riempnbm' /* Failed to load this contents */,
                                                          ),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .purpleAlternate,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 8.0,
                                                          buttonSize: 40.0,
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .redoAlt,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .purpleAlternate,
                                                            size: 16.0,
                                                          ),
                                                          showLoadingIndicator:
                                                              true,
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    );
                                  },
                                ),
                              ]
                                  .divide(const SizedBox(height: 32.0))
                                  .addToEnd(const SizedBox(height: 40.0)),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
