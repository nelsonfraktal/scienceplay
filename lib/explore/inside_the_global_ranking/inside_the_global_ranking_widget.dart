import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inside_the_global_ranking_model.dart';
export 'inside_the_global_ranking_model.dart';

class InsideTheGlobalRankingWidget extends StatefulWidget {
  const InsideTheGlobalRankingWidget({
    super.key,
    required this.topic,
  });

  final dynamic topic;

  @override
  State<InsideTheGlobalRankingWidget> createState() =>
      _InsideTheGlobalRankingWidgetState();
}

class _InsideTheGlobalRankingWidgetState
    extends State<InsideTheGlobalRankingWidget> {
  late InsideTheGlobalRankingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideTheGlobalRankingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: WfBerearGroup.getContentsSpecificGlobalRankingCall.call(
        idGlobalRanking: getJsonField(
          widget.topic,
          r'''$.id''',
        ).toString(),
        language: currentUserData?.linguagemPreferida,
        token: currentAuthenticationToken,
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
        final insideTheGlobalRankingGetContentsSpecificGlobalRankingResponse =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 375.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.network(
                        functions.containsHttps(getJsonField(
                          widget.topic,
                          r'''$.thumb''',
                        ).toString())
                            ? getJsonField(
                                widget.topic,
                                r'''$.thumb''',
                              ).toString()
                            : 'https:${getJsonField(
                                widget.topic,
                                r'''$.thumb''',
                              ).toString()}',
                      ).image,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 375.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x007A3080), Color(0xFF7A3080)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 50.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEEE7ED),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 10.0,
                                          color: Color(0x19000000),
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.safePop();
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        color: Color(0xFF383438),
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    constraints: const BoxConstraints(
                                      minWidth: 82.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0x4D000000),
                                      borderRadius: BorderRadius.circular(56.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 4.0, 8.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '1wkyhggl' /* GLOBAL RANKING */,
                                            ),
                                            maxLines: 1,
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: SvgPicture.asset(
                                              'assets/images/Trend.svg',
                                              width: 12.0,
                                              height: 12.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    getJsonField(
                                      widget.topic,
                                      r'''$.title''',
                                    ).toString(),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 32.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                    child: Builder(
                      builder: (context) {
                        final content =
                            WfBerearGroup.getContentsSpecificGlobalRankingCall
                                    .contents(
                                      insideTheGlobalRankingGetContentsSpecificGlobalRankingResponse
                                          .jsonBody,
                                    )
                                    ?.toList() ??
                                [];

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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                  functions.containsHttps(
                                                          getJsonField(
                                                    contentItem,
                                                    r'''$.cover_image''',
                                                  ).toString())
                                                      ? getJsonField(
                                                          contentItem,
                                                          r'''$.cover_image''',
                                                        ).toString()
                                                      : 'https:${getJsonField(
                                                          contentItem,
                                                          r'''$.cover_image''',
                                                        ).toString()}',
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      if (!getJsonField(
                                                            contentItem,
                                                            r'''$.isFree''',
                                                          ) &&
                                                          currentUserData!
                                                              .isFree)
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child: BackdropFilter(
                                                            filter: ImageFilter
                                                                .blur(
                                                              sigmaX: 2.0,
                                                              sigmaY: 2.0,
                                                            ),
                                                            child: Container(
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
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'azde3ppx' /* Premium */,
                                                                        ),
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
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/Crown_(1).svg',
                                                                        width:
                                                                            10.0,
                                                                        height:
                                                                            10.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              getJsonField(
                                                                contentItem,
                                                                r'''$.title''',
                                                              ).toString(),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF383438),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 11.0,
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 2.0)),
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
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
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 2.0)),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .play_circle,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 12.0,
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      contentItem,
                                                                      r'''$.views''',
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
                                                              const Icon(
                                                                Icons.circle,
                                                                color: Color(
                                                                    0xFF6A646B),
                                                                size: 5.0,
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  contentItem,
                                                                  r'''$.year''',
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
                                                                      maxLines:
                                                                          1,
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF6A646B),
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                alignment: const AlignmentDirectional(
                                                    -1.0, -1.0),
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
                                                    if (getJsonField(
                                                      contentItem,
                                                      r'''$.favorited''',
                                                    )) {
                                                      _model.apiResultRemoveFavoriteContent =
                                                          await WfBerearGroup
                                                              .removeFavoriteContentCall
                                                              .call(
                                                        contentId: getJsonField(
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
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                    } else {
                                                      _model.apiResultAddFavoriteContent =
                                                          await WfBerearGroup
                                                              .addFavoriteContentCall
                                                              .call(
                                                        contentId: getJsonField(
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
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  child: Container(
                                                    decoration: const BoxDecoration(
                                                      color: Color(0x65919191),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        if (getJsonField(
                                                          contentItem,
                                                          r'''$.favorited''',
                                                        ))
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    4.0),
                                                            child: Icon(
                                                              Icons.favorite,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              size: 12.0,
                                                            ),
                                                          ),
                                                        if (!getJsonField(
                                                          contentItem,
                                                          r'''$.favorited''',
                                                        ))
                                                          Padding(
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
                                                      ],
                                                    ),
                                                  ),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
