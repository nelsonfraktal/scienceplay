import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'global_ranking_model.dart';
export 'global_ranking_model.dart';

class GlobalRankingWidget extends StatefulWidget {
  const GlobalRankingWidget({
    super.key,
    required this.listGlobalRanking,
  });

  final List<dynamic>? listGlobalRanking;

  @override
  State<GlobalRankingWidget> createState() => _GlobalRankingWidgetState();
}

class _GlobalRankingWidgetState extends State<GlobalRankingWidget> {
  late GlobalRankingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GlobalRankingModel());
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
                          'wknehvln' /* Global Ranking */,
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
              Builder(
                builder: (context) {
                  final itemGlobalRank = widget.listGlobalRanking!.toList();

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(itemGlobalRank.length,
                        (itemGlobalRankIndex) {
                      final itemGlobalRankItem =
                          itemGlobalRank[itemGlobalRankIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'inside_the_global_ranking',
                            queryParameters: {
                              'topic': serializeParam(
                                itemGlobalRankItem,
                                ParamType.JSON,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 169.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        functions.containsHttps(getJsonField(
                                          itemGlobalRankItem,
                                          r'''$.thumb''',
                                        ).toString())
                                            ? getJsonField(
                                                itemGlobalRankItem,
                                                r'''$.thumb''',
                                              ).toString()
                                            : 'https:${getJsonField(
                                                itemGlobalRankItem,
                                                r'''$.thumb''',
                                              ).toString()}',
                                      ).image,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          getJsonField(
                                            itemGlobalRankItem,
                                            r'''$.title''',
                                          ).toString(),
                                          maxLines: 1,
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: const Color(0xFF383438),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                        Text(
                                          getJsonField(
                                            itemGlobalRankItem,
                                            r'''$.description''',
                                          ).toString(),
                                          maxLines: 3,
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: const Color(0xFF9D979E),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).divide(const SizedBox(height: 16.0)),
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
