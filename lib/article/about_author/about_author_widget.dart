import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'about_author_model.dart';
export 'about_author_model.dart';

class AboutAuthorWidget extends StatefulWidget {
  const AboutAuthorWidget({
    super.key,
    this.author,
  });

  final dynamic author;

  @override
  State<AboutAuthorWidget> createState() => _AboutAuthorWidgetState();
}

class _AboutAuthorWidgetState extends State<AboutAuthorWidget> {
  late AboutAuthorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutAuthorModel());
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: wrapWithModel(
                          model: _model.componentVoltarBaixoModel,
                          updateCallback: () => safeSetState(() {}),
                          child: ComponentVoltarBaixoWidget(
                            customAction: () async {},
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
                FutureBuilder<ApiCallResponse>(
                  future: WfBerearAuthorsGroup.getAuthorsByIdCall.call(
                    id: getJsonField(
                      widget.author,
                      r'''$.id''',
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
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    final containerBodyGetAuthorsByIdResponse = snapshot.data!;

                    return Container(
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (!((String var1) {
                              return var1.contains('empty:');
                            }(getJsonField(
                              widget.author,
                              r'''$.photo''',
                            ).toString())))
                              Container(
                                width: 174.0,
                                height: 174.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  getJsonField(
                                    widget.author,
                                    r'''$.photo''',
                                  ).toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if ((String var1) {
                              return var1.contains('empty:');
                            }(getJsonField(
                              widget.author,
                              r'''$.photo''',
                            ).toString()))
                              Container(
                                width: 174.0,
                                height: 174.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF808080),
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    (String var1) {
                                      return var1.split(':')[1];
                                    }(getJsonField(
                                      widget.author,
                                      r'''$.photo''',
                                    ).toString()),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 62.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    getJsonField(
                                      widget.author,
                                      r'''$.name''',
                                    ).toString(),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF2B282B),
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  if ((String var1) {
                                    return var1 != '';
                                  }(getJsonField(
                                    containerBodyGetAuthorsByIdResponse
                                        .jsonBody,
                                    r'''$.degree''',
                                  ).toString()))
                                    Text(
                                      getJsonField(
                                        containerBodyGetAuthorsByIdResponse
                                            .jsonBody,
                                        r'''$.degree''',
                                      ).toString(),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF6A646B),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  if (getJsonField(
                                        containerBodyGetAuthorsByIdResponse
                                            .jsonBody,
                                        r'''$.socialMedia''',
                                      ) !=
                                      null)
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEEE7ED),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final sm = getJsonField(
                                              containerBodyGetAuthorsByIdResponse
                                                  .jsonBody,
                                              r'''$.socialMedia''',
                                            ).toList();

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: List.generate(sm.length,
                                                  (smIndex) {
                                                final smItem = sm[smIndex];
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
                                                    await launchURL(
                                                        getJsonField(
                                                      smItem,
                                                      r'''$.url''',
                                                    ).toString());
                                                  },
                                                  child: Container(
                                                    width: 48.0,
                                                    height: 48.0,
                                                    decoration: const BoxDecoration(),
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          getJsonField(
                                                            smItem,
                                                            r'''$.icon''',
                                                          ).toString(),
                                                          width: 24.0,
                                                          height: 24.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                            if ((String var1) {
                              return var1 != '';
                            }(getJsonField(
                              containerBodyGetAuthorsByIdResponse.jsonBody,
                              r'''$.experience''',
                            ).toString()))
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '14yv5icq' /* Experience */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF2B282B),
                                            fontSize: 19.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        containerBodyGetAuthorsByIdResponse
                                            .jsonBody,
                                        r'''$.experience''',
                                      ).toString(),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF6A646B),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '6cpr0tri' /* Research Interests */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF2B282B),
                                            fontSize: 19.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'cvm8qr0e' /* There is no information about ... */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF6A646B),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            if (WfBerearAuthorsGroup.getAuthorsByIdCall
                                        .contents(
                                      containerBodyGetAuthorsByIdResponse
                                          .jsonBody,
                                    ) !=
                                    null &&
                                (WfBerearAuthorsGroup.getAuthorsByIdCall
                                        .contents(
                                  containerBodyGetAuthorsByIdResponse.jsonBody,
                                ))!
                                    .isNotEmpty)
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${FFLocalizations.of(context).getVariableText(
                                        enText: 'Contents from  ',
                                        ptText: 'Conteúdos de ',
                                      )}${getJsonField(
                                        widget.author,
                                        r'''$.name''',
                                      ).toString()}',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF2B282B),
                                            fontSize: 19.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final content = WfBerearAuthorsGroup
                                                .getAuthorsByIdCall
                                                .contents(
                                                  containerBodyGetAuthorsByIdResponse
                                                      .jsonBody,
                                                )
                                                ?.toList() ??
                                            [];

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: List.generate(
                                              content.length, (contentIndex) {
                                            final contentItem =
                                                content[contentIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState()
                                                        .conteudoSelecionado =
                                                    contentItem;
                                                safeSetState(() {});
                                                if (getJsonField(
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
                                                      'typeContent':
                                                          serializeParam(
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
                                                      'typeContent':
                                                          serializeParam(
                                                        TypeContent.Audio,
                                                        ParamType.Enum,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                }
                                              },
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: const BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                      child: Image.network(
                                                        getJsonField(
                                                          contentItem,
                                                          r'''$.cover_image''',
                                                        ).toString(),
                                                        width: 87.0,
                                                        height: 97.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xFFEAE9EB),
                                                                      width:
                                                                          0.5,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'vwfdn18v' /* Article */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Book.svg',
                                                                            width:
                                                                                10.0,
                                                                            height:
                                                                                10.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 4.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xFFEAE9EB),
                                                                      width:
                                                                          0.5,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '7dufufdc' /* 2 */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Creditos_science_play_(2).svg',
                                                                            width:
                                                                                10.0,
                                                                            height:
                                                                                10.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 4.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 4.0)),
                                                            ),
                                                          Text(
                                                            getJsonField(
                                                              contentItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF2B282B),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Container(
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
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/News.svg',
                                                                        width:
                                                                            10.0,
                                                                        height:
                                                                            10.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          contentItem,
                                                                          r'''$.journal''',
                                                                        ).toString(),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: const Color(0xFF6A646B),
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          2.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      getJsonField(
                                                                        contentItem,
                                                                        r'''$.year''',
                                                                      ).toString(),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'dvrxrvkg' /* • */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      functions
                                                                          .secondsToTimeV2(
                                                                              getJsonField(
                                                                        contentItem,
                                                                        r'''$.timeAudioSeconds''',
                                                                      )),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'vb52k74f' /* • */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        const Icon(
                                                                          Icons
                                                                              .star_rounded,
                                                                          color:
                                                                              Color(0xFFFFB45E),
                                                                          size:
                                                                              12.0,
                                                                        ),
                                                                        Text(
                                                                          getJsonField(
                                                                                    contentItem,
                                                                                    r'''$.rating''',
                                                                                  ) !=
                                                                                  null
                                                                              ? getJsonField(
                                                                                  contentItem,
                                                                                  r'''$.rating''',
                                                                                ).toString()
                                                                              : '-',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 2.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 8.0)),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 8.0)),
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
                                                        if (getJsonField(
                                                          contentItem,
                                                          r'''$.favorited''',
                                                        )) {
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
                                                            safeSetState(() {});
                                                            ScaffoldMessenger
                                                                    .of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                            ScaffoldMessenger
                                                                    .of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                            safeSetState(() {});
                                                            ScaffoldMessenger
                                                                    .of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                            ScaffoldMessenger
                                                                    .of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                        width: 24.0,
                                                        height: 24.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0x67919191),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (getJsonField(
                                                              contentItem,
                                                              r'''$.favorited''',
                                                            ))
                                                              const Icon(
                                                                Icons.favorite,
                                                                color: Color(
                                                                    0xFFF6F9FB),
                                                                size: 12.0,
                                                              ),
                                                            if (!getJsonField(
                                                              contentItem,
                                                              r'''$.favorited''',
                                                            ))
                                                              const Icon(
                                                                Icons
                                                                    .favorite_border,
                                                                color: Color(
                                                                    0xFFF6F9FB),
                                                                size: 12.0,
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 12.0)),
                                                ),
                                              ),
                                            );
                                          }).divide(const SizedBox(height: 12.0)),
                                        );
                                      },
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Heads_each_area');
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '8s7gptll' /* See all heads of each category */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF7A3080),
                                              fontSize: 19.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    const FaIcon(
                                      FontAwesomeIcons.angleRight,
                                      color: Color(0xFF7A3080),
                                      size: 24.0,
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                              ),
                          ].divide(const SizedBox(height: 32.0)),
                        ),
                      ),
                    );
                  },
                ),
              ]
                  .addToStart(const SizedBox(height: 24.0))
                  .addToEnd(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
