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
import 'all_tracks_model.dart';
export 'all_tracks_model.dart';

class AllTracksWidget extends StatefulWidget {
  const AllTracksWidget({
    super.key,
    int? tipo,
  }) : tipo = tipo ?? 1;

  final int tipo;

  @override
  State<AllTracksWidget> createState() => _AllTracksWidgetState();
}

class _AllTracksWidgetState extends State<AllTracksWidget> {
  late AllTracksModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTracksModel());
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
            mainAxisSize: MainAxisSize.min,
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
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'riql7naw' /* All tracks */,
                              ),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: const Color(0xFF383438),
                                fontWeight: FontWeight.w600,
                                fontSize: 19.0,
                              ),
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
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '29lkop4e' /* Popular tracks */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF383438),
                                              fontSize: 19.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              'all_tracks_inside_a_group');
                                        },
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'icwzn2ev' /* See all */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFF7A3080),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FutureBuilder<ApiCallResponse>(
                                  future: WfBerearGroup.getAllTracksCall.call(
                                    token: currentAuthenticationToken,
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
                                    final listContentGetAllTracksResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final tracksf =
                                            WfBerearGroup.getAllTracksCall
                                                    .tracks(
                                                      listContentGetAllTracksResponse
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
                                            children:
                                                List.generate(tracksf.length,
                                                        (tracksfIndex) {
                                              final tracksfItem =
                                                  tracksf[tracksfIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState()
                                                          .playlistSelecionada =
                                                      tracksfItem;
                                                  FFAppState()
                                                          .conteudoSelecionado =
                                                      null;
                                                  if (currentUserData!.isFree) {
                                                    if (() {
                                                      if (!currentUserData!
                                                          .isFree) {
                                                        return true;
                                                      } else if (getJsonField(
                                                        tracksfItem,
                                                        r'''$.isFree''',
                                                      )) {
                                                        return true;
                                                      } else if (!getJsonField(
                                                            tracksfItem,
                                                            r'''$.isFree''',
                                                          ) &&
                                                          getJsonField(
                                                            tracksfItem,
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
                                                            tracksfItem,
                                                            ParamType.JSON,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      context.pushNamed(
                                                        'TrackBuy',
                                                        queryParameters: {
                                                          'track':
                                                              serializeParam(
                                                            tracksfItem,
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
                                                          tracksfItem,
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
                                                          BorderRadius.circular(
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
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 183.0,
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
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.81,
                                                                          -1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          -0.81,
                                                                          1.0),
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
                                                                  Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
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
                                                                            MainAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
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
                                                                          Container(
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              border: Border.all(
                                                                                color: const Color(0xFFFFFBFB),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                functions.containsHttps(getJsonField(
                                                                                  tracksfItem,
                                                                                  r'''$.image''',
                                                                                ).toString())
                                                                                    ? getJsonField(
                                                                                        tracksfItem,
                                                                                        r'''$.image''',
                                                                                      ).toString()
                                                                                    : 'https:${getJsonField(
                                                                                        tracksfItem,
                                                                                        r'''$.image''',
                                                                                      ).toString()}',
                                                                                width: 108.0,
                                                                                height: 92.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
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
                                                                                            tracksfItem,
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
                                                                                tracksfItem,
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
                                                              child: Column(
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
                                                                    alignment:
                                                                        const AlignmentDirectional(
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
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'krxamr6v' /* TRACK */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
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
                                                                      tracksfItem,
                                                                      r'''$.title_track''',
                                                                    ).toString(),
                                                                    maxLines: 3,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF383438),
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children:
                                                                          [
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            getJsonField(
                                                                              tracksfItem,
                                                                              r'''$.create_track''',
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
                                                                        const Icon(
                                                                          Icons
                                                                              .circle,
                                                                          color:
                                                                              Color(0xFF6A646B),
                                                                          size:
                                                                              5.0,
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            functions.secondsToTimeV2(valueOrDefault<int>(
                                                                              getJsonField(
                                                                                tracksfItem,
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
                                                                              tracksfItem,
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
                                                                              tracksfItem,
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
                                                                                      tracksfItem,
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
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 10.0)),
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
                                                    .addToEnd(
                                                        const SizedBox(width: 24.0)),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ].divide(const SizedBox(height: 24.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: WfGroup.areaHorseCall.call(),
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
                            final columnDinamicoAreaHorseResponse =
                                snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final areaH = WfGroup.areaHorseCall
                                        .area(
                                          columnDinamicoAreaHorseResponse
                                              .jsonBody,
                                        )
                                        ?.toList() ??
                                    [];

                                return SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(areaH.length,
                                        (areaHIndex) {
                                      final areaHItem = areaH[areaHIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5eeuofx3' /* See all */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF7A3080),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                8.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            getJsonField(
                                                              areaHItem,
                                                              r'''$.name''',
                                                            ).toString(),
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
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
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
                                                    context.pushNamed(
                                                      'all_tracks_inside_an_area',
                                                      queryParameters: {
                                                        'name': serializeParam(
                                                          getJsonField(
                                                            areaHItem,
                                                            r'''$.name''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'uid': serializeParam(
                                                          getJsonField(
                                                            areaHItem,
                                                            r'''$._id''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4joeofmb' /* See all */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF7A3080),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          FutureBuilder<ApiCallResponse>(
                                            future: WfBerearGroup
                                                .getTrackAreaCall
                                                .call(
                                              uid: getJsonField(
                                                areaHItem,
                                                r'''$._id''',
                                              ).toString(),
                                              token: currentAuthenticationToken,
                                            ),
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
                                              final listContentGetTrackAreaResponse =
                                                  snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  final tracksf = WfBerearGroup
                                                          .getTrackAreaCall
                                                          .tracks(
                                                            listContentGetTrackAreaResponse
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
                                                          tracksf.length,
                                                          (tracksfIndex) {
                                                        final tracksfItem =
                                                            tracksf[
                                                                tracksfIndex];
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
                                                            FFAppState()
                                                                    .playlistSelecionada =
                                                                tracksfItem;
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
                                                                  tracksfItem,
                                                                  r'''$.isFree''',
                                                                )) {
                                                                  return true;
                                                                } else if (!getJsonField(
                                                                      tracksfItem,
                                                                      r'''$.isFree''',
                                                                    ) &&
                                                                    getJsonField(
                                                                      tracksfItem,
                                                                      r'''$.purchased''',
                                                                    )) {
                                                                  return true;
                                                                } else {
                                                                  return false;
                                                                }
                                                              }()) {
                                                                context
                                                                    .pushNamed(
                                                                  'Track',
                                                                  queryParameters:
                                                                      {
                                                                    'track':
                                                                        serializeParam(
                                                                      tracksfItem,
                                                                      ParamType
                                                                          .JSON,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              } else {
                                                                context
                                                                    .pushNamed(
                                                                  'TrackBuy',
                                                                  queryParameters:
                                                                      {
                                                                    'track':
                                                                        serializeParam(
                                                                      tracksfItem,
                                                                      ParamType
                                                                          .JSON,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              }
                                                            } else {
                                                              context.pushNamed(
                                                                'Track',
                                                                queryParameters:
                                                                    {
                                                                  'track':
                                                                      serializeParam(
                                                                    tracksfItem,
                                                                    ParamType
                                                                        .JSON,
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
                                                                                            tracksfItem,
                                                                                            r'''$.image''',
                                                                                          ).toString())
                                                                                              ? getJsonField(
                                                                                                  tracksfItem,
                                                                                                  r'''$.image''',
                                                                                                ).toString()
                                                                                              : 'https:${getJsonField(
                                                                                                  tracksfItem,
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
                                                                                                      tracksfItem,
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
                                                                                          tracksfItem,
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
                                                                                    'npdd5oaj' /* TRACK */,
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
                                                                                tracksfItem,
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
                                                                                      getJsonField(
                                                                                        tracksfItem,
                                                                                        r'''$.create_track''',
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
                                                                                  const Icon(
                                                                                    Icons.circle,
                                                                                    color: Color(0xFF6A646B),
                                                                                    size: 5.0,
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Text(
                                                                                      functions.secondsToTimeV2(getJsonField(
                                                                                        tracksfItem,
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
                                                                                        tracksfItem,
                                                                                        r'''$.rating''',
                                                                                      ) !=
                                                                                      null)
                                                                                    const Icon(
                                                                                      Icons.circle,
                                                                                      color: Color(0xFF6A646B),
                                                                                      size: 5.0,
                                                                                    ),
                                                                                  if (getJsonField(
                                                                                        tracksfItem,
                                                                                        r'''$.rating''',
                                                                                      ) !=
                                                                                      null)
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        const Icon(
                                                                                          Icons.star,
                                                                                          color: Color(0xFFFFB45E),
                                                                                          size: 12.0,
                                                                                        ),
                                                                                        Text(
                                                                                          getJsonField(
                                                                                            tracksfItem,
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
                                                                                      ].divide(const SizedBox(width: 2.0)),
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
                                                      }).divide(const SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      );
                                    }).divide(const SizedBox(height: 24.0)),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '6v4r10qj' /* Areas */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF383438),
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ulkq84h8' /* See all */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF7A3080),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context
                                          .pushNamed('all_tracks_tracks_area');
                                    },
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '9rhedbwz' /* See all */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF7A3080),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              FutureBuilder<ApiCallResponse>(
                                future: WfGroup.areaHorseCall.call(),
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
                                  final listViewAreaHorseResponse =
                                      snapshot.data!;

                                  return Builder(
                                    builder: (context) {
                                      final areaHH = WfGroup.areaHorseCall
                                              .area(
                                                listViewAreaHorseResponse
                                                    .jsonBody,
                                              )
                                              ?.toList() ??
                                          [];

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: areaHH.length,
                                        separatorBuilder: (_, __) =>
                                            const SizedBox(height: 8.0),
                                        itemBuilder: (context, areaHHIndex) {
                                          final areaHHItem =
                                              areaHH[areaHHIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'all_tracks_inside_an_area',
                                                queryParameters: {
                                                  'name': serializeParam(
                                                    WfGroup.areaHorseCall.name(
                                                      listViewAreaHorseResponse
                                                          .jsonBody,
                                                    )?[areaHHIndex],
                                                    ParamType.String,
                                                  ),
                                                  'uid': serializeParam(
                                                    WfGroup.areaHorseCall.uid(
                                                      listViewAreaHorseResponse
                                                          .jsonBody,
                                                    )?[areaHHIndex],
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: const BoxDecoration(),
                                                  child: const Icon(
                                                    Icons.search_sharp,
                                                    color: Color(0xFFA669A9),
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      areaHHItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF7A3080),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ].divide(const SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 24.0))
                        .addToEnd(const SizedBox(height: 24.0)),
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
