import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_tracks_inside_an_area_inside_a_category_model.dart';
export 'all_tracks_inside_an_area_inside_a_category_model.dart';

class AllTracksInsideAnAreaInsideACategoryWidget extends StatefulWidget {
  const AllTracksInsideAnAreaInsideACategoryWidget({
    super.key,
    this.name,
    this.uid,
  });

  final String? name;
  final String? uid;

  @override
  State<AllTracksInsideAnAreaInsideACategoryWidget> createState() =>
      _AllTracksInsideAnAreaInsideACategoryWidgetState();
}

class _AllTracksInsideAnAreaInsideACategoryWidgetState
    extends State<AllTracksInsideAnAreaInsideACategoryWidget> {
  late AllTracksInsideAnAreaInsideACategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AllTracksInsideAnAreaInsideACategoryModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
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
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          widget.name,
                          'Vazio',
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF383438),
                          fontWeight: FontWeight.w600,
                          fontSize: 19.0,
                        ),
                      ),
                    ),
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
                  ].divide(const SizedBox(width: 8.0)),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: WfBerearGroup.getTrackSpecialtiesCall.call(
                      token: currentAuthenticationToken,
                      uid: widget.uid,
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
                      final wrapGetTrackSpecialtiesResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final tracks33 = WfBerearGroup.getTrackSpecialtiesCall
                                  .tracks(
                                    wrapGetTrackSpecialtiesResponse.jsonBody,
                                  )
                                  ?.toList() ??
                              [];

                          return Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children:
                                List.generate(tracks33.length, (tracks33Index) {
                              final tracks33Item = tracks33[tracks33Index];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().playlistSelecionada =
                                      tracks33Item;
                                  FFAppState().conteudoSelecionado = null;
                                  if (currentUserData!.isFree) {
                                    if (() {
                                      if (!currentUserData!.isFree) {
                                        return true;
                                      } else if (getJsonField(
                                        tracks33Item,
                                        r'''$.isFree''',
                                      )) {
                                        return true;
                                      } else if (!getJsonField(
                                            tracks33Item,
                                            r'''$.isFree''',
                                          ) &&
                                          getJsonField(
                                            tracks33Item,
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
                                          'track': serializeParam(
                                            tracks33Item,
                                            ParamType.JSON,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else {
                                      context.pushNamed(
                                        'TrackBuy',
                                        queryParameters: {
                                          'track': serializeParam(
                                            tracks33Item,
                                            ParamType.JSON,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else {
                                    context.pushNamed(
                                      'Track',
                                      queryParameters: {
                                        'track': serializeParam(
                                          tracks33Item,
                                          ParamType.JSON,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.418,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 183.0,
                                              decoration: BoxDecoration(
                                                gradient: const LinearGradient(
                                                  colors: [
                                                    Color(0xFF164892),
                                                    Color(0xFF5B95AE)
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.81, -1.0),
                                                  end: AlignmentDirectional(
                                                      -0.81, 1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
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
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    BackdropFilter(
                                                                  filter:
                                                                      ImageFilter
                                                                          .blur(
                                                                    sigmaX: 2.0,
                                                                    sigmaY: 2.0,
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0x66FFFFFF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              24.0),
                                                                    ),
                                                                    child: const Icon(
                                                                      Icons
                                                                          .favorite_border,
                                                                      color: Color(
                                                                          0xFFF6F9FB),
                                                                      size:
                                                                          12.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            width: 100.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: const Color(
                                                                    0xFFFFFBFB),
                                                              ),
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                functions.containsHttps(
                                                                        getJsonField(
                                                                  tracks33Item,
                                                                  r'''$.image''',
                                                                ).toString())
                                                                    ? getJsonField(
                                                                        tracks33Item,
                                                                        r'''$.image''',
                                                                      ).toString()
                                                                    : 'https:${getJsonField(
                                                                        tracks33Item,
                                                                        r'''$.image''',
                                                                      ).toString()}',
                                                                width: 108.0,
                                                                height: 92.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0x4D000000),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24.0),
                                                                ),
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
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '${getJsonField(
                                                                            tracks33Item,
                                                                            r'''$.numbers_audios''',
                                                                          ).toString()} audiobooks',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFFF0F2F4),
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/Playlist.png',
                                                                          width:
                                                                              10.0,
                                                                          height:
                                                                              10.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              if (!getJsonField(
                                                                tracks33Item,
                                                                r'''$.isFree''',
                                                              ))
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Crown_(1).svg',
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 12.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r4kb59qy' /* TRACK */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: const Color(
                                                                  0xFF6A646B),
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      tracks33Item,
                                                      r'''$.title_track''',
                                                    ).toString(),
                                                    maxLines: 3,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                            getJsonField(
                                                              tracks33Item,
                                                              r'''$.create_track''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF6A646B),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ),
                                                        const Icon(
                                                          Icons.circle,
                                                          color:
                                                              Color(0xFF6A646B),
                                                          size: 5.0,
                                                        ),
                                                        Flexible(
                                                          child: Text(
                                                            functions
                                                                .secondsToTimeV2(
                                                                    getJsonField(
                                                              tracks33Item,
                                                              r'''$.segundos''',
                                                            )),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF6A646B),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ),
                                                        if (getJsonField(
                                                              tracks33Item,
                                                              r'''$.rating''',
                                                            ) !=
                                                            null)
                                                          const Icon(
                                                            Icons.circle,
                                                            color: Color(
                                                                0xFF6A646B),
                                                            size: 5.0,
                                                          ),
                                                        if (getJsonField(
                                                              tracks33Item,
                                                              r'''$.rating''',
                                                            ) !=
                                                            null)
                                                          Flexible(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: Color(
                                                                      0xFFFFB45E),
                                                                  size: 12.0,
                                                                ),
                                                                Flexible(
                                                                  child: Text(
                                                                    getJsonField(
                                                                      tracks33Item,
                                                                      r'''$.rating''',
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
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 2.0)),
                                                            ),
                                                          ),
                                                      ].divide(
                                                          const SizedBox(width: 5.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ],
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
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
