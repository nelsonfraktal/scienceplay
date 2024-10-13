import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'tracks_model.dart';
export 'tracks_model.dart';

class TracksWidget extends StatefulWidget {
  const TracksWidget({super.key});

  @override
  State<TracksWidget> createState() => _TracksWidgetState();
}

class _TracksWidgetState extends State<TracksWidget> {
  late TracksModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TracksModel());
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 86.0),
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
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                  currentUserData!.image,
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
                Flexible(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: RefreshIndicator(
                      onRefresh: () async {
                        FFAppState().clearQueryGetMyTracksCache();
                        safeSetState(() {
                          FFAppState().clearQueryGetMyTracksCache();
                          _model.apiRequestCompleted3 = false;
                        });
                        FFAppState().clearQueryGetRecommendedTracksCache();
                        safeSetState(() {
                          FFAppState().clearQueryGetRecommendedTracksCache();
                          _model.apiRequestCompleted2 = false;
                        });
                        FFAppState().clearQueryGetPurchasedTracksCache();
                        safeSetState(() {
                          FFAppState().clearQueryGetPurchasedTracksCache();
                          _model.apiRequestCompleted1 = false;
                        });
                      },
                      child: SingleChildScrollView(
                        primary: false,
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'o2wy10wc' /* Tracks */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            fontSize: 32.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    const SizedBox(
                                      width: 50.0,
                                      child: Divider(
                                        height: 4.0,
                                        thickness: 3.0,
                                        color: Color(0xFF7A3080),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 32.0, 24.0, 0.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: FFAppState().queryDailyQuest(
                                  requestFn: () =>
                                      WfBerearGroup.getDailyQuestCall.call(
                                    token: currentAuthenticationToken,
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
                                  final containerStreakGetDailyQuestResponse =
                                      snapshot.data!;

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'My_achievements',
                                        queryParameters: {
                                          'tab': serializeParam(
                                            1,
                                            ParamType.int,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 25.0,
                                            color: Color(0x0C000000),
                                            offset: Offset(
                                              0.0,
                                              0.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5jde0w0v' /* Spend 15 minutes learning */,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ut2zhlrg' /* 100 XP */,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF9D979E),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            if (WfBerearGroup.getDailyQuestCall
                                                    .time(
                                                  containerStreakGetDailyQuestResponse
                                                      .jsonBody,
                                                ) !=
                                                null)
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 16.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFFEAE9EB),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: LinearPercentIndicator(
                                                    percent: (WfBerearGroup
                                                            .getDailyQuestCall
                                                            .time(
                                                          containerStreakGetDailyQuestResponse
                                                              .jsonBody,
                                                        )!) /
                                                        15,
                                                    lineHeight: 16.0,
                                                    animation: true,
                                                    animateFromLastPercent:
                                                        true,
                                                    progressColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    backgroundColor:
                                                        const Color(0xFFEAE9EB),
                                                    center: Text(
                                                      '${WfBerearGroup.getDailyQuestCall.time(
                                                            containerStreakGetDailyQuestResponse
                                                                .jsonBody,
                                                          )?.toString()}/15',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color: WfBerearGroup
                                                                    .getDailyQuestCall
                                                                    .time(
                                                                  containerStreakGetDailyQuestResponse
                                                                      .jsonBody,
                                                                )! >=
                                                                8
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground
                                                            : const Color(0xFF9D979E),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                ),
                                              ),
                                            if (WfBerearGroup.getDailyQuestCall
                                                    .time(
                                                  containerStreakGetDailyQuestResponse
                                                      .jsonBody,
                                                ) ==
                                                null)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
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
                                                            '1hrn65kx' /* Failed to load your progress */,
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
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future: FFAppState()
                                  .queryGetMyTracks(
                                requestFn: () =>
                                    WfBerearGroup.getMyTracksCall.call(
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final containerMyTracksGetMyTracksResponse =
                                    snapshot.data!;

                                return Container(
                                  decoration: const BoxDecoration(),
                                  child: Visibility(
                                    visible: WfBerearGroup.getMyTracksCall
                                                .myTracks(
                                              containerMyTracksGetMyTracksResponse
                                                  .jsonBody,
                                            ) !=
                                            null &&
                                        (WfBerearGroup.getMyTracksCall.myTracks(
                                          containerMyTracksGetMyTracksResponse
                                              .jsonBody,
                                        ))!
                                            .isNotEmpty,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sb9x70hq' /* My tracks */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: const Color(
                                                                  0xFF383438),
                                                              fontSize: 19.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k0i9mslj' /* Tracks followed by me */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFFB7B2B8),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final tracks =
                                                  WfBerearGroup.getMyTracksCall
                                                          .myTracks(
                                                            containerMyTracksGetMyTracksResponse
                                                                .jsonBody,
                                                          )
                                                          ?.toList() ??
                                                      [];

                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: List.generate(
                                                          tracks.length,
                                                          (tracksIndex) {
                                                    final tracksItem =
                                                        tracks[tracksIndex];
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
                                                                .playlistSelecionada =
                                                            tracksItem;
                                                        FFAppState()
                                                                .conteudoSelecionado =
                                                            null;
                                                        if (currentUserData!
                                                            .isFree) {
                                                          if (() {
                                                            if (!currentUserData!
                                                                .isFree) {
                                                              return true;
                                                            } else if (getJsonField(
                                                              tracksItem,
                                                              r'''$.isFree''',
                                                            )) {
                                                              return true;
                                                            } else if (!getJsonField(
                                                                  tracksItem,
                                                                  r'''$.isFree''',
                                                                ) &&
                                                                getJsonField(
                                                                  tracksItem,
                                                                  r'''$.purchased''',
                                                                )) {
                                                              return true;
                                                            } else {
                                                              return false;
                                                            }
                                                          }()) {
                                                            context.pushNamed(
                                                              'Track',
                                                              queryParameters: {
                                                                'track':
                                                                    serializeParam(
                                                                  tracksItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          } else {
                                                            context.pushNamed(
                                                              'TrackBuy',
                                                              queryParameters: {
                                                                'track':
                                                                    serializeParam(
                                                                  tracksItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        } else {
                                                          context.pushNamed(
                                                            'Track',
                                                            queryParameters: {
                                                              'track':
                                                                  serializeParam(
                                                                tracksItem,
                                                                ParamType.JSON,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: Container(
                                                              width: 183.0,
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
                                                                    width:
                                                                        183.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          const LinearGradient(
                                                                        colors: [
                                                                          Color(
                                                                              0xFF164892),
                                                                          Color(
                                                                              0xFF5B95AE)
                                                                        ],
                                                                        stops: [
                                                                          0.0,
                                                                          1.0
                                                                        ],
                                                                        begin: AlignmentDirectional(
                                                                            0.81,
                                                                            -1.0),
                                                                        end: AlignmentDirectional(
                                                                            -0.81,
                                                                            1.0),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
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
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
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
                                                                                              var shouldSetState = false;
                                                                                              FFAppState().clearQueryGetMyTracksCache();
                                                                                              _model.apiResult6ahCopy3 = await WfBerearGroup.removeFavoriteTrackCall.call(
                                                                                                trackId: getJsonField(
                                                                                                  tracksItem,
                                                                                                  r'''$.id_track''',
                                                                                                ).toString(),
                                                                                                token: currentAuthenticationToken,
                                                                                              );

                                                                                              shouldSetState = true;
                                                                                              if ((_model.apiResult6ahCopy3?.succeeded ?? true)) {
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      FFLocalizations.of(context).getVariableText(
                                                                                                        enText: 'Track has been removed from your favorites.',
                                                                                                        ptText: 'Playlist removida de seus favoritos.',
                                                                                                      ),
                                                                                                      style: TextStyle(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        fontSize: 14.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                  ),
                                                                                                );
                                                                                                if (shouldSetState) safeSetState(() {});
                                                                                                return;
                                                                                              } else {
                                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                                  SnackBar(
                                                                                                    content: Text(
                                                                                                      FFLocalizations.of(context).getVariableText(
                                                                                                        enText: 'Oops, something wrong happened! Try again later.',
                                                                                                        ptText: 'Ops, algo de errado aconteceu! Tente mais tarde.',
                                                                                                      ),
                                                                                                      style: TextStyle(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        fontSize: 14.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                    duration: const Duration(milliseconds: 4000),
                                                                                                    backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                  ),
                                                                                                );
                                                                                                if (shouldSetState) safeSetState(() {});
                                                                                                return;
                                                                                              }

                                                                                              if (shouldSetState) safeSetState(() {});
                                                                                            },
                                                                                            child: const Icon(
                                                                                              Icons.favorite,
                                                                                              color: Color(0xFFF6F9FB),
                                                                                              size: 12.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Container(
                                                                                  width: 100.0,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFFFFBFB),
                                                                                    ),
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.network(
                                                                                      valueOrDefault<String>(
                                                                                        functions.containsHttps(getJsonField(
                                                                                          tracksItem,
                                                                                          r'''$.image''',
                                                                                        ).toString())
                                                                                            ? getJsonField(
                                                                                                tracksItem,
                                                                                                r'''$.image''',
                                                                                              ).toString()
                                                                                            : 'https:${getJsonField(
                                                                                                tracksItem,
                                                                                                r'''$.image''',
                                                                                              ).toString()}',
                                                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/science-play-12-min-e5r7cu/assets/x9ldop5qt54a/Checkbox_container_(2).png',
                                                                                      ),
                                                                                      width: 108.0,
                                                                                      height: 92.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
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
                                                                                                '${getJsonField(
                                                                                                  tracksItem,
                                                                                                  r'''$.numbers_audios''',
                                                                                                ).toString()} audiobooks',
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
                                                                                              child: Image.asset(
                                                                                                'assets/images/Playlist.png',
                                                                                                width: 10.0,
                                                                                                height: 10.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    if (!getJsonField(
                                                                                      tracksItem,
                                                                                      r'''$.isFree''',
                                                                                    ))
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        child: SvgPicture.asset(
                                                                                          'assets/images/Crown_(1).svg',
                                                                                          width: 10.0,
                                                                                          height: 10.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(const SizedBox(height: 12.0)),
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
                                                                    child:
                                                                        Column(
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
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'k95rh5to' /* TRACK */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: const Color(0xFF6A646B),
                                                                                    fontSize: 10.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          getJsonField(
                                                                            tracksItem,
                                                                            r'''$.title_track''',
                                                                          ).toString(),
                                                                          maxLines:
                                                                              3,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF383438),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Flexible(
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    getJsonField(
                                                                                      tracksItem,
                                                                                      r'''$.create_track''',
                                                                                    )?.toString(),
                                                                                    '-',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: const Color(0xFF6A646B),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              const Icon(
                                                                                Icons.circle,
                                                                                color: Color(0xFF6A646B),
                                                                                size: 5.0,
                                                                              ),
                                                                              Flexible(
                                                                                child: Text(
                                                                                  functions.secondsToTimeV2(valueOrDefault<int>(
                                                                                    getJsonField(
                                                                                      tracksItem,
                                                                                      r'''$.segundos''',
                                                                                    ),
                                                                                    0,
                                                                                  )),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: const Color(0xFF6A646B),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              if (getJsonField(
                                                                                    tracksItem,
                                                                                    r'''$.rating''',
                                                                                  ) !=
                                                                                  null)
                                                                                const Icon(
                                                                                  Icons.circle,
                                                                                  color: Color(0xFF6A646B),
                                                                                  size: 5.0,
                                                                                ),
                                                                              if (getJsonField(
                                                                                    tracksItem,
                                                                                    r'''$.rating''',
                                                                                  ) !=
                                                                                  null)
                                                                                Flexible(
                                                                                  child: Row(
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
                                                                                            tracksItem,
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
                                                                            ].divide(const SizedBox(width: 5.0)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  })
                                                      .divide(
                                                          const SizedBox(width: 16.0))
                                                      .addToStart(
                                                          const SizedBox(width: 24.0))
                                                      .addToEnd(const SizedBox(
                                                          width: 24.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future: FFAppState()
                                  .queryGetRecommendedTracks(
                                requestFn: () =>
                                    WfBerearGroup.getTracksAreaBasedCall.call(
                                  token: currentAuthenticationToken,
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final containerRecomendadosGetTracksAreaBasedResponse =
                                    snapshot.data!;

                                return Container(
                                  decoration: const BoxDecoration(),
                                  child: Visibility(
                                    visible: WfBerearGroup
                                                .getTracksAreaBasedCall
                                                .tracks(
                                              containerRecomendadosGetTracksAreaBasedResponse
                                                  .jsonBody,
                                            ) !=
                                            null &&
                                        (WfBerearGroup.getTracksAreaBasedCall
                                                .tracks(
                                          containerRecomendadosGetTracksAreaBasedResponse
                                              .jsonBody,
                                        ))!
                                            .isNotEmpty,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 32.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3dvw8hje' /* Recommended tracks */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: const Color(
                                                                  0xFF383438),
                                                              fontSize: 19.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g7n0h3q9' /* Based on your interests */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFFB7B2B8),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final tracks = WfBerearGroup
                                                      .getTracksAreaBasedCall
                                                      .tracks(
                                                        containerRecomendadosGetTracksAreaBasedResponse
                                                            .jsonBody,
                                                      )
                                                      ?.toList() ??
                                                  [];

                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: List.generate(
                                                          tracks.length,
                                                          (tracksIndex) {
                                                    final tracksItem =
                                                        tracks[tracksIndex];
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
                                                                .playlistSelecionada =
                                                            tracksItem;
                                                        FFAppState()
                                                                .conteudoSelecionado =
                                                            null;
                                                        if (currentUserData!
                                                            .isFree) {
                                                          if (() {
                                                            if (!currentUserData!
                                                                .isFree) {
                                                              return true;
                                                            } else if (getJsonField(
                                                              tracksItem,
                                                              r'''$.isFree''',
                                                            )) {
                                                              return true;
                                                            } else if (!getJsonField(
                                                                  tracksItem,
                                                                  r'''$.isFree''',
                                                                ) &&
                                                                getJsonField(
                                                                  tracksItem,
                                                                  r'''$.purchased''',
                                                                )) {
                                                              return true;
                                                            } else {
                                                              return false;
                                                            }
                                                          }()) {
                                                            context.pushNamed(
                                                              'Track',
                                                              queryParameters: {
                                                                'track':
                                                                    serializeParam(
                                                                  tracksItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          } else {
                                                            context.pushNamed(
                                                              'TrackBuy',
                                                              queryParameters: {
                                                                'track':
                                                                    serializeParam(
                                                                  tracksItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        } else {
                                                          context.pushNamed(
                                                            'Track',
                                                            queryParameters: {
                                                              'track':
                                                                  serializeParam(
                                                                tracksItem,
                                                                ParamType.JSON,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: Container(
                                                              width: 183.0,
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
                                                                    width:
                                                                        183.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          const LinearGradient(
                                                                        colors: [
                                                                          Color(
                                                                              0xFF164892),
                                                                          Color(
                                                                              0xFF5B95AE)
                                                                        ],
                                                                        stops: [
                                                                          0.0,
                                                                          1.0
                                                                        ],
                                                                        begin: AlignmentDirectional(
                                                                            0.81,
                                                                            -1.0),
                                                                        end: AlignmentDirectional(
                                                                            -0.81,
                                                                            1.0),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
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
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    if (!getJsonField(
                                                                                      tracksItem,
                                                                                      r'''$.myTrack''',
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
                                                                                                var shouldSetState = false;
                                                                                                FFAppState().clearQueryGetRecommendedTracksCache();
                                                                                                _model.apiResult9xd = await WfBerearGroup.addFavoriteTrackCall.call(
                                                                                                  trackId: getJsonField(
                                                                                                    tracksItem,
                                                                                                    r'''$.id_track''',
                                                                                                  ).toString(),
                                                                                                  token: currentAuthenticationToken,
                                                                                                );

                                                                                                shouldSetState = true;
                                                                                                if ((_model.apiResult9xd?.succeeded ?? true)) {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        FFLocalizations.of(context).getVariableText(
                                                                                                          enText: 'Track has been added to favorites.',
                                                                                                          ptText: 'Playlist adicionada aos favoritos.',
                                                                                                        ),
                                                                                                        style: TextStyle(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          fontSize: 14.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                    ),
                                                                                                  );
                                                                                                  if (shouldSetState) safeSetState(() {});
                                                                                                  return;
                                                                                                } else {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        FFLocalizations.of(context).getVariableText(
                                                                                                          enText: 'Oops, something wrong happened! Try again later.',
                                                                                                          ptText: 'Ops, algo de errado aconteceu! Tente mais tarde.',
                                                                                                        ),
                                                                                                        style: TextStyle(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          fontSize: 14.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                    ),
                                                                                                  );
                                                                                                  if (shouldSetState) safeSetState(() {});
                                                                                                  return;
                                                                                                }

                                                                                                if (shouldSetState) safeSetState(() {});
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
                                                                                      tracksItem,
                                                                                      r'''$.myTrack''',
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
                                                                                                var shouldSetState = false;
                                                                                                FFAppState().clearQueryGetRecommendedTracksCache();
                                                                                                _model.apiResult6ahCopy = await WfBerearGroup.removeFavoriteTrackCall.call(
                                                                                                  trackId: getJsonField(
                                                                                                    tracksItem,
                                                                                                    r'''$.id_track''',
                                                                                                  ).toString(),
                                                                                                  token: currentAuthenticationToken,
                                                                                                );

                                                                                                shouldSetState = true;
                                                                                                if ((_model.apiResult6ahCopy?.succeeded ?? true)) {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        FFLocalizations.of(context).getVariableText(
                                                                                                          enText: 'Track has been removed from your favorites.',
                                                                                                          ptText: 'Playlist removida de seus favoritos.',
                                                                                                        ),
                                                                                                        style: TextStyle(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          fontSize: 14.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                    ),
                                                                                                  );
                                                                                                  if (shouldSetState) safeSetState(() {});
                                                                                                  return;
                                                                                                } else {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        FFLocalizations.of(context).getVariableText(
                                                                                                          enText: 'Oops, something wrong happened! Try again later.',
                                                                                                          ptText: 'Ops, algo de errado aconteceu! Tente mais tarde.',
                                                                                                        ),
                                                                                                        style: TextStyle(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          fontSize: 14.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                      duration: const Duration(milliseconds: 4000),
                                                                                                      backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                    ),
                                                                                                  );
                                                                                                  if (shouldSetState) safeSetState(() {});
                                                                                                  return;
                                                                                                }

                                                                                                if (shouldSetState) safeSetState(() {});
                                                                                              },
                                                                                              child: const Icon(
                                                                                                Icons.favorite,
                                                                                                color: Color(0xFFF6F9FB),
                                                                                                size: 12.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Container(
                                                                                  width: 100.0,
                                                                                  height: 100.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFFFFBFB),
                                                                                    ),
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.network(
                                                                                      functions.containsHttps(getJsonField(
                                                                                        tracksItem,
                                                                                        r'''$.image''',
                                                                                      ).toString())
                                                                                          ? getJsonField(
                                                                                              tracksItem,
                                                                                              r'''$.image''',
                                                                                            ).toString()
                                                                                          : 'https:${getJsonField(
                                                                                              tracksItem,
                                                                                              r'''$.image''',
                                                                                            ).toString()}',
                                                                                      width: 108.0,
                                                                                      height: 92.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Container(
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
                                                                                                '${getJsonField(
                                                                                                  tracksItem,
                                                                                                  r'''$.numbers_audios''',
                                                                                                ).toString()} audiobooks',
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
                                                                                              child: Image.asset(
                                                                                                'assets/images/Playlist.png',
                                                                                                width: 10.0,
                                                                                                height: 10.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    if (!getJsonField(
                                                                                      tracksItem,
                                                                                      r'''$.isFree''',
                                                                                    ))
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        child: SvgPicture.asset(
                                                                                          'assets/images/Crown_(1).svg',
                                                                                          width: 10.0,
                                                                                          height: 10.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(const SizedBox(height: 12.0)),
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
                                                                    child:
                                                                        Column(
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
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                8.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '6t11w33h' /* TRACK */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: const Color(0xFF6A646B),
                                                                                    fontSize: 10.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          getJsonField(
                                                                            tracksItem,
                                                                            r'''$.title_track''',
                                                                          ).toString(),
                                                                          maxLines:
                                                                              3,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF383438),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Flexible(
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    getJsonField(
                                                                                      tracksItem,
                                                                                      r'''$.create_track''',
                                                                                    )?.toString(),
                                                                                    '-',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: const Color(0xFF6A646B),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              const Icon(
                                                                                Icons.circle,
                                                                                color: Color(0xFF6A646B),
                                                                                size: 5.0,
                                                                              ),
                                                                              Flexible(
                                                                                child: Text(
                                                                                  functions.secondsToTimeV2(getJsonField(
                                                                                    tracksItem,
                                                                                    r'''$.segundos''',
                                                                                  )),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: const Color(0xFF6A646B),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              if (getJsonField(
                                                                                    tracksItem,
                                                                                    r'''$.rating''',
                                                                                  ) !=
                                                                                  null)
                                                                                const Icon(
                                                                                  Icons.circle,
                                                                                  color: Color(0xFF6A646B),
                                                                                  size: 5.0,
                                                                                ),
                                                                              if (getJsonField(
                                                                                    tracksItem,
                                                                                    r'''$.rating''',
                                                                                  ) !=
                                                                                  null)
                                                                                Flexible(
                                                                                  child: Row(
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
                                                                                            tracksItem,
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
                                                                            ].divide(const SizedBox(width: 5.0)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  })
                                                      .divide(
                                                          const SizedBox(width: 16.0))
                                                      .addToStart(
                                                          const SizedBox(width: 24.0))
                                                      .addToEnd(const SizedBox(
                                                          width: 24.0)),
                                                ),
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              FutureBuilder<ApiCallResponse>(
                                future: FFAppState()
                                    .queryGetPurchasedTracks(
                                  requestFn: () =>
                                      WfBerearGroup.getPurchasedTrackCall.call(
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
                                  final columnMyPurchasedGetPurchasedTrackResponse =
                                      snapshot.data!;

                                  return SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (WfBerearGroup.getPurchasedTrackCall
                                                .purchasedtrack(
                                                  columnMyPurchasedGetPurchasedTrackResponse
                                                      .jsonBody,
                                                )!.isNotEmpty)
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'qnlb3fp1' /* Purchased tracks */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF383438),
                                                                  fontSize:
                                                                      19.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 4.0)),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final tracks = WfBerearGroup
                                                          .getPurchasedTrackCall
                                                          .purchasedtrack(
                                                            columnMyPurchasedGetPurchasedTrackResponse
                                                                .jsonBody,
                                                          )
                                                          ?.toList() ??
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
                                                              tracks.length,
                                                              (tracksIndex) {
                                                        final tracksItem =
                                                            tracks[tracksIndex];
                                                        return InkWell(
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
                                                              'Track',
                                                              queryParameters: {
                                                                'track':
                                                                    serializeParam(
                                                                  tracksItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Stack(
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                child:
                                                                    Container(
                                                                  width: 183.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            183.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          gradient:
                                                                              const LinearGradient(
                                                                            colors: [
                                                                              Color(0xFF164892),
                                                                              Color(0xFF5B95AE)
                                                                            ],
                                                                            stops: [
                                                                              0.0,
                                                                              1.0
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(0.81, -1.0),
                                                                            end:
                                                                                AlignmentDirectional(-0.81, 1.0),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Container(
                                                                              width: double.infinity,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        if (!getJsonField(
                                                                                          tracksItem,
                                                                                          r'''$.myTrack''',
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
                                                                                                    var shouldSetState = false;
                                                                                                    FFAppState().clearQueryGetPurchasedTracksCache();
                                                                                                    _model.apiResult9xd33 = await WfBerearGroup.addFavoriteTrackCall.call(
                                                                                                      trackId: getJsonField(
                                                                                                        tracksItem,
                                                                                                        r'''$.id_track''',
                                                                                                      ).toString(),
                                                                                                      token: currentAuthenticationToken,
                                                                                                    );

                                                                                                    shouldSetState = true;
                                                                                                    if ((_model.apiResult9xd33?.succeeded ?? true)) {
                                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                                        SnackBar(
                                                                                                          content: Text(
                                                                                                            FFLocalizations.of(context).getVariableText(
                                                                                                              enText: 'Track has been added to favorites.',
                                                                                                              ptText: 'Playlist adicionada aos favoritos.',
                                                                                                            ),
                                                                                                            style: TextStyle(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 14.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                        ),
                                                                                                      );
                                                                                                      if (shouldSetState) safeSetState(() {});
                                                                                                      return;
                                                                                                    } else {
                                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                                        SnackBar(
                                                                                                          content: Text(
                                                                                                            FFLocalizations.of(context).getVariableText(
                                                                                                              enText: 'Oops, something wrong happened! Try again later.',
                                                                                                              ptText: 'Ops, algo de errado aconteceu! Tente mais tarde.',
                                                                                                            ),
                                                                                                            style: TextStyle(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 14.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                        ),
                                                                                                      );
                                                                                                      if (shouldSetState) safeSetState(() {});
                                                                                                      return;
                                                                                                    }

                                                                                                    if (shouldSetState) safeSetState(() {});
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
                                                                                          tracksItem,
                                                                                          r'''$.myTrack''',
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
                                                                                                    var shouldSetState = false;
                                                                                                    FFAppState().clearQueryGetPurchasedTracksCache();
                                                                                                    _model.apiResult6ahCopy3222 = await WfBerearGroup.removeFavoriteTrackCall.call(
                                                                                                      trackId: getJsonField(
                                                                                                        tracksItem,
                                                                                                        r'''$.id_track''',
                                                                                                      ).toString(),
                                                                                                      token: currentAuthenticationToken,
                                                                                                    );

                                                                                                    shouldSetState = true;
                                                                                                    if ((_model.apiResult6ahCopy3222?.succeeded ?? true)) {
                                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                                        SnackBar(
                                                                                                          content: Text(
                                                                                                            FFLocalizations.of(context).getVariableText(
                                                                                                              enText: 'Track has been removed from your favorites.',
                                                                                                              ptText: 'Playlist removida de seus favoritos.',
                                                                                                            ),
                                                                                                            style: TextStyle(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 14.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                        ),
                                                                                                      );
                                                                                                      if (shouldSetState) safeSetState(() {});
                                                                                                      return;
                                                                                                    } else {
                                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                                        SnackBar(
                                                                                                          content: Text(
                                                                                                            FFLocalizations.of(context).getVariableText(
                                                                                                              enText: 'Oops, something wrong happened! Try again later.',
                                                                                                              ptText: 'Ops, algo de errado aconteceu! Tente mais tarde.',
                                                                                                            ),
                                                                                                            style: TextStyle(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              fontSize: 14.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).error,
                                                                                                        ),
                                                                                                      );
                                                                                                      if (shouldSetState) safeSetState(() {});
                                                                                                      return;
                                                                                                    }

                                                                                                    if (shouldSetState) safeSetState(() {});
                                                                                                  },
                                                                                                  child: const Icon(
                                                                                                    Icons.favorite,
                                                                                                    color: Color(0xFFF6F9FB),
                                                                                                    size: 12.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                    Container(
                                                                                      width: 100.0,
                                                                                      height: 100.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        border: Border.all(
                                                                                          color: const Color(0xFFFFFBFB),
                                                                                        ),
                                                                                      ),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        child: Image.network(
                                                                                          functions.containsHttps(getJsonField(
                                                                                            tracksItem,
                                                                                            r'''$.image''',
                                                                                          ).toString())
                                                                                              ? getJsonField(
                                                                                                  tracksItem,
                                                                                                  r'''$.image''',
                                                                                                ).toString()
                                                                                              : 'https:${getJsonField(
                                                                                                  tracksItem,
                                                                                                  r'''$.image''',
                                                                                                ).toString()}',
                                                                                          width: 108.0,
                                                                                          height: 92.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Container(
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
                                                                                                    '${getJsonField(
                                                                                                      tracksItem,
                                                                                                      r'''$.numbers_audios''',
                                                                                                    ).toString()} audiobooks',
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
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/Playlist.png',
                                                                                                    width: 10.0,
                                                                                                    height: 10.0,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
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
                                                                                      ],
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 12.0)),
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
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '8nxf56s8' /* TRACK */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: const Color(0xFF6A646B),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              getJsonField(
                                                                                tracksItem,
                                                                                r'''$.title_track''',
                                                                              ).toString(),
                                                                              maxLines: 3,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: const Color(0xFF383438),
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        getJsonField(
                                                                                          tracksItem,
                                                                                          r'''$.create_track''',
                                                                                        )?.toString(),
                                                                                        '-',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0xFF6A646B),
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  const Icon(
                                                                                    Icons.circle,
                                                                                    color: Color(0xFF6A646B),
                                                                                    size: 5.0,
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Text(
                                                                                      functions.secondsToTimeV2(getJsonField(
                                                                                        tracksItem,
                                                                                        r'''$.segundos''',
                                                                                      )),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0xFF6A646B),
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  if (getJsonField(
                                                                                        tracksItem,
                                                                                        r'''$.rating''',
                                                                                      ) !=
                                                                                      null)
                                                                                    const Icon(
                                                                                      Icons.circle,
                                                                                      color: Color(0xFF6A646B),
                                                                                      size: 5.0,
                                                                                    ),
                                                                                  if (getJsonField(
                                                                                        tracksItem,
                                                                                        r'''$.rating''',
                                                                                      ) !=
                                                                                      null)
                                                                                    Flexible(
                                                                                      child: Row(
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
                                                                                                tracksItem,
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
                                                                                ].divide(const SizedBox(width: 5.0)),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            10.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
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
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                      ].divide(const SizedBox(height: 24.0)),
                                    ),
                                  );
                                },
                              ),
                          ]
                              .addToStart(const SizedBox(height: 32.0))
                              .addToEnd(const SizedBox(height: 32.0)),
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
