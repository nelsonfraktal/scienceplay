import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'explore_model.dart';
export 'explore_model.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({super.key});

  @override
  State<ExploreWidget> createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  late ExploreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
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
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: RefreshIndicator(
                      onRefresh: () async {
                        FFAppState().clearQueryContentsWeLoveCache();
                        safeSetState(() {
                          FFAppState().clearQueryContentsWeLoveCache();
                          _model.apiRequestCompleted5 = false;
                        });
                        FFAppState().clearQueryContentsTopFreeCache();
                        safeSetState(() {
                          FFAppState().clearQueryContentsTopFreeCache();
                          _model.apiRequestCompleted7 = false;
                        });
                        FFAppState().clearQueryContentsTopPremiumCache();
                        safeSetState(() {
                          FFAppState().clearQueryContentsTopPremiumCache();
                          _model.apiRequestCompleted3 = false;
                        });
                        FFAppState().clearQueryGlobalRankingCache();
                        safeSetState(() {
                          FFAppState().clearQueryGlobalRankingCache();
                          _model.apiRequestCompleted2 = false;
                        });
                        FFAppState().clearQueryGetAllTrackInExploreCache();
                        safeSetState(() {
                          FFAppState().clearQueryGetAllTrackInExploreCache();
                          _model.apiRequestCompleted4 = false;
                        });
                        await _model.waitForApiRequestCompleted4();
                        FFAppState().clearQueryAreaHorseCache();
                        safeSetState(() {
                          FFAppState().clearQueryAreaHorseCache();
                          _model.apiRequestCompleted1 = false;
                        });
                        await _model.waitForApiRequestCompleted1();
                        FFAppState().clearQueryGetContentQuestBookCache();
                        safeSetState(() {
                          FFAppState().clearQueryGetContentQuestBookCache();
                          _model.apiRequestCompleted6 = false;
                        });
                        await _model.waitForApiRequestCompleted6();
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
                                  24.0, 32.0, 24.0, 0.0),
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
                                        'bsl7wvxw' /* Explore */,
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
                                  24.0, 32.0, 24.0, 40.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'SearchExplore',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration:
                                                Duration(milliseconds: 300),
                                          ),
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10.0,
                                            color: Color(0x1A000000),
                                            offset: Offset(
                                              0.0,
                                              0.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Icon(
                                              Icons.search_sharp,
                                              color: Color(0xFFA669A9),
                                              size: 24.0,
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8shhshsl' /* Search */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xFF9D979E),
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ].divide(const SizedBox(width: 12.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (FFAppState().historicoPesquisa.isNotEmpty)
                                    Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(),
                                      child: Builder(
                                        builder: (context) {
                                          final pesquisa = functions
                                              .reverseList(FFAppState()
                                                  .historicoPesquisa
                                                  .toList())
                                              .toList();

                                          return Wrap(
                                            spacing: 16.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.antiAlias,
                                            children:
                                                List.generate(pesquisa.length,
                                                    (pesquisaIndex) {
                                              final pesquisaItem =
                                                  pesquisa[pesquisaIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'SearchExplore',
                                                    queryParameters: {
                                                      'pesquisa':
                                                          serializeParam(
                                                        pesquisaItem,
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 300),
                                                      ),
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.4,
                                                  decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: const Icon(
                                                              Icons
                                                                  .search_sharp,
                                                              color: Color(
                                                                  0xFFA669A9),
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              pesquisaItem
                                                                  .maybeHandleOverflow(
                                                                maxChars: 24,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 1.0,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color:
                                                              Color(0xFFEAE9EB),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    ),
                                ].divide(const SizedBox(height: 32.0)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 40.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FutureBuilder<ApiCallResponse>(
                                    future: FFAppState()
                                        .queryContentsWeLove(
                                      requestFn: () => WfBerearGroup
                                          .getContentThatWeLoveCall
                                          .call(
                                        language:
                                            currentUserData?.linguagemPreferida,
                                        token: currentAuthenticationToken,
                                      ),
                                    )
                                        .then((result) {
                                      _model.apiRequestCompleted5 = true;
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
                                      final containerContentWeLoveGetContentThatWeLoveResponse =
                                          snapshot.data!;

                                      return Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'e9igxtbm' /* Content that we love */,
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
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  if (getJsonField(
                                                        containerContentWeLoveGetContentThatWeLoveResponse
                                                            .jsonBody,
                                                        r'''$.contents''',
                                                      ) !=
                                                      null)
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
                                                          'content_that_we_love',
                                                          queryParameters: {
                                                            'contents':
                                                                serializeParam(
                                                              getJsonField(
                                                                containerContentWeLoveGetContentThatWeLoveResponse
                                                                    .jsonBody,
                                                                r'''$.contents''',
                                                                true,
                                                              ),
                                                              ParamType.JSON,
                                                              isList: true,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '71yp0wxj' /* See all */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            if (getJsonField(
                                                  containerContentWeLoveGetContentThatWeLoveResponse
                                                      .jsonBody,
                                                  r'''$.contents''',
                                                ) !=
                                                null)
                                              Builder(
                                                builder: (context) {
                                                  final contentsLoved =
                                                      getJsonField(
                                                    containerContentWeLoveGetContentThatWeLoveResponse
                                                        .jsonBody,
                                                    r'''$.contents''',
                                                  ).toList().take(5).toList();

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
                                                              contentsLoved
                                                                  .length,
                                                              (contentsLovedIndex) {
                                                        final contentsLovedItem =
                                                            contentsLoved[
                                                                contentsLovedIndex];
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
                                                                    .conteudoSelecionado =
                                                                contentsLovedItem;
                                                            safeSetState(() {});
                                                            if (!getJsonField(
                                                                  contentsLovedItem,
                                                                  r'''$.isFree''',
                                                                ) &&
                                                                currentUserData!
                                                                    .isFree) {
                                                              context.pushNamed(
                                                                'Inside_content_buy',
                                                                queryParameters:
                                                                    {
                                                                  'content':
                                                                      serializeParam(
                                                                    contentsLovedItem,
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
                                                                queryParameters:
                                                                    {
                                                                  'content':
                                                                      serializeParam(
                                                                    contentsLovedItem,
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
                                                                  width: 183.0,
                                                                  height: 143.0,
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
                                                                          contentsLovedItem,
                                                                          r'''$.cover_image''',
                                                                        ).toString(),
                                                                      ).image,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              double.infinity,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                LinearGradient(
                                                                              colors: [
                                                                                const Color(0x007A3080),
                                                                                FlutterFlowTheme.of(context).primary
                                                                              ],
                                                                              stops: const [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: const AlignmentDirectional(0.0, -1.0),
                                                                              end: const AlignmentDirectional(0, 1.0),
                                                                            ),
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
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    if (!getJsonField(
                                                                                          contentsLovedItem,
                                                                                          r'''$.isFree''',
                                                                                        ) &&
                                                                                        currentUserData!.isFree)
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                        child: BackdropFilter(
                                                                                          filter: ImageFilter.blur(
                                                                                            sigmaX: 2.0,
                                                                                            sigmaY: 2.0,
                                                                                          ),
                                                                                          child: Container(
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
                                                                                                  Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      FFLocalizations.of(context).getText(
                                                                                                        'rgt6f4q1' /* Premium */,
                                                                                                      ),
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
                                                                                                    child: SvgPicture.asset(
                                                                                                      'assets/images/Crown_(1).svg',
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
                                                                                      ),

                                                                                    // Apenas para quando premium for invisível, o coração não se alinhe para a esquerda
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'c5pa0yfd' /* a */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0x0014181B),
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                    InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        if (getJsonField(
                                                                                          contentsLovedItem,
                                                                                          r'''$.favorited''',
                                                                                        )) {
                                                                                          _model.apiResultRemoveFavoriteContent = await WfBerearGroup.removeFavoriteContentCall.call(
                                                                                            contentId: getJsonField(
                                                                                              contentsLovedItem,
                                                                                              r'''$.id''',
                                                                                            ).toString(),
                                                                                            token: currentAuthenticationToken,
                                                                                          );

                                                                                          if ((_model.apiResultRemoveFavoriteContent?.succeeded ?? true)) {
                                                                                            await actions.setBoolValueInJson(
                                                                                              FFAppState().conteudoSelecionado,
                                                                                              'favorited',
                                                                                              false,
                                                                                            );
                                                                                            await action_blocks.clearQueryCacheContent(context);
                                                                                            safeSetState(() {});
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Content removed from favorites.',
                                                                                                    ptText: 'Conteúdo removido dos favoritos.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Something is wrong, try again.',
                                                                                                    ptText: 'Algo deu errado, tente novamente.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                        } else {
                                                                                          _model.apiResultAddFavoriteContent = await WfBerearGroup.addFavoriteContentCall.call(
                                                                                            contentId: getJsonField(
                                                                                              contentsLovedItem,
                                                                                              r'''$.id''',
                                                                                            ).toString(),
                                                                                            token: currentAuthenticationToken,
                                                                                          );

                                                                                          if ((_model.apiResultAddFavoriteContent?.succeeded ?? true)) {
                                                                                            await actions.setBoolValueInJson(
                                                                                              FFAppState().conteudoSelecionado,
                                                                                              'favorited',
                                                                                              true,
                                                                                            );
                                                                                            await action_blocks.clearQueryCacheContent(context);
                                                                                            safeSetState(() {});
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Content added to favorites.',
                                                                                                    ptText: 'Conteúdo adicionado aos favoritos.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                              ),
                                                                                            );
                                                                                          } else {
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  FFLocalizations.of(context).getVariableText(
                                                                                                    enText: 'Something is wrong, try again.',
                                                                                                    ptText: 'Algo deu errado, tente novamente.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Poppins',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                        }

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: 24.0,
                                                                                        height: 24.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: const Color(0x66FFFFFF),
                                                                                          borderRadius: BorderRadius.circular(24.0),
                                                                                        ),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            if (getJsonField(
                                                                                              contentsLovedItem,
                                                                                              r'''$.favorited''',
                                                                                            ))
                                                                                              const Icon(
                                                                                                Icons.favorite,
                                                                                                color: Color(0xFFF6F9FB),
                                                                                                size: 12.0,
                                                                                              ),
                                                                                            if (!getJsonField(
                                                                                              contentsLovedItem,
                                                                                              r'''$.favorited''',
                                                                                            ))
                                                                                              const Icon(
                                                                                                Icons.favorite_border,
                                                                                                color: Color(0xFFF6F9FB),
                                                                                                size: 12.0,
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      getJsonField(
                                                                                        contentsLovedItem,
                                                                                        r'''$.title''',
                                                                                      ).toString(),
                                                                                      maxLines: 4,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: const Color(0xFFECF0F4),
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                    if (getJsonField(
                                                                                      contentsLovedItem,
                                                                                      r'''$.completed''',
                                                                                    ))
                                                                                      LinearPercentIndicator(
                                                                                        percent: 1.0,
                                                                                        width: 166.0,
                                                                                        lineHeight: 3.0,
                                                                                        animation: true,
                                                                                        animateFromLastPercent: true,
                                                                                        progressColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        barRadius: const Radius.circular(4.0),
                                                                                        padding: EdgeInsets.zero,
                                                                                      ),
                                                                                  ].divide(const SizedBox(height: 4.0)),
                                                                                ),
                                                                              ],
                                                                            ),
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
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/News.svg',
                                                                                width: 12.0,
                                                                                height: 12.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  contentsLovedItem,
                                                                                  r'''$.journal''',
                                                                                ).toString(),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: const Color(0xFF383438),
                                                                                      fontSize: 10.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 2.0)),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Flexible(
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  contentsLovedItem,
                                                                                  r'''$.year''',
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
                                                                                  contentsLovedItem,
                                                                                  r'''$.timeAudioSeconds''',
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
                                                                                  contentsLovedItem,
                                                                                  r'''$.rating''',
                                                                                ) !=
                                                                                null)
                                                                              const Icon(
                                                                                Icons.circle,
                                                                                color: Color(0xFF6A646B),
                                                                                size: 5.0,
                                                                              ),
                                                                            if (getJsonField(
                                                                                  contentsLovedItem,
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
                                                                                          contentsLovedItem,
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
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      10.0)),
                                                            ),
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
                                            if (getJsonField(
                                                  containerContentWeLoveGetContentThatWeLoveResponse
                                                      .jsonBody,
                                                  r'''$.contents''',
                                                ) ==
                                                null)
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 0.0, 0.0),
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
                                                      FFAppState()
                                                          .clearQueryContentsWeLoveCache();
                                                      safeSetState(() {
                                                        FFAppState()
                                                            .clearQueryContentsWeLoveCache();
                                                        _model.apiRequestCompleted5 =
                                                            false;
                                                      });
                                                      await _model
                                                          .waitForApiRequestCompleted5();
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                                                'o5ibmr50' /* Failed to load this content */,
                                                              ),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .purpleAlternate,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                ),
                                              ),
                                          ].divide(const SizedBox(height: 16.0)),
                                        ),
                                      );
                                    },
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: FFAppState()
                                        .queryGetContentQuestBook(
                                      requestFn: () => WfBerearBookGroup
                                          .getBookContentsResumeCall
                                          .call(
                                        token: currentAuthenticationToken,
                                      ),
                                    )
                                        .then((result) {
                                      _model.apiRequestCompleted6 = true;
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
                                      final bookContentGetBookContentsResumeResponse =
                                          snapshot.data!;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Visibility(
                                          visible: WfBerearBookGroup
                                                      .getBookContentsResumeCall
                                                      .books(
                                                    bookContentGetBookContentsResumeResponse
                                                        .jsonBody,
                                                  ) !=
                                                  null &&
                                              (WfBerearBookGroup
                                                      .getBookContentsResumeCall
                                                      .books(
                                                bookContentGetBookContentsResumeResponse
                                                    .jsonBody,
                                              ))!
                                                  .isNotEmpty,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
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
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bhemrtm7' /* Book Content Quests */,
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
                                                            'book_content_quests',
                                                            queryParameters: {
                                                              'books':
                                                                  serializeParam(
                                                                WfBerearBookGroup
                                                                    .getBookContentsResumeCall
                                                                    .books(
                                                                  bookContentGetBookContentsResumeResponse
                                                                      .jsonBody,
                                                                ),
                                                                ParamType.JSON,
                                                                isList: true,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'f9yzp6d2' /* See all */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final book = (WfBerearBookGroup
                                                                .getBookContentsResumeCall
                                                                .books(
                                                                  bookContentGetBookContentsResumeResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.toList() ??
                                                            [])
                                                        .take(5)
                                                        .toList();

                                                    return SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: List.generate(
                                                                book.length,
                                                                (bookIndex) {
                                                          final bookItem =
                                                              book[bookIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'Content_quest',
                                                                queryParameters:
                                                                    {
                                                                  'book':
                                                                      serializeParam(
                                                                    bookItem,
                                                                    ParamType
                                                                        .JSON,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 383.0,
                                                              height: 170.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    const LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0xFF5B95AE),
                                                                    Color(
                                                                        0xFF164892)
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    1.0
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        6.0,
                                                                        16.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        getJsonField(
                                                                          bookItem,
                                                                          r'''$.image''',
                                                                        ).toString(),
                                                                        height:
                                                                            double.infinity,
                                                                        fit: BoxFit
                                                                            .scaleDown,
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
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
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: const Color(0xFFEBEEF0),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getVariableText(
                                                                                enText: getJsonField(
                                                                                  bookItem,
                                                                                  r'''$.title_en''',
                                                                                ).toString(),
                                                                                ptText: getJsonField(
                                                                                  bookItem,
                                                                                  r'''$.title_pt''',
                                                                                ).toString(),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: const Color(0xFFEBEEF0),
                                                                                    fontSize: 19.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                getJsonField(
                                                                                  bookItem,
                                                                                  r'''$.author''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: const Color(0xFFEAE9EB),
                                                                                      fontSize: 10.0,
                                                                                      letterSpacing: 0.0,
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
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getVariableText(
                                                                                            enText: 'In progress',
                                                                                            ptText: 'Em progresso',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        FaIcon(
                                                                                          FontAwesomeIcons.clock,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          size: 10.0,
                                                                                        ),
                                                                                      ].divide(const SizedBox(width: 4.0)),
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
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getVariableText(
                                                                                            enText: 'Completed',
                                                                                            ptText: 'Completado',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        FaIcon(
                                                                                          FontAwesomeIcons.solidCheckCircle,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          size: 10.0,
                                                                                        ),
                                                                                      ].divide(const SizedBox(width: 4.0)),
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
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getVariableText(
                                                                                            enText: 'Start now',
                                                                                            ptText: 'Comece agora',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                fontSize: 10.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        Icon(
                                                                                          Icons.star_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          size: 10.0,
                                                                                        ),
                                                                                      ].divide(const SizedBox(width: 4.0)),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          12.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        })
                                                            .divide(const SizedBox(
                                                                width: 16.0))
                                                            .addToStart(
                                                                const SizedBox(
                                                                    width:
                                                                        24.0))
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
                                        .queryGlobalRanking(
                                      requestFn: () => WfBerearGroup
                                          .getListGlobalRankingResumeCall
                                          .call(
                                        language:
                                            currentUserData?.linguagemPreferida,
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
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final globalRankingGetListGlobalRankingResumeResponse =
                                          snapshot.data!;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 40.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
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
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5355xvxa' /* Global Ranking */,
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
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                                          'global_ranking',
                                                          queryParameters: {
                                                            'listGlobalRanking':
                                                                serializeParam(
                                                              WfBerearGroup
                                                                  .getListGlobalRankingResumeCall
                                                                  .ranking(
                                                                globalRankingGetListGlobalRankingResumeResponse
                                                                    .jsonBody,
                                                              ),
                                                              ParamType.JSON,
                                                              isList: true,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's2wxbxsc' /* See all */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final rank = (WfBerearGroup
                                                              .getListGlobalRankingResumeCall
                                                              .ranking(
                                                                globalRankingGetListGlobalRankingResumeResponse
                                                                    .jsonBody,
                                                              )
                                                              ?.toList() ??
                                                          [])
                                                      .take(5)
                                                      .toList();

                                                  return SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: List.generate(
                                                              rank.length,
                                                              (rankIndex) {
                                                        final rankItem =
                                                            rank[rankIndex];
                                                        return Container(
                                                          width: 383.0,
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
                                                                width: double
                                                                    .infinity,
                                                                height: 227.0,
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
                                                                        rankItem,
                                                                        r'''$.thumb''',
                                                                      ).toString(),
                                                                    ).image,
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
                                                                    Expanded(
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'inside_the_global_ranking',
                                                                            queryParameters:
                                                                                {
                                                                              'topic': serializeParam(
                                                                                rankItem,
                                                                                ParamType.JSON,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              colors: [
                                                                                Color(0x007A3080),
                                                                                Color(0xA77A3080)
                                                                              ],
                                                                              stops: [
                                                                                0.0,
                                                                                1.0
                                                                              ],
                                                                              begin: AlignmentDirectional(0.0, -1.0),
                                                                              end: AlignmentDirectional(0, 1.0),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                8.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    height: 75.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: const BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(11.0),
                                                                                        bottomRight: Radius.circular(11.0),
                                                                                        topLeft: Radius.circular(0.0),
                                                                                        topRight: Radius.circular(0.0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            getJsonField(
                                                                                              rankItem,
                                                                                              r'''$.title''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: const Color(0xFF383438),
                                                                                                  fontSize: 12.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                ),
                                                                                          ),
                                                                                          Text(
                                                                                            getJsonField(
                                                                                              rankItem,
                                                                                              r'''$.description''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: const Color(0xFF9D979E),
                                                                                                  fontSize: 10.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 10.0)),
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
                                        ),
                                      );
                                    },
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: FFAppState()
                                        .queryContentsTopFree(
                                      requestFn: () =>
                                          WfBerearGroup.getTopContentCall.call(
                                        language:
                                            currentUserData?.linguagemPreferida,
                                        token: currentAuthenticationToken,
                                        accessOS: 'Free',
                                      ),
                                    )
                                        .then((result) {
                                      _model.apiRequestCompleted7 = true;
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
                                      final containerTopFreeGetTopContentResponse =
                                          snapshot.data!;

                                      return Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(),
                                        child: Visibility(
                                          visible: !functions
                                              .verifyIfJsonIsEmpty(getJsonField(
                                            containerTopFreeGetTopContentResponse
                                                .jsonBody,
                                            r'''$.contents''',
                                          )),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
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
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xt5ukrky' /* Top Free content */,
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
                                                            'top_free_content',
                                                            queryParameters: {
                                                              'content':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  containerTopFreeGetTopContentResponse
                                                                      .jsonBody,
                                                                  r'''$.contents''',
                                                                  true,
                                                                ),
                                                                ParamType.JSON,
                                                                isList: true,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'i9udb0gw' /* See all */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final contentFree =
                                                        getJsonField(
                                                      containerTopFreeGetTopContentResponse
                                                          .jsonBody,
                                                      r'''$.contents''',
                                                    ).toList().take(5).toList();

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
                                                                contentFree
                                                                    .length,
                                                                (contentFreeIndex) {
                                                          final contentFreeItem =
                                                              contentFree[
                                                                  contentFreeIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              FFAppState()
                                                                      .conteudoSelecionado =
                                                                  contentFreeItem;
                                                              safeSetState(
                                                                  () {});
                                                              if (!getJsonField(
                                                                    contentFreeItem,
                                                                    r'''$.isFree''',
                                                                  ) &&
                                                                  currentUserData!
                                                                      .isFree) {
                                                                context
                                                                    .pushNamed(
                                                                  'Inside_content_buy',
                                                                  queryParameters:
                                                                      {
                                                                    'content':
                                                                        serializeParam(
                                                                      contentFreeItem,
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
                                                                context
                                                                    .pushNamed(
                                                                  'Inside_content',
                                                                  queryParameters:
                                                                      {
                                                                    'content':
                                                                        serializeParam(
                                                                      contentFreeItem,
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
                                                                    height:
                                                                        143.0,
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
                                                                            contentFreeItem,
                                                                            r'''$.cover_image''',
                                                                          ).toString(),
                                                                        ).image,
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
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              gradient: LinearGradient(
                                                                                colors: [
                                                                                  const Color(0x007A3080),
                                                                                  FlutterFlowTheme.of(context).primary
                                                                                ],
                                                                                stops: const [
                                                                                  0.0,
                                                                                  1.0
                                                                                ],
                                                                                begin: const AlignmentDirectional(0.0, -1.0),
                                                                                end: const AlignmentDirectional(0, 1.0),
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          if (getJsonField(
                                                                                            contentFreeItem,
                                                                                            r'''$.favorited''',
                                                                                          )) {
                                                                                            _model.apiResultRemoveFavoriteFreeContent = await WfBerearGroup.removeFavoriteContentCall.call(
                                                                                              contentId: getJsonField(
                                                                                                contentFreeItem,
                                                                                                r'''$.id''',
                                                                                              ).toString(),
                                                                                              token: currentAuthenticationToken,
                                                                                            );

                                                                                            if ((_model.apiResultRemoveFavoriteFreeContent?.succeeded ?? true)) {
                                                                                              await actions.setBoolValueInJson(
                                                                                                FFAppState().conteudoSelecionado,
                                                                                                'favorited',
                                                                                                false,
                                                                                              );
                                                                                              await action_blocks.clearQueryCacheContent(context);
                                                                                              safeSetState(() {});
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                                      enText: 'Content removed from favorites.',
                                                                                                      ptText: 'Conteúdo removido dos favoritos',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                ),
                                                                                              );
                                                                                            } else {
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                                      enText: 'Something is wrong, try again.',
                                                                                                      ptText: 'Algo deu errado, tente novamente.',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                          } else {
                                                                                            _model.apiResultAddFavoriteFreeContent = await WfBerearGroup.addFavoriteContentCall.call(
                                                                                              contentId: getJsonField(
                                                                                                contentFreeItem,
                                                                                                r'''$.id''',
                                                                                              ).toString(),
                                                                                              token: currentAuthenticationToken,
                                                                                            );

                                                                                            if ((_model.apiResultAddFavoriteFreeContent?.succeeded ?? true)) {
                                                                                              await actions.setBoolValueInJson(
                                                                                                FFAppState().conteudoSelecionado,
                                                                                                'favorited',
                                                                                                true,
                                                                                              );
                                                                                              await action_blocks.clearQueryCacheContent(context);
                                                                                              safeSetState(() {});
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                                      enText: 'Content added to favorites.',
                                                                                                      ptText: 'Conteúdo adicionado aos favoritos',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                ),
                                                                                              );
                                                                                            } else {
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                                      enText: 'Something is wrong, try again.',
                                                                                                      ptText: 'Algo deu errado, tente novamente.',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                          }

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
                                                                                          width: 24.0,
                                                                                          height: 24.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: const Color(0x66FFFFFF),
                                                                                            borderRadius: BorderRadius.circular(24.0),
                                                                                          ),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              if (getJsonField(
                                                                                                contentFreeItem,
                                                                                                r'''$.favorited''',
                                                                                              ))
                                                                                                const Icon(
                                                                                                  Icons.favorite,
                                                                                                  color: Color(0xFFF6F9FB),
                                                                                                  size: 12.0,
                                                                                                ),
                                                                                              if (!getJsonField(
                                                                                                contentFreeItem,
                                                                                                r'''$.favorited''',
                                                                                              ))
                                                                                                const Icon(
                                                                                                  Icons.favorite_border,
                                                                                                  color: Color(0xFFF6F9FB),
                                                                                                  size: 12.0,
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        getJsonField(
                                                                                          contentFreeItem,
                                                                                          r'''$.title''',
                                                                                        ).toString(),
                                                                                        maxLines: 4,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: const Color(0xFFECF0F4),
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                      ),
                                                                                      if (getJsonField(
                                                                                        contentFreeItem,
                                                                                        r'''$.completed''',
                                                                                      ))
                                                                                        LinearPercentIndicator(
                                                                                          percent: 1.0,
                                                                                          width: 166.0,
                                                                                          lineHeight: 3.0,
                                                                                          animation: true,
                                                                                          animateFromLastPercent: true,
                                                                                          progressColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          barRadius: const Radius.circular(4.0),
                                                                                          padding: EdgeInsets.zero,
                                                                                        ),
                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
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
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/News.svg',
                                                                                  width: 12.0,
                                                                                  height: 12.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    contentFreeItem,
                                                                                    r'''$.journal''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: const Color(0xFF383438),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 2.0)),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Flexible(
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    contentFreeItem,
                                                                                    r'''$.year''',
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
                                                                                    contentFreeItem,
                                                                                    r'''$.timeAudioSeconds''',
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
                                                                                    contentFreeItem,
                                                                                    r'''$.rating''',
                                                                                  ) !=
                                                                                  null)
                                                                                const Icon(
                                                                                  Icons.circle,
                                                                                  color: Color(0xFF6A646B),
                                                                                  size: 5.0,
                                                                                ),
                                                                              if (getJsonField(
                                                                                    contentFreeItem,
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
                                                                                            contentFreeItem,
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
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          );
                                                        })
                                                            .divide(const SizedBox(
                                                                width: 16.0))
                                                            .addToStart(
                                                                const SizedBox(
                                                                    width:
                                                                        24.0))
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
                                        .queryContentsTopPremium(
                                      requestFn: () =>
                                          WfBerearGroup.getTopContentCall.call(
                                        language:
                                            currentUserData?.linguagemPreferida,
                                        accessOS: 'Premium',
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
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final containerTopPremiumGetTopContentResponse =
                                          snapshot.data!;

                                      return Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(),
                                        child: Visibility(
                                          visible: !functions
                                              .verifyIfJsonIsEmpty(getJsonField(
                                            containerTopPremiumGetTopContentResponse
                                                .jsonBody,
                                            r'''$.contents''',
                                          )),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
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
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '52pehp0a' /* Top Premium content */,
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
                                                            'top_premium_content',
                                                            queryParameters: {
                                                              'contents':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  containerTopPremiumGetTopContentResponse
                                                                      .jsonBody,
                                                                  r'''$.contents''',
                                                                  true,
                                                                ),
                                                                ParamType.JSON,
                                                                isList: true,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'k58g5u4o' /* See all */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final contentPremium =
                                                        getJsonField(
                                                      containerTopPremiumGetTopContentResponse
                                                          .jsonBody,
                                                      r'''$.contents''',
                                                    ).toList();

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
                                                                contentPremium
                                                                    .length,
                                                                (contentPremiumIndex) {
                                                          final contentPremiumItem =
                                                              contentPremium[
                                                                  contentPremiumIndex];
                                                          return InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              FFAppState()
                                                                      .conteudoSelecionado =
                                                                  contentPremiumItem;
                                                              safeSetState(
                                                                  () {});
                                                              if (!getJsonField(
                                                                    contentPremiumItem,
                                                                    r'''$.isFree''',
                                                                  ) &&
                                                                  currentUserData!
                                                                      .isFree) {
                                                                context
                                                                    .pushNamed(
                                                                  'Inside_content_buy',
                                                                  queryParameters:
                                                                      {
                                                                    'content':
                                                                        serializeParam(
                                                                      contentPremiumItem,
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
                                                                context
                                                                    .pushNamed(
                                                                  'Inside_content',
                                                                  queryParameters:
                                                                      {
                                                                    'content':
                                                                        serializeParam(
                                                                      contentPremiumItem,
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
                                                                    height:
                                                                        143.0,
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
                                                                            contentPremiumItem,
                                                                            r'''$.cover_image''',
                                                                          ).toString(),
                                                                        ).image,
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
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              gradient: LinearGradient(
                                                                                colors: [
                                                                                  const Color(0x007A3080),
                                                                                  FlutterFlowTheme.of(context).primary
                                                                                ],
                                                                                stops: const [
                                                                                  0.0,
                                                                                  1.0
                                                                                ],
                                                                                begin: const AlignmentDirectional(0.0, -1.0),
                                                                                end: const AlignmentDirectional(0, 1.0),
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          if (getJsonField(
                                                                                            contentPremiumItem,
                                                                                            r'''$.favorited''',
                                                                                          )) {
                                                                                            _model.apiResultRemoveFavoritePremiumContent = await WfBerearGroup.removeFavoriteContentCall.call(
                                                                                              contentId: getJsonField(
                                                                                                contentPremiumItem,
                                                                                                r'''$.id''',
                                                                                              ).toString(),
                                                                                              token: currentAuthenticationToken,
                                                                                            );

                                                                                            if ((_model.apiResultRemoveFavoritePremiumContent?.succeeded ?? true)) {
                                                                                              await actions.setBoolValueInJson(
                                                                                                FFAppState().conteudoSelecionado,
                                                                                                'favorited',
                                                                                                false,
                                                                                              );
                                                                                              await action_blocks.clearQueryCacheContent(context);
                                                                                              safeSetState(() {});
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    'Content removed to favorites.',
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                ),
                                                                                              );
                                                                                            } else {
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                                      enText: 'Something is wrong, try again.',
                                                                                                      ptText: 'Algo deu errado, tente novamente.',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                          } else {
                                                                                            _model.apiResultAddFavoritePremiumContent = await WfBerearGroup.addFavoriteContentCall.call(
                                                                                              contentId: getJsonField(
                                                                                                contentPremiumItem,
                                                                                                r'''$.id''',
                                                                                              ).toString(),
                                                                                              token: currentAuthenticationToken,
                                                                                            );

                                                                                            if ((_model.apiResultAddFavoritePremiumContent?.succeeded ?? true)) {
                                                                                              await actions.setBoolValueInJson(
                                                                                                FFAppState().conteudoSelecionado,
                                                                                                'favorited',
                                                                                                true,
                                                                                              );
                                                                                              await action_blocks.clearQueryCacheContent(context);
                                                                                              safeSetState(() {});
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    'Content added to favorites.',
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).success,
                                                                                                ),
                                                                                              );
                                                                                            } else {
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    FFLocalizations.of(context).getVariableText(
                                                                                                      enText: 'Something is wrong, try again.',
                                                                                                      ptText: 'Algo deu errado, tente novamente.',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                          fontFamily: 'Poppins',
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: const Duration(milliseconds: 4000),
                                                                                                  backgroundColor: FlutterFlowTheme.of(context).warning,
                                                                                                ),
                                                                                              );
                                                                                            }
                                                                                          }

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        child: Container(
                                                                                          width: 24.0,
                                                                                          height: 24.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: const Color(0x66FFFFFF),
                                                                                            borderRadius: BorderRadius.circular(24.0),
                                                                                          ),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              if (getJsonField(
                                                                                                contentPremiumItem,
                                                                                                r'''$.favorited''',
                                                                                              ))
                                                                                                const Icon(
                                                                                                  Icons.favorite,
                                                                                                  color: Color(0xFFF6F9FB),
                                                                                                  size: 12.0,
                                                                                                ),
                                                                                              if (!getJsonField(
                                                                                                contentPremiumItem,
                                                                                                r'''$.favorited''',
                                                                                              ))
                                                                                                const Icon(
                                                                                                  Icons.favorite_border,
                                                                                                  color: Color(0xFFF6F9FB),
                                                                                                  size: 12.0,
                                                                                                ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        getJsonField(
                                                                                          contentPremiumItem,
                                                                                          r'''$.title''',
                                                                                        ).toString(),
                                                                                        maxLines: 4,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: const Color(0xFFECF0F4),
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                      ),
                                                                                      if (getJsonField(
                                                                                        contentPremiumItem,
                                                                                        r'''$.completed''',
                                                                                      ))
                                                                                        LinearPercentIndicator(
                                                                                          percent: 1.0,
                                                                                          width: 166.0,
                                                                                          lineHeight: 3.0,
                                                                                          animation: true,
                                                                                          animateFromLastPercent: true,
                                                                                          progressColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          barRadius: const Radius.circular(4.0),
                                                                                          padding: EdgeInsets.zero,
                                                                                        ),
                                                                                    ].divide(const SizedBox(height: 4.0)),
                                                                                  ),
                                                                                ],
                                                                              ),
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
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children:
                                                                                [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/News.svg',
                                                                                  width: 12.0,
                                                                                  height: 12.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    contentPremiumItem,
                                                                                    r'''$.journal''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: const Color(0xFF383438),
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 2.0)),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Flexible(
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    contentPremiumItem,
                                                                                    r'''$.year''',
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
                                                                              if (responsiveVisibility(
                                                                                context: context,
                                                                                desktop: false,
                                                                              ))
                                                                                const Icon(
                                                                                  Icons.circle,
                                                                                  color: Color(0xFF6A646B),
                                                                                  size: 5.0,
                                                                                ),
                                                                              Flexible(
                                                                                child: Text(
                                                                                  functions.secondsToTimeV2(getJsonField(
                                                                                    contentPremiumItem,
                                                                                    r'''$.timeAudioSeconds''',
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
                                                                                    contentPremiumItem,
                                                                                    r'''$.rating''',
                                                                                  ) !=
                                                                                  null)
                                                                                const Icon(
                                                                                  Icons.circle,
                                                                                  color: Color(0xFF6A646B),
                                                                                  size: 5.0,
                                                                                ),
                                                                              if (getJsonField(
                                                                                    contentPremiumItem,
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
                                                                                            contentPremiumItem,
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
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          );
                                                        })
                                                            .divide(const SizedBox(
                                                                width: 16.0))
                                                            .addToStart(
                                                                const SizedBox(
                                                                    width:
                                                                        24.0))
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
                                        .queryGetAllTrackInExplore(
                                      requestFn: () =>
                                          WfBerearGroup.getAllTracksCall.call(
                                        token: currentAuthenticationToken,
                                      ),
                                    )
                                        .then((result) {
                                      _model.apiRequestCompleted4 = true;
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
                                      final containerTracksGetAllTracksResponse =
                                          snapshot.data!;

                                      return Container(
                                        width: double.infinity,
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 40.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
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
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'saps28ht' /* Tracks */,
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
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    if (WfBerearGroup
                                                                .getAllTracksCall
                                                                .tracks(
                                                              containerTracksGetAllTracksResponse
                                                                  .jsonBody,
                                                            ) !=
                                                            null &&
                                                        (WfBerearGroup
                                                                .getAllTracksCall
                                                                .tracks(
                                                          containerTracksGetAllTracksResponse
                                                              .jsonBody,
                                                        ))!
                                                            .isNotEmpty)
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
                                                              'All_Tracks');
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gxb57ygh' /* See all */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              if (WfBerearGroup.getAllTracksCall
                                                          .tracks(
                                                        containerTracksGetAllTracksResponse
                                                            .jsonBody,
                                                      ) !=
                                                      null &&
                                                  (WfBerearGroup
                                                          .getAllTracksCall
                                                          .tracks(
                                                    containerTracksGetAllTracksResponse
                                                        .jsonBody,
                                                  ))!
                                                      .isNotEmpty)
                                                Builder(
                                                  builder: (context) {
                                                    final tracksf = WfBerearGroup
                                                            .getAllTracksCall
                                                            .tracks(
                                                              containerTracksGetAllTracksResponse
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
                                                            highlightColor:
                                                                Colors
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
                                                                    width:
                                                                        183.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
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
                                                                              begin: AlignmentDirectional(0.81, -1.0),
                                                                              end: AlignmentDirectional(-0.81, 1.0),
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
                                                                                            tracksfItem,
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
                                                                                                      FFAppState().clearQueryGetAllTrackInExploreCache();
                                                                                                      FFAppState().clearQueryGetMyTracksCache();
                                                                                                      _model.apiResult9xd33 = await WfBerearGroup.addFavoriteTrackCall.call(
                                                                                                        trackId: getJsonField(
                                                                                                          tracksfItem,
                                                                                                          r'''$.id_track''',
                                                                                                        ).toString(),
                                                                                                        token: currentAuthenticationToken,
                                                                                                      );

                                                                                                      shouldSetState = true;
                                                                                                      if ((_model.apiResult9xd33?.succeeded ?? true)) {
                                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                                          SnackBar(
                                                                                                            content: Text(
                                                                                                              'the track has been added to favorites',
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
                                                                                                              'oops, something happened! Try again later.',
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
                                                                                            tracksfItem,
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
                                                                                                      FFAppState().clearQueryGetAllTrackInExploreCache();
                                                                                                      FFAppState().clearQueryGetMyTracksCache();
                                                                                                      _model.apiResult6ahCopy3222 = await WfBerearGroup.removeFavoriteTrackCall.call(
                                                                                                        trackId: getJsonField(
                                                                                                          tracksfItem,
                                                                                                          r'''$.id_track''',
                                                                                                        ).toString(),
                                                                                                        token: currentAuthenticationToken,
                                                                                                      );

                                                                                                      shouldSetState = true;
                                                                                                      if ((_model.apiResult6ahCopy3222?.succeeded ?? true)) {
                                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                                          SnackBar(
                                                                                                            content: Text(
                                                                                                              'The track has been removed from your favorites!',
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
                                                                                                              'oops, something happened! Try again later.',
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
                                                                          width:
                                                                              double.infinity,
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
                                                                                      'trdy9prx' /* TRACK */,
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
                                                                              height: 10.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        })
                                                            .divide(const SizedBox(
                                                                width: 16.0))
                                                            .addToStart(
                                                                const SizedBox(
                                                                    width:
                                                                        24.0))
                                                            .addToEnd(const SizedBox(
                                                                width: 24.0)),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              if (!(WfBerearGroup
                                                          .getAllTracksCall
                                                          .tracks(
                                                        containerTracksGetAllTracksResponse
                                                            .jsonBody,
                                                      ) !=
                                                      null &&
                                                  (WfBerearGroup
                                                          .getAllTracksCall
                                                          .tracks(
                                                    containerTracksGetAllTracksResponse
                                                        .jsonBody,
                                                  ))!
                                                      .isNotEmpty))
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                0.0, 0.0),
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
                                                        FFAppState()
                                                            .clearQueryGetAllTrackInExploreCache();
                                                        safeSetState(() {
                                                          FFAppState()
                                                              .clearQueryGetAllTrackInExploreCache();
                                                          _model.apiRequestCompleted4 =
                                                              false;
                                                        });
                                                        await _model
                                                            .waitForApiRequestCompleted4();
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '9e25t8y7' /* Failed to load this tracks */,
                                                                ),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .purpleAlternate,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    8.0,
                                                                buttonSize:
                                                                    40.0,
                                                                icon: FaIcon(
                                                                  FontAwesomeIcons
                                                                      .redoAlt,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                  ),
                                                ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: FFAppState()
                                          .queryAreaHorse(
                                        requestFn: () =>
                                            WfGroup.areaHorseCall.call(),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final containerAreasAreaHorseResponse =
                                            snapshot.data!;

                                        return Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'g1t7jkvm' /* Areas */,
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
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                                            'all_tracks_tracks_area');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5ulazlhk' /* See all */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final areaPesquisa =
                                                        WfGroup.areaHorseCall
                                                                .area(
                                                                  containerAreasAreaHorseResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.toList() ??
                                                            [];

                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          areaPesquisa.length,
                                                          (areaPesquisaIndex) {
                                                        final areaPesquisaItem =
                                                            areaPesquisa[
                                                                areaPesquisaIndex];
                                                        return Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'all_tracks_inside_an_area',
                                                                  queryParameters:
                                                                      {
                                                                    'name':
                                                                        serializeParam(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                        enText:
                                                                            getJsonField(
                                                                          areaPesquisaItem,
                                                                          r'''$.name''',
                                                                        ).toString(),
                                                                        ptText:
                                                                            getJsonField(
                                                                          areaPesquisaItem,
                                                                          r'''$.name_portuguese''',
                                                                        ).toString(),
                                                                      ),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'uid':
                                                                        serializeParam(
                                                                      getJsonField(
                                                                        areaPesquisaItem,
                                                                        r'''$._id''',
                                                                      ).toString(),
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Container(
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child: const Icon(
                                                                      Icons
                                                                          .search_sharp,
                                                                      color: Color(
                                                                          0xFFA669A9),
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                        enText:
                                                                            getJsonField(
                                                                          areaPesquisaItem,
                                                                          r'''$.name''',
                                                                        ).toString(),
                                                                        ptText:
                                                                            getJsonField(
                                                                          areaPesquisaItem,
                                                                          r'''$.name_portuguese''',
                                                                        ).toString(),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 1.0,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                color: Color(
                                                                    0xFFEAE9EB),
                                                              ),
                                                            ),
                                                          ],
                                                        );
                                                      }).divide(const SizedBox(
                                                          height: 6.0)),
                                                    );
                                                  },
                                                ),
                                              ].divide(const SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
