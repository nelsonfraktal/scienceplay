import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book_content_quests_model.dart';
export 'book_content_quests_model.dart';

class BookContentQuestsWidget extends StatefulWidget {
  const BookContentQuestsWidget({
    super.key,
    required this.books,
  });

  final List<dynamic>? books;

  @override
  State<BookContentQuestsWidget> createState() =>
      _BookContentQuestsWidgetState();
}

class _BookContentQuestsWidgetState extends State<BookContentQuestsWidget> {
  late BookContentQuestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookContentQuestsModel());
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
                          'akfccf71' /* Book Quests */,
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
                  final book = widget.books!.toList();

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(book.length, (bookIndex) {
                      final bookItem = book[bookIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Content_quest',
                              queryParameters: {
                                'book': serializeParam(
                                  bookItem,
                                  ParamType.JSON,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 169.0,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF124184), Color(0xFF4889A2)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.87, -1.0),
                                end: AlignmentDirectional(-0.87, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      getJsonField(
                                        bookItem,
                                        r'''$.image''',
                                      ).toString(),
                                      width: 90.0,
                                      height: 137.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Flexible(
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${formatNumber(
                                              getJsonField(
                                                    bookItem,
                                                    r'''$.nChapters''',
                                                  ) /
                                                  2,
                                              formatType: FormatType.custom,
                                              format: '0',
                                              locale: '',
                                            )}, ${getJsonField(
                                              bookItem,
                                              r'''$.nChapters''',
                                            ).toString()} ou ${(getJsonField(
                                                  bookItem,
                                                  r'''$.nChapters''',
                                                ) * 2).toString()}${FFLocalizations.of(context).getVariableText(
                                              enText: ' days',
                                              ptText: ' dias',
                                            )}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: const Color(0xFFEBEEF0),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText: getJsonField(
                                                  bookItem,
                                                  r'''$.title_en''',
                                                ).toString(),
                                                ptText: getJsonField(
                                                  bookItem,
                                                  r'''$.title_pt''',
                                                ).toString(),
                                              ),
                                              maxLines: 3,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 19.0,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  getJsonField(
                                                    bookItem,
                                                    r'''$.author''',
                                                  ).toString(),
                                                  maxLines: 2,
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFFEAE9EB),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ),
                                              if ((String var1) {
                                                return var1 == 'In progress';
                                              }(getJsonField(
                                                bookItem,
                                                r'''$.status''',
                                              ).toString()))
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color(0x4C000000),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 4.0,
                                                                8.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            enText:
                                                                'In progress',
                                                            ptText:
                                                                'Em progresso',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .clock,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          size: 10.0,
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                  ),
                                                ),
                                              if ((String var1) {
                                                return var1 == 'Completed';
                                              }(getJsonField(
                                                bookItem,
                                                r'''$.status''',
                                              ).toString()))
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color(0x4C000000),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 4.0,
                                                                8.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            enText: 'Completed',
                                                            ptText:
                                                                'Completado',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .solidCheckCircle,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          size: 10.0,
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                  ),
                                                ),
                                              if ((String var1) {
                                                return var1 == 'start';
                                              }(getJsonField(
                                                bookItem,
                                                r'''$.status''',
                                              ).toString()))
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color(0x4C000000),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 4.0,
                                                                8.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            enText: 'Start now',
                                                            ptText:
                                                                'Comece agora',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Icon(
                                                          Icons.star_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          size: 10.0,
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                  ),
                                                ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              ),
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
