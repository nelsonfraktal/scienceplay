import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_tracks_inside_a_group_model.dart';
export 'all_tracks_inside_a_group_model.dart';

class AllTracksInsideAGroupWidget extends StatefulWidget {
  const AllTracksInsideAGroupWidget({
    super.key,
    int? tipo,
  }) : tipo = tipo ?? 1;

  final int tipo;

  @override
  State<AllTracksInsideAGroupWidget> createState() =>
      _AllTracksInsideAGroupWidgetState();
}

class _AllTracksInsideAGroupWidgetState
    extends State<AllTracksInsideAGroupWidget> {
  late AllTracksInsideAGroupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTracksInsideAGroupModel());
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
                        FFLocalizations.of(context).getText(
                          '4ema4emy' /* Popular tracks */,
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
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final listViewGetAllTracksResponse = snapshot.data!;

                  return Builder(
                    builder: (context) {
                      final tracks1 = WfBerearGroup.getAllTracksCall
                              .tracks(
                                listViewGetAllTracksResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];

                      return ListView.separated(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          0,
                          0,
                          24.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: tracks1.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 24.0),
                        itemBuilder: (context, tracks1Index) {
                          final tracks1Item = tracks1[tracks1Index];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().playlistSelecionada = tracks1Item;
                                FFAppState().conteudoSelecionado = null;
                                if (currentUserData!.isFree) {
                                  if (() {
                                    if (!currentUserData!.isFree) {
                                      return true;
                                    } else if (getJsonField(
                                      tracks1Item,
                                      r'''$.isFree''',
                                    )) {
                                      return true;
                                    } else if (!getJsonField(
                                          tracks1Item,
                                          r'''$.isFree''',
                                        ) &&
                                        getJsonField(
                                          tracks1Item,
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
                                          tracks1Item,
                                          ParamType.JSON,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    context.pushNamed(
                                      'TrackBuy',
                                      queryParameters: {
                                        'track': serializeParam(
                                          tracks1Item,
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
                                        tracks1Item,
                                        ParamType.JSON,
                                      ),
                                    }.withoutNulls,
                                  );
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 66.0,
                                    height: 62.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          const Color(0xFF0CB09D),
                                          FlutterFlowTheme.of(context).secondary
                                        ],
                                        stops: const [0.0, 1.0],
                                        begin: const AlignmentDirectional(0.0, -1.0),
                                        end: const AlignmentDirectional(0, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: const Color(0xFFFFFBFB),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 10.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          functions.containsHttps(getJsonField(
                                            tracks1Item,
                                            r'''$.image''',
                                          ).toString())
                                              ? getJsonField(
                                                  tracks1Item,
                                                  r'''$.image''',
                                                ).toString()
                                              : 'https:${getJsonField(
                                                  tracks1Item,
                                                  r'''$.image''',
                                                ).toString()}',
                                          width: 108.0,
                                          height: 92.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(56.0),
                                                border: Border.all(
                                                  color: const Color(0xFFEAE9EB),
                                                  width: 0.5,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        7.0, 3.0, 7.0, 3.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      '${getJsonField(
                                                        tracks1Item,
                                                        r'''$.numbers_audios''',
                                                      ).toString()} audiobooks',
                                                      maxLines: 1,
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            const Color(0xFF6A646B),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 9.0,
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Playlist2.svg',
                                                        width: 10.0,
                                                        height: 10.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 4.0)),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 4.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              getJsonField(
                                                tracks1Item,
                                                r'''$.title_track''',
                                              ).toString(),
                                              textAlign: TextAlign.start,
                                              maxLines: 2,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 2.0)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              getJsonField(
                                                tracks1Item,
                                                r'''$.create_track''',
                                              ).toString(),
                                              maxLines: 1,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF6A646B),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10.0,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.circle,
                                              color: Color(0xFF6A646B),
                                              size: 5.0,
                                            ),
                                            Text(
                                              functions
                                                  .secondsToTimeV2(getJsonField(
                                                tracks1Item,
                                                r'''$.segundos''',
                                              )),
                                              maxLines: 1,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF6A646B),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10.0,
                                              ),
                                            ),
                                            if (getJsonField(
                                                  tracks1Item,
                                                  r'''$.rating''',
                                                ) !=
                                                null)
                                              const Icon(
                                                Icons.circle,
                                                color: Color(0xFF6A646B),
                                                size: 5.0,
                                              ),
                                            if (getJsonField(
                                                  tracks1Item,
                                                  r'''$.rating''',
                                                ) !=
                                                null)
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Star.svg',
                                                      width: 10.0,
                                                      height: 10.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      tracks1Item,
                                                      r'''$.rating''',
                                                    ).toString(),
                                                    maxLines: 1,
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: const Color(0xFF6A646B),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10.0,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 2.0)),
                                              ),
                                          ].divide(const SizedBox(width: 4.0)),
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
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
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(56.0),
                                        border: Border.all(
                                          color: const Color(0xFFEAE9EB),
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            7.0, 3.0, 7.0, 3.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              getJsonField(
                                                tracks1Item,
                                                r'''$.credits''',
                                              ).toString(),
                                              maxLines: 1,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF6A646B),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 9.0,
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                'assets/images/Creditos_science_play_(3).svg',
                                                width: 10.0,
                                                height: 10.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 4.0)),
                                        ),
                                      ),
                                    ),
                                  if (!getJsonField(
                                    tracks1Item,
                                    r'''$.isFree''',
                                  ))
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(56.0),
                                        border: Border.all(
                                          color: const Color(0xFFEAE9EB),
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            7.0, 3.0, 7.0, 3.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'j9z0mxii' /* Premium */,
                                              ),
                                              maxLines: 1,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF6A646B),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 9.0,
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                'assets/images/premium-black.svg',
                                                width: 10.0,
                                                height: 10.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 4.0)),
                                        ),
                                      ),
                                    ),
                                  Icon(
                                    Icons.chevron_right_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              ),
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
    );
  }
}
