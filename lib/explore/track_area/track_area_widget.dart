import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'track_area_model.dart';
export 'track_area_model.dart';

class TrackAreaWidget extends StatefulWidget {
  const TrackAreaWidget({
    super.key,
    required this.nameArea,
    required this.idArea,
  });

  final String? nameArea;
  final String? idArea;

  @override
  State<TrackAreaWidget> createState() => _TrackAreaWidgetState();
}

class _TrackAreaWidgetState extends State<TrackAreaWidget> {
  late TrackAreaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackAreaModel());
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
        backgroundColor: const Color(0xFFFAFAFA),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: wrapWithModel(
                              model: _model.componentVoltarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: const ComponentVoltarWidget(),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: '${widget.nameArea} contents',
                                ptText: 'Conteúdos de ${widget.nameArea}',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 0.0),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: FutureBuilder<ApiCallResponse>(
                            future: WfBerearGroup.getContentByAreaCall.call(
                              areaId: widget.idArea,
                              token: currentAuthenticationToken,
                              language: currentUserData?.linguagemPreferida,
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
                              final listViewGetContentByAreaResponse =
                                  snapshot.data!;

                              return Builder(
                                builder: (context) {
                                  final content = WfBerearGroup
                                          .getContentByAreaCall
                                          .contentsBySpecialties(
                                            listViewGetContentByAreaResponse
                                                .jsonBody,
                                          )
                                          ?.where((e) => (getJsonField(
                                                e,
                                                r'''$.contents''',
                                              )
                                                          .toList()
                                                          .map<ContentStruct?>(
                                                              ContentStruct
                                                                  .maybeFromMap)
                                                          .toList()
                                                      as Iterable<
                                                          ContentStruct?>)
                                                  .withoutNulls
                                                  .isNotEmpty)
                                          .toList()
                                          .toList() ??
                                      [];

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: content.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 32.0),
                                    itemBuilder: (context, contentIndex) {
                                      final contentItem = content[contentIndex];
                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              getJsonField(
                                                contentItem,
                                                r'''$.name''',
                                              ).toString(),
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                            Builder(
                                              builder: (context) {
                                                final eachContent =
                                                    getJsonField(
                                                  contentItem,
                                                  r'''$.contents''',
                                                ).toList();

                                                return SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        eachContent.length,
                                                        (eachContentIndex) {
                                                      final eachContentItem =
                                                          eachContent[
                                                              eachContentIndex];
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
                                                              eachContentItem;
                                                          safeSetState(() {});
                                                          if (!getJsonField(
                                                                eachContentItem,
                                                                r'''$.isFree''',
                                                              ) &&
                                                              currentUserData!
                                                                  .isFree) {
                                                            context.pushNamed(
                                                              'Inside_content_buy',
                                                              queryParameters: {
                                                                'content':
                                                                    serializeParam(
                                                                  eachContentItem,
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
                                                                  eachContentItem,
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
                                                          constraints:
                                                              const BoxConstraints(
                                                            maxWidth: 180.0,
                                                          ),
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Stack(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                children: [
                                                                  Container(
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
                                                                            eachContentItem,
                                                                            r'''$.cover_image''',
                                                                          ).toString(),
                                                                        ).image,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                    ),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            180.0,
                                                                        height:
                                                                            120.0,
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
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (responsiveVisibility(
                                                                    context:
                                                                        context,
                                                                    phone:
                                                                        false,
                                                                    tablet:
                                                                        false,
                                                                    tabletLandscape:
                                                                        false,
                                                                    desktop:
                                                                        false,
                                                                  ))
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              const Color(0x19000000),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
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
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children:
                                                                                [
                                                                              Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xxak0rnx' /* 4 audiobooks */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      fontSize: 10.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/Playlist.svg',
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
                                                                ],
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  eachContentItem,
                                                                  r'''$.title''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                maxLines: 4,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFF2B282B),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 8.0)),
                                                          ),
                                                        ),
                                                      );
                                                    }).divide(
                                                        const SizedBox(width: 16.0)),
                                                  ),
                                                );
                                              },
                                            ),
                                          ].divide(const SizedBox(height: 16.0)),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
