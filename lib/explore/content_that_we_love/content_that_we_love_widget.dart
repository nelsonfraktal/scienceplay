import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'content_that_we_love_model.dart';
export 'content_that_we_love_model.dart';

class ContentThatWeLoveWidget extends StatefulWidget {
  const ContentThatWeLoveWidget({
    super.key,
    required this.contents,
  });

  final List<dynamic>? contents;

  @override
  State<ContentThatWeLoveWidget> createState() =>
      _ContentThatWeLoveWidgetState();
}

class _ContentThatWeLoveWidgetState extends State<ContentThatWeLoveWidget> {
  late ContentThatWeLoveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentThatWeLoveModel());
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
                          'qwat9f2g' /* We love */,
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
                padding: const EdgeInsetsDirectional.fromSTEB(23.0, 9.0, 23.0, 9.0),
                child: Container(
                  height: 41.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(24.0),
                    border: Border.all(
                      color: const Color(0xFFF3F2F3),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.type = 1;
                              safeSetState(() {});
                            },
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: _model.type == 1
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 5.0, 12.0, 5.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'vwr4j1og' /* All */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.type == 1
                                        ? Colors.white
                                        : const Color(0xFFB7B2B8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.type = 2;
                              safeSetState(() {});
                            },
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: _model.type == 2
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 5.0, 12.0, 5.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '9w9q8qkt' /* Free */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.type == 2
                                        ? Colors.white
                                        : const Color(0xFFB7B2B8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.type = 3;
                              safeSetState(() {});
                            },
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: _model.type == 3
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 5.0, 12.0, 5.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'hiyj5rqn' /* Premium */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.type == 3
                                        ? Colors.white
                                        : const Color(0xFFB7B2B8),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
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
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final content = widget.contents!
                          .where((e) => () {
                                if (_model.type == 1) {
                                  return true;
                                } else if (_model.type == 2) {
                                  return getJsonField(
                                    e,
                                    r'''$.isFree''',
                                  );
                                } else {
                                  return !getJsonField(
                                    e,
                                    r'''$.isFree''',
                                  );
                                }
                              }())
                          .toList();

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
                                                                      '0ams2l2v' /* Article */,
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
                                                        if (getJsonField(
                                                          contentItem,
                                                          r'''$.isFree''',
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
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '8gzc1q7c' /* Free */,
                                                                ),
                                                                maxLines: 1,
                                                                style:
                                                                    GoogleFonts
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
                                                        if (!getJsonField(
                                                              contentItem,
                                                              r'''$.isFree''',
                                                            ) &&
                                                            responsiveVisibility(
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
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                    getJsonField(
                                                                      contentItem,
                                                                      r'''$.credits''',
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
                                                                          9.0,
                                                                    ),
                                                                  ),
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
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        4.0)),
                                                              ),
                                                            ),
                                                          ),
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
                                                            child:
                                                                BackdropFilter(
                                                              filter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 2.0,
                                                                sigmaY: 2.0,
                                                              ),
                                                              child: Container(
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              24.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: const Color(
                                                                        0xFFEAE9EB),
                                                                    width: 0.5,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'qcxapqc3' /* Premium */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: const Color(0xFF6A646B),
                                                                                fontSize: 9.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
