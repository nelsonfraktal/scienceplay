import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'top_free_content_model.dart';
export 'top_free_content_model.dart';

class TopFreeContentWidget extends StatefulWidget {
  const TopFreeContentWidget({
    super.key,
    required this.content,
  });

  final List<dynamic>? content;

  @override
  State<TopFreeContentWidget> createState() => _TopFreeContentWidgetState();
}

class _TopFreeContentWidgetState extends State<TopFreeContentWidget> {
  late TopFreeContentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopFreeContentModel());
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
                          'g7fy99xc' /* Top free */,
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
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final content = widget.content!.toList();

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              List.generate(content.length, (contentIndex) {
                            final contentItem = content[contentIndex];
                            return Flexible(
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().conteudoSelecionado =
                                      contentItem;
                                  safeSetState(() {});
                                  if (!getJsonField(
                                        contentItem,
                                        r'''$.isFree''',
                                      ) &&
                                      currentUserData!.isFree) {
                                    context.pushNamed(
                                      'Inside_content_buy',
                                      queryParameters: {
                                        'content': serializeParam(
                                          contentItem,
                                          ParamType.JSON,
                                        ),
                                        'typeContent': serializeParam(
                                          TypeContent.Audio,
                                          ParamType.Enum,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    context.pushNamed(
                                      'Inside_content',
                                      queryParameters: {
                                        'content': serializeParam(
                                          contentItem,
                                          ParamType.JSON,
                                        ),
                                        'typeContent': serializeParam(
                                          TypeContent.Audio,
                                          ParamType.Enum,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                },
                                child: Container(
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                getJsonField(
                                                  contentItem,
                                                  r'''$.cover_image''',
                                                ).toString(),
                                                width: 87.0,
                                                height: 104.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                          desktop: false,
                                                        ))
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          56.0),
                                                              border:
                                                                  Border.all(
                                                                color: const Color(
                                                                    0xFFEAE9EB),
                                                                width: 0.5,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          7.0,
                                                                          3.0,
                                                                          7.0,
                                                                          3.0),
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
                                                                      'assets/images/Book.svg',
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
                                                                      'z65qf18x' /* Article */,
                                                                    ),
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
                                                                          9.0,
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        4.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        56.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0xFFEAE9EB),
                                                              width: 0.5,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        4.0,
                                                                        8.0,
                                                                        4.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'vi3tu11e' /* Free */,
                                                              ),
                                                              maxLines: 1,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF6A646B),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 9.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                    Text(
                                                      getJsonField(
                                                        contentItem,
                                                        r'''$.title''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            const Color(0xFF383438),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 11.0,
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/News.svg',
                                                                width: 9.0,
                                                                height: 9.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                getJsonField(
                                                                  contentItem,
                                                                  r'''$.journal''',
                                                                ).toString(),
                                                                maxLines: 1,
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: const Color(
                                                                      0xFF6A646B),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize: 9.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 2.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              getJsonField(
                                                                contentItem,
                                                                r'''$.year''',
                                                              ).toString(),
                                                              maxLines: 1,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF6A646B),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 9.0,
                                                              ),
                                                            ),
                                                            const Icon(
                                                              Icons.circle,
                                                              color: Color(
                                                                  0xFF6A646B),
                                                              size: 5.0,
                                                            ),
                                                            Text(
                                                              functions
                                                                  .secondsToTimeV2(
                                                                      getJsonField(
                                                                contentItem,
                                                                r'''$.timeAudioSeconds''',
                                                              )),
                                                              maxLines: 1,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF6A646B),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 9.0,
                                                              ),
                                                            ),
                                                            if (getJsonField(
                                                                  contentItem,
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
                                                                  contentItem,
                                                                  r'''$.rating''',
                                                                ) !=
                                                                null)
                                                              Row(
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
                                                                      'assets/images/Star.svg',
                                                                      width:
                                                                          10.0,
                                                                      height:
                                                                          10.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      contentItem,
                                                                      r'''$.rating''',
                                                                    ).toString(),
                                                                    maxLines: 1,
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: const Color(
                                                                          0xFF6A646B),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          9.0,
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        2.0)),
                                                              ),
                                                          ].divide(const SizedBox(
                                                              width: 4.0)),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 4.0)),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 104.0,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  if (!getJsonField(
                                                    contentItem,
                                                    r'''$.favorited''',
                                                  ))
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
                                                        _model.apiResultAddFavoriteContent =
                                                            await WfBerearGroup
                                                                .addFavoriteContentCall
                                                                .call(
                                                          contentId:
                                                              getJsonField(
                                                            contentItem,
                                                            r'''$.id''',
                                                          ).toString(),
                                                          token:
                                                              currentAuthenticationToken,
                                                        );

                                                        if ((_model
                                                                .apiResultAddFavoriteContent
                                                                ?.succeeded ??
                                                            true)) {
                                                          await actions
                                                              .setBoolValueInJson(
                                                            contentItem,
                                                            'favorited',
                                                            true,
                                                          );
                                                          await action_blocks
                                                              .clearQueryCacheContent(
                                                                  context);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  enText:
                                                                      'Content added to favorites.',
                                                                  ptText:
                                                                      'Conteúdo adicionado aos favoritos.',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                            ),
                                                          );
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  enText:
                                                                      'Something is wrong, try again.',
                                                                  ptText:
                                                                      'Algo deu errado, tente novamente.',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                            ),
                                                          );
                                                        }

                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0x65919191),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  4.0),
                                                          child: Icon(
                                                            Icons
                                                                .favorite_border,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            size: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (getJsonField(
                                                    contentItem,
                                                    r'''$.favorited''',
                                                  ))
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
                                                        _model.apiResultRemoveFavoriteContent =
                                                            await WfBerearGroup
                                                                .removeFavoriteContentCall
                                                                .call(
                                                          contentId:
                                                              getJsonField(
                                                            contentItem,
                                                            r'''$.id''',
                                                          ).toString(),
                                                          token:
                                                              currentAuthenticationToken,
                                                        );

                                                        if ((_model
                                                                .apiResultRemoveFavoriteContent
                                                                ?.succeeded ??
                                                            true)) {
                                                          await actions
                                                              .setBoolValueInJson(
                                                            contentItem,
                                                            'favorited',
                                                            false,
                                                          );
                                                          await action_blocks
                                                              .clearQueryCacheContent(
                                                                  context);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  enText:
                                                                      'Content removed from favorites.',
                                                                  ptText:
                                                                      'Conteúdo removido dos favoritos.',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                            ),
                                                          );
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  enText:
                                                                      'Something is wrong, try again.',
                                                                  ptText:
                                                                      'Algo deu errado, tente novamente.',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                            ),
                                                          );
                                                        }

                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0x65919191),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  4.0),
                                                          child: Icon(
                                                            Icons
                                                                .favorite_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            size: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 12.0)),
                                        ),
                                      ),
                                      const Divider(
                                        height: 1.0,
                                        thickness: 1.0,
                                        color: Color(0xFFEAE9EB),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
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
