import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tracks/components/more_settings_track/more_settings_track_widget.dart';
import '/tracks/components/rate_track/rate_track_widget.dart';
import '/tracks/components/see_more_about/see_more_about_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'track_model.dart';
export 'track_model.dart';

class TrackWidget extends StatefulWidget {
  const TrackWidget({
    super.key,
    required this.track,
  });

  final dynamic track;

  @override
  State<TrackWidget> createState() => _TrackWidgetState();
}

class _TrackWidgetState extends State<TrackWidget> {
  late TrackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: WfBerearGroup.getTrackByIdCall.call(
        trackId: getJsonField(
          widget.track,
          r'''$.id_track''',
        ).toString(),
        token: currentAuthenticationToken,
        language: currentUserData?.linguagemPreferida,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 30.0,
                height: 30.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final trackGetTrackByIdResponse = snapshot.data!;

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
                        children: [
                          wrapWithModel(
                            model: _model.componentVoltarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const ComponentVoltarWidget(),
                          ),
                          Expanded(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'qe4wum34' /* Track */,
                              ),
                              style: const TextStyle(
                                color: Color(0xFF383438),
                                fontWeight: FontWeight.w600,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                                            child: MoreSettingsTrackWidget(
                                              track: widget.track!,
                                              ocultarRateTrack: false,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));

                                  FFAppState().clipboard =
                                      'scienceplayapp://scienceplayapp.com${GoRouterState.of(context).uri.toString()}';
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: const BoxDecoration(),
                                  child: Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFEEE7ED),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.keyboard_control,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 16.0, 24.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 250.0,
                                          height: 222.0,
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFF164892),
                                                Color(0xFF5B95AE)
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  0.94, -1.0),
                                              end: AlignmentDirectional(
                                                  -0.94, 1.0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.3),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.transparent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  4.0,
                                                                  8.0,
                                                                  4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            '${getJsonField(
                                                              widget.track,
                                                              r'''$.numbers_audios''',
                                                            ).toString()} audiobooks',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0x00FFFFFF),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
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
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            const Color(0x4C000000),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    4.0,
                                                                    8.0,
                                                                    4.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Crown_(1).svg',
                                                            width: 10.0,
                                                            height: 10.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                Flexible(
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    child: Container(
                                                      width: 138.0,
                                                      height: 119.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    1.5,
                                                                    1.5,
                                                                    1.5,
                                                                    1.5),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          child: Image.network(
                                                            getJsonField(
                                                              widget.track,
                                                              r'''$.image''',
                                                            ).toString(),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0x4C000000),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  4.0,
                                                                  8.0,
                                                                  4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            '${getJsonField(
                                                              widget.track,
                                                              r'''$.numbers_audios''',
                                                            ).toString()} audiobooks',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Playlist.svg',
                                                              width: 10.0,
                                                              height: 10.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 12.0)),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            getJsonField(
                                              widget.track,
                                              r'''$.title_track''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: const Color(0xFF2B282B),
                                                  fontSize: 19.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/icon.png',
                                                  width: 16.7,
                                                  height: 16.7,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '4990v30o' /* by Science Play */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF514C52),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(width: 8.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                getJsonField(
                                                  widget.track,
                                                  r'''$.create_track''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF6A646B),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                              const Icon(
                                                Icons.circle,
                                                color: Color(0xFF6A646B),
                                                size: 4.0,
                                              ),
                                              Text(
                                                functions.secondsToTimeV2(
                                                    getJsonField(
                                                  widget.track,
                                                  r'''$.segundos''',
                                                )),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF6A646B),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                              const Icon(
                                                Icons.circle,
                                                color: Color(0xFF6A646B),
                                                size: 4.0,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
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
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  RateTrackWidget(
                                                                track: widget
                                                                    .track!,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            Color(0xFFFFB45E),
                                                        size: 12.0,
                                                      ),
                                                      if (getJsonField(
                                                            widget.track,
                                                            r'''$.rating''',
                                                          ) !=
                                                          null)
                                                        Text(
                                                          getJsonField(
                                                            widget.track,
                                                            r'''$.rating''',
                                                          ).toString(),
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
                                                                        .normal,
                                                              ),
                                                        ),
                                                      if (getJsonField(
                                                            widget.track,
                                                            r'''$.rating''',
                                                          ) ==
                                                          null)
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'f813xxpc' /* Rate this track */,
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
                                                                        .normal,
                                                              ),
                                                        ),
                                                    ].divide(
                                                        const SizedBox(width: 2.0)),
                                                  ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                        ].divide(const SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (!FFAppState()
                                            .badgeIniciouUmaPlaylist) {
                                          _model.apiResultIniciouPlaylist1 =
                                              await WfBerearGroup
                                                  .iniciouUmaPlaylistCall
                                                  .call(
                                            token: currentAuthenticationToken,
                                          );

                                          if ((_model.apiResultIniciouPlaylist1
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState()
                                                .badgeIniciouUmaPlaylist = true;
                                            safeSetState(() {});
                                            FFAppState()
                                                .clearQueryUserBadgesCache();
                                          }
                                        }

                                        context.pushNamed(
                                          'Inside_audio',
                                          queryParameters: {
                                            'audios': serializeParam(
                                              getJsonField(
                                                WfBerearGroup.getTrackByIdCall
                                                    .track(
                                                  trackGetTrackByIdResponse
                                                      .jsonBody,
                                                ),
                                                r'''$.audios''',
                                                true,
                                              ),
                                              ParamType.JSON,
                                              isList: true,
                                            ),
                                            'specialties': serializeParam(
                                              functions.getSpecialties(
                                                  getJsonField(
                                                    WfBerearGroup
                                                        .getTrackByIdCall
                                                        .track(
                                                      trackGetTrackByIdResponse
                                                          .jsonBody,
                                                    ),
                                                    r'''$.audios''',
                                                    true,
                                                  )!,
                                                  0),
                                              ParamType.JSON,
                                              isList: true,
                                            ),
                                            'indexSelecionado': serializeParam(
                                              0,
                                              ParamType.int,
                                            ),
                                            'numberAudios': serializeParam(
                                              getJsonField(
                                                widget.track,
                                                r'''$.numbers_audios''',
                                              ),
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );

                                        safeSetState(() {});
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.solidPlayCircle,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 64.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 14.0, 0.0, 14.0),
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
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: SeeMoreAboutWidget(
                                                  about: getJsonField(
                                                    WfBerearGroup
                                                        .getTrackByIdCall
                                                        .track(
                                                      trackGetTrackByIdResponse
                                                          .jsonBody,
                                                    ),
                                                    r'''$.about''',
                                                  ).toString(),
                                                  isContent: false,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEE7ED),
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
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xxcxzoid' /* About this track */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 19.0,
                                              ),
                                            ),
                                            Text(
                                              getJsonField(
                                                        WfBerearGroup
                                                            .getTrackByIdCall
                                                            .track(
                                                          trackGetTrackByIdResponse
                                                              .jsonBody,
                                                        ),
                                                        r'''$.about''',
                                                      ) !=
                                                      null
                                                  ? getJsonField(
                                                      WfBerearGroup
                                                          .getTrackByIdCall
                                                          .track(
                                                        trackGetTrackByIdResponse
                                                            .jsonBody,
                                                      ),
                                                      r'''$.about''',
                                                    ).toString()
                                                  : FFLocalizations.of(context)
                                                      .getVariableText(
                                                      enText:
                                                          'Failed to load this information.',
                                                      ptText:
                                                          'Falha ao carregar essa informação.',
                                                    ),
                                              maxLines: 3,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF514C52),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '674tag58' /* See more */,
                                                ),
                                                maxLines: 3,
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'y4y3yia3' /* Audios */,
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: const Color(0xFF383438),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19.0,
                                        ),
                                      ),
                                      if (getJsonField(
                                            WfBerearGroup.getTrackByIdCall
                                                .track(
                                              trackGetTrackByIdResponse
                                                  .jsonBody,
                                            ),
                                            r'''$.audios''',
                                          ) !=
                                          null)
                                        Builder(
                                          builder: (context) {
                                            final audios = getJsonField(
                                              WfBerearGroup.getTrackByIdCall
                                                  .track(
                                                trackGetTrackByIdResponse
                                                    .jsonBody,
                                              ),
                                              r'''$.audios''',
                                            ).toList();

                                            return SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children:
                                                    List.generate(audios.length,
                                                        (audiosIndex) {
                                                  final audiosItem =
                                                      audios[audiosIndex];
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
                                                      if (!FFAppState()
                                                          .badgeIniciouUmaPlaylist) {
                                                        _model.apiResultIniciouPlaylist2 =
                                                            await WfBerearGroup
                                                                .iniciouUmaPlaylistCall
                                                                .call(
                                                          token:
                                                              currentAuthenticationToken,
                                                        );

                                                        if ((_model
                                                                .apiResultIniciouPlaylist1
                                                                ?.succeeded ??
                                                            true)) {
                                                          FFAppState()
                                                                  .badgeIniciouUmaPlaylist =
                                                              true;
                                                          safeSetState(() {});
                                                          FFAppState()
                                                              .clearQueryUserBadgesCache();
                                                        }
                                                      }

                                                      context.pushNamed(
                                                        'Inside_audio',
                                                        queryParameters: {
                                                          'audios':
                                                              serializeParam(
                                                            getJsonField(
                                                              WfBerearGroup
                                                                  .getTrackByIdCall
                                                                  .track(
                                                                trackGetTrackByIdResponse
                                                                    .jsonBody,
                                                              ),
                                                              r'''$.audios''',
                                                              true,
                                                            ),
                                                            ParamType.JSON,
                                                            isList: true,
                                                          ),
                                                          'specialties':
                                                              serializeParam(
                                                            functions
                                                                .getSpecialties(
                                                                    getJsonField(
                                                                      WfBerearGroup
                                                                          .getTrackByIdCall
                                                                          .track(
                                                                        trackGetTrackByIdResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      r'''$.audios''',
                                                                      true,
                                                                    )!,
                                                                    audiosIndex),
                                                            ParamType.JSON,
                                                            isList: true,
                                                          ),
                                                          'indexSelecionado':
                                                              serializeParam(
                                                            audiosIndex,
                                                            ParamType.int,
                                                          ),
                                                          'numberAudios':
                                                              serializeParam(
                                                            getJsonField(
                                                              widget.track,
                                                              r'''$.numbers_audios''',
                                                            ),
                                                            ParamType.int,
                                                          ),
                                                        }.withoutNulls,
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            getJsonField(
                                                              audiosItem,
                                                              r'''$.ordem''',
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
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    getJsonField(
                                                                      audiosItem,
                                                                      r'''$.cover_image''',
                                                                    ).toString(),
                                                                    width: 64.9,
                                                                    height:
                                                                        43.3,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  getJsonField(
                                                                    audiosItem,
                                                                    r'''$.title''',
                                                                  )
                                                                      .toString()
                                                                      .maybeHandleOverflow(
                                                                        maxChars:
                                                                            80,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF383438),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  getJsonField(
                                                                    audiosItem,
                                                                    r'''$.journal''',
                                                                  ).toString(),
                                                                  maxLines: 1,
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF6A646B),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .play_circle,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            12.0,
                                                                      ),
                                                                      Text(
                                                                        getJsonField(
                                                                          audiosItem,
                                                                          r'''$.views''',
                                                                        ).toString(),
                                                                        maxLines:
                                                                            1,
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontSize:
                                                                              10.0,
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .circle,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            4.0,
                                                                      ),
                                                                      Text(
                                                                        functions
                                                                            .secondsToTimeV2(getJsonField(
                                                                          audiosItem,
                                                                          r'''$.timeAudioSeconds''',
                                                                        )),
                                                                        maxLines:
                                                                            1,
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontSize:
                                                                              10.0,
                                                                        ),
                                                                      ),
                                                                      if (getJsonField(
                                                                            audiosItem,
                                                                            r'''$.rating''',
                                                                          ) !=
                                                                          null)
                                                                        Icon(
                                                                          Icons
                                                                              .circle,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              4.0,
                                                                        ),
                                                                      if (getJsonField(
                                                                            audiosItem,
                                                                            r'''$.rating''',
                                                                          ) !=
                                                                          null)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            const Icon(
                                                                              Icons.star_rounded,
                                                                              color: Color(0xFFFFB45E),
                                                                              size: 12.0,
                                                                            ),
                                                                            Text(
                                                                              getJsonField(
                                                                                audiosItem,
                                                                                r'''$.rating''',
                                                                              ).toString(),
                                                                              maxLines: 1,
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 10.0,
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 2.0)),
                                                                        ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Creditos_science_play_(3).svg',
                                                                      width:
                                                                          10.0,
                                                                      height:
                                                                          10.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '0onr1q27' /* 1 */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF383438),
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        4.0)),
                                                              ),
                                                            ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Icon(
                                                              Icons
                                                                  .keyboard_control_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 16.0,
                                                            ),
                                                        ].divide(const SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  );
                                                }).divide(
                                                        const SizedBox(height: 12.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      if (getJsonField(
                                            WfBerearGroup.getTrackByIdCall
                                                .track(
                                              trackGetTrackByIdResponse
                                                  .jsonBody,
                                            ),
                                            r'''$.audios''',
                                          ) ==
                                          null)
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'a4eh71pi' /* Failed to load these audios, p... */,
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.0,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                    ].divide(const SizedBox(height: 12.0)),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 18.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].addToStart(const SizedBox(height: 20.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
