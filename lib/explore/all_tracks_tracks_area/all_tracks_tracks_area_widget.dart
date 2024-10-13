import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_tracks_tracks_area_model.dart';
export 'all_tracks_tracks_area_model.dart';

class AllTracksTracksAreaWidget extends StatefulWidget {
  const AllTracksTracksAreaWidget({
    super.key,
    int? tipo,
  }) : tipo = tipo ?? 1;

  final int tipo;

  @override
  State<AllTracksTracksAreaWidget> createState() =>
      _AllTracksTracksAreaWidgetState();
}

class _AllTracksTracksAreaWidgetState extends State<AllTracksTracksAreaWidget> {
  late AllTracksTracksAreaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTracksTracksAreaModel());
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
                          'px3uqoy8' /* Tracks areas */,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                    final listViewAreaHorseResponse = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final areaHH = WfGroup.areaHorseCall
                                .area(
                                  listViewAreaHorseResponse.jsonBody,
                                )
                                ?.toList() ??
                            [];

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: areaHH.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                          itemBuilder: (context, areaHHIndex) {
                            final areaHHItem = areaHH[areaHHIndex];
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
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: getJsonField(
                                          areaHHItem,
                                          r'''$.name''',
                                        ).toString(),
                                        ptText: getJsonField(
                                          areaHHItem,
                                          r'''$.name_portuguese''',
                                        ).toString(),
                                      ),
                                      ParamType.String,
                                    ),
                                    'uid': serializeParam(
                                      getJsonField(
                                        areaHHItem,
                                        r'''$._id''',
                                      ).toString(),
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
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: getJsonField(
                                          areaHHItem,
                                          r'''$.name''',
                                        ).toString(),
                                        ptText: getJsonField(
                                          areaHHItem,
                                          r'''$.name_portuguese''',
                                        ).toString(),
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
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
