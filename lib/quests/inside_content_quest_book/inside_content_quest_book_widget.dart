import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/quests/exit_quest/exit_quest_widget.dart';
import '/quests/quest_settings/quest_settings_widget.dart';
import '/quests/rate_quest/rate_quest_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'inside_content_quest_book_model.dart';
export 'inside_content_quest_book_model.dart';

class InsideContentQuestBookWidget extends StatefulWidget {
  const InsideContentQuestBookWidget({
    super.key,
    required this.book,
    required this.idContentQuestBook,
  });

  final dynamic book;
  final String? idContentQuestBook;

  @override
  State<InsideContentQuestBookWidget> createState() =>
      _InsideContentQuestBookWidgetState();
}

class _InsideContentQuestBookWidgetState
    extends State<InsideContentQuestBookWidget> {
  late InsideContentQuestBookModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideContentQuestBookModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(WfBerearBookGroup.getDailyQuestBookCall.call(
              idContentQuestBook: widget.idContentQuestBook,
              token: currentAuthenticationToken,
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        final insideContentQuestBookGetDailyQuestBookResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
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
                                  FFLocalizations.of(context).getText(
                                    '5pk7f0fu' /* Content Quest */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: const Color(0xFF383438),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19.0,
                                  ),
                                ),
                              ),
                            ],
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
                              color: const Color(0xFFEEE7ED),
                              borderRadius: BorderRadius.circular(56.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 9.0, 15.0, 9.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Share.svg',
                                      width: 16.0,
                                      height: 16.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '812s19xf' /* Share */,
                                    ),
                                    maxLines: 1,
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: const Color(0xFF383438),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 24.0, 24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          getJsonField(
                                            widget.book,
                                            r'''$.image''',
                                          ).toString(),
                                          width: 117.0,
                                          height: 178.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      enText: getJsonField(
                                                        widget.book,
                                                        r'''$.title_en''',
                                                      ).toString(),
                                                      ptText: getJsonField(
                                                        widget.book,
                                                        r'''$.title_pt''',
                                                      ).toString(),
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: const Color(0xFF383438),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 25.0,
                                                      height: 1.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      widget.book,
                                                      r'''$.author''',
                                                    ).toString(),
                                                    maxLines: 2,
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: const Color(0xFF6A646B),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 6.0)),
                                              ),
                                              Wrap(
                                                spacing: 4.0,
                                                runSpacing: 4.0,
                                                alignment: WrapAlignment.start,
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.start,
                                                direction: Axis.horizontal,
                                                runAlignment:
                                                    WrapAlignment.start,
                                                verticalDirection:
                                                    VerticalDirection.down,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              56.0),
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
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'jzdw5vc6' /* Book */,
                                                            ),
                                                            maxLines: 1,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Book.svg',
                                                              width: 12.0,
                                                              height: 12.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              56.0),
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
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            (String var1) {
                                                              return var1 ==
                                                                  'start';
                                                            }(getJsonField(
                                                              widget.book,
                                                              r'''$.status''',
                                                            ).toString())
                                                                ? FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                    enText:
                                                                        'In progress',
                                                                    ptText:
                                                                        'Em progresso',
                                                                  )
                                                                : getJsonField(
                                                                    widget
                                                                        .book,
                                                                    r'''$.status''',
                                                                  ).toString(),
                                                            maxLines: 1,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Clock.svg',
                                                              width: 12.0,
                                                              height: 12.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              56.0),
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
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            '${WfBerearBookGroup.getDailyQuestBookCall.daysChallenge(
                                                                  insideContentQuestBookGetDailyQuestBookResponse
                                                                      .jsonBody,
                                                                )?.toString()} days challenge',
                                                            maxLines: 1,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Calendar.svg',
                                                              width: 12.0,
                                                              height: 12.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 16.0)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'kv6ujo6z' /* Your progress */,
                                      ),
                                      maxLines: 4,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: const Color(0xFF383438),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19.0,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: LinearPercentIndicator(
                                        percent:
                                            functions.progressContentQuestBook(
                                                WfBerearBookGroup
                                                    .getDailyQuestBookCall
                                                    .dailyQuests(
                                                      insideContentQuestBookGetDailyQuestBookResponse
                                                          .jsonBody,
                                                    )!
                                                    .toList()),
                                        lineHeight: 16.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        backgroundColor: const Color(0xFFEAE9EB),
                                        center: Text(
                                          '${formatNumber(
                                            functions.progressContentQuestBook(
                                                    WfBerearBookGroup
                                                        .getDailyQuestBookCall
                                                        .dailyQuests(
                                                          insideContentQuestBookGetDailyQuestBookResponse
                                                              .jsonBody,
                                                        )!
                                                        .toList()) *
                                                100,
                                            formatType: FormatType.custom,
                                            format: '0',
                                            locale: '',
                                          )}%',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: (double var1) {
                                              return var1 * 100 >= 50;
                                            }(functions.progressContentQuestBook(
                                                    WfBerearBookGroup
                                                        .getDailyQuestBookCall
                                                        .dailyQuests(
                                                          insideContentQuestBookGetDailyQuestBookResponse
                                                              .jsonBody,
                                                        )!
                                                        .toList()))
                                                ? FlutterFlowTheme.of(context)
                                                    .primaryBackground
                                                : const Color(0xFF9D979E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        barRadius: const Radius.circular(24.0),
                                        padding: EdgeInsets.zero,
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 8.0, 24.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'cp7zp80p' /* Schedule */,
                                          ),
                                          maxLines: 4,
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: const Color(0xFF383438),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 19.0,
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          Builder(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: WebViewAware(
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus(),
                                                          child:
                                                              QuestSettingsWidget(
                                                            qtdCap:
                                                                getJsonField(
                                                              widget.book,
                                                              r'''$.nChapters''',
                                                            ),
                                                            daysSelected:
                                                                WfBerearBookGroup
                                                                    .getDailyQuestBookCall
                                                                    .daysChallenge(
                                                              insideContentQuestBookGetDailyQuestBookResponse
                                                                  .jsonBody,
                                                            )!,
                                                            status:
                                                                getJsonField(
                                                              widget.book,
                                                              r'''$.status''',
                                                            ).toString(),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/settings.png',
                                                  width: 36.0,
                                                  height: 36.0,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        Builder(
                                          builder: (context) =>
                                              FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            icon: FaIcon(
                                              FontAwesomeIcons.signOutAlt,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 16.0,
                                            ),
                                            onPressed: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        const AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus(),
                                                        child: ExitQuestWidget(
                                                          idContentQuestBook:
                                                              widget
                                                                  .idContentQuestBook!,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final quest = WfBerearBookGroup
                                                .getDailyQuestBookCall
                                                .dailyQuests(
                                                  insideContentQuestBookGetDailyQuestBookResponse
                                                      .jsonBody,
                                                )
                                                ?.toList() ??
                                            [];

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(quest.length,
                                              (questIndex) {
                                            final questItem = quest[questIndex];
                                            return Container(
                                              decoration: const BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 16.0,
                                                    height: 116.0,
                                                    decoration: const BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if ((String var1) {
                                                            return var1 ==
                                                                    'Pending' ||
                                                                var1 ==
                                                                    'Pendente';
                                                          }(getJsonField(
                                                            questItem,
                                                            r'''$.status''',
                                                          ).toString()))
                                                            const Icon(
                                                              Icons
                                                                  .check_circle_outline,
                                                              color: Color(
                                                                  0xFFDEDBDE),
                                                              size: 16.0,
                                                            ),
                                                          if ((String var1) {
                                                            return var1 ==
                                                                    'Checked' ||
                                                                var1 == 'Feito';
                                                          }(getJsonField(
                                                            questItem,
                                                            r'''$.status''',
                                                          ).toString()))
                                                            const FaIcon(
                                                              FontAwesomeIcons
                                                                  .solidCheckCircle,
                                                              color: Color(
                                                                  0xFF618F71),
                                                              size: 16.0,
                                                            ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 2.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: (String
                                                                        var1) {
                                                                  return var1 ==
                                                                          'Checked' ||
                                                                      var1 ==
                                                                          'Feito';
                                                                }(getJsonField(
                                                                  questItem,
                                                                  r'''$.status''',
                                                                ).toString())
                                                                    ? const Color(
                                                                        0xFF618F71)
                                                                    : const Color(
                                                                        0xFFDEDBDE),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color:
                                                              const Color(0xFFF3F2F3),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    14.0,
                                                                    14.0,
                                                                    14.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: getJsonField(
                                                                              questItem,
                                                                              r'''$.data''',
                                                                            ).toString() ==
                                                                            dateTimeFormat(
                                                                              "d/M/y",
                                                                              getCurrentTimestamp,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )
                                                                        ? const Color(0xFFFFB45E)
                                                                        : const Color(0xFFF3F2F3),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            56.0),
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
                                                                              .min,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          'Day ${(questIndex + 1).toString()}',
                                                                          maxLines:
                                                                              1,
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              getJsonField(
                                                                                        questItem,
                                                                                        r'''$.data''',
                                                                                      ).toString() ==
                                                                                      dateTimeFormat(
                                                                                        "d/M/y",
                                                                                        getCurrentTimestamp,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      )
                                                                                  ? FlutterFlowTheme.of(context).secondaryBackground
                                                                                  : const Color(0xFF6A646B),
                                                                              const Color(0xFF6A646B),
                                                                            ),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                        ),
                                                                        if ((String var1,
                                                                                String var2) {
                                                                          return var1 !=
                                                                              var2;
                                                                        }(
                                                                            getJsonField(
                                                                              questItem,
                                                                              r'''$.data''',
                                                                            ).toString(),
                                                                            dateTimeFormat(
                                                                              "d/M/y",
                                                                              getCurrentTimestamp,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            )))
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              'assets/images/Calendar_(1).svg',
                                                                              width: 12.0,
                                                                              height: 12.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        if (getJsonField(
                                                                              questItem,
                                                                              r'''$.data''',
                                                                            ).toString() ==
                                                                            dateTimeFormat(
                                                                              "d/M/y",
                                                                              getCurrentTimestamp,
                                                                              locale: FFLocalizations.of(context).languageCode,
                                                                            ))
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              'assets/images/Calendar.svg',
                                                                              width: 12.0,
                                                                              height: 12.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                      ].divide(const SizedBox(
                                                                              width: 4.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                if ((String
                                                                    var1) {
                                                                  return var1 ==
                                                                          'Pending' ||
                                                                      var1 ==
                                                                          'Pendente';
                                                                }(getJsonField(
                                                                  questItem,
                                                                  r'''$.status''',
                                                                ).toString()))
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      _model.apiResultUpdateDailyToChecked = await WfBerearBookGroup
                                                                          .updateStatusDailyQuestBookCall
                                                                          .call(
                                                                        idDailyQuestBook:
                                                                            getJsonField(
                                                                          questItem,
                                                                          r'''$.id''',
                                                                        ).toString(),
                                                                        status:
                                                                            1,
                                                                        token:
                                                                            currentAuthenticationToken,
                                                                      );

                                                                      if ((_model
                                                                              .apiResultUpdateDailyToChecked
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        FFAppState()
                                                                            .clearQueryDailyQuestCache();
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter =
                                                                                null);
                                                                        ScaffoldMessenger.of(context)
                                                                            .clearSnackBars();
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              FFLocalizations.of(context).getVariableText(
                                                                                enText: 'Congrats!!',
                                                                                ptText: 'Parabéns!!',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 3000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).success,
                                                                          ),
                                                                        );
                                                                        if (getJsonField(
                                                                          (_model.apiResultUpdateDailyToChecked?.jsonBody ??
                                                                              ''),
                                                                          r'''$.response.acabou''',
                                                                        )) {
                                                                          await actions
                                                                              .setStringValueInJson(
                                                                            widget.book!,
                                                                            'status',
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'Completed',
                                                                              ptText: 'Completada',
                                                                            ),
                                                                          );
                                                                          FFAppState()
                                                                              .clearQueryGetContentQuestBookCache();
                                                                          FFAppState()
                                                                              .clearQueryDailyQuestCache();
                                                                          if (!(getJsonField(
                                                                                (_model.apiResultUpdateDailyToChecked?.jsonBody ?? ''),
                                                                                r'''$.rating''',
                                                                              ) !=
                                                                              null)) {
                                                                            await showModalBottomSheet(
                                                                              isScrollControlled: true,
                                                                              backgroundColor: Colors.transparent,
                                                                              enableDrag: false,
                                                                              context: context,
                                                                              builder: (context) {
                                                                                return WebViewAware(
                                                                                  child: GestureDetector(
                                                                                    onTap: () => FocusScope.of(context).unfocus(),
                                                                                    child: Padding(
                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                      child: RateQuestWidget(
                                                                                        book: widget.book!,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ).then((value) =>
                                                                                safeSetState(() {}));
                                                                          }
                                                                        }
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              FFLocalizations.of(context).getVariableText(
                                                                                enText: 'Ops, something is wrong, try again.',
                                                                                ptText: 'Opa, algo de errado aconteceu, tente novamente.',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).error,
                                                                          ),
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xFFE9ECEF),
                                                                        borderRadius:
                                                                            BorderRadius.circular(56.0),
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
                                                                                'db7g66fy' /* Pending */,
                                                                              ),
                                                                              maxLines: 1,
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: const Color(0xFF9D979E),
                                                                                fontWeight: FontWeight.w600,
                                                                                fontSize: 10.0,
                                                                              ),
                                                                            ),
                                                                            const Icon(
                                                                              Icons.circle_outlined,
                                                                              color: Color(0xFF9D979E),
                                                                              size: 12.0,
                                                                            ),
                                                                          ].divide(const SizedBox(width: 4.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if ((String
                                                                    var1) {
                                                                  return var1 ==
                                                                          'Checked' ||
                                                                      var1 ==
                                                                          'Feito';
                                                                }(getJsonField(
                                                                  questItem,
                                                                  r'''$.status''',
                                                                ).toString()))
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      _model.apiResultUpdateDailyToPending = await WfBerearBookGroup
                                                                          .updateStatusDailyQuestBookCall
                                                                          .call(
                                                                        idDailyQuestBook:
                                                                            getJsonField(
                                                                          questItem,
                                                                          r'''$.id''',
                                                                        ).toString(),
                                                                        status:
                                                                            0,
                                                                        token:
                                                                            currentAuthenticationToken,
                                                                      );

                                                                      if ((_model
                                                                              .apiResultUpdateDailyToPending
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        FFAppState()
                                                                            .clearQueryDailyQuestCache();
                                                                        safeSetState(() =>
                                                                            _model.apiRequestCompleter =
                                                                                null);
                                                                        ScaffoldMessenger.of(context)
                                                                            .clearSnackBars();
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              FFLocalizations.of(context).getVariableText(
                                                                                enText: 'You can, lets go!',
                                                                                ptText: 'Você consegue, vamos lá!',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 3000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).success,
                                                                          ),
                                                                        );
                                                                        if ((String
                                                                            var1) {
                                                                          return var1 == 'Completed' ||
                                                                              var1 == 'Completado';
                                                                        }(getJsonField(
                                                                          widget
                                                                              .book,
                                                                          r'''$.status''',
                                                                        ).toString())) {
                                                                          await actions
                                                                              .setStringValueInJson(
                                                                            widget.book!,
                                                                            'status',
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'In progress',
                                                                              ptText: 'Em progresso',
                                                                            ),
                                                                          );
                                                                          FFAppState()
                                                                              .clearQueryGetContentQuestBookCache();
                                                                        }
                                                                      } else {
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              FFLocalizations.of(context).getVariableText(
                                                                                enText: 'Ops, something is wrong, try again.',
                                                                                ptText: 'Opa, algo de errado aconteceu, tente novamente.',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).error,
                                                                          ),
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xFFE3F4E2),
                                                                        borderRadius:
                                                                            BorderRadius.circular(56.0),
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
                                                                                '4hkr9hbd' /* Checked */,
                                                                              ),
                                                                              maxLines: 1,
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: const Color(0xFF325E42),
                                                                                fontWeight: FontWeight.w600,
                                                                                fontSize: 10.0,
                                                                              ),
                                                                            ),
                                                                            const FaIcon(
                                                                              FontAwesomeIcons.solidCheckCircle,
                                                                              color: Color(0xFF325E42),
                                                                              size: 12.0,
                                                                            ),
                                                                          ].divide(const SizedBox(width: 4.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      getJsonField(
                                                                        questItem,
                                                                        r'''$.mes''',
                                                                      ).toString(),
                                                                      maxLines:
                                                                          1,
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF383438),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        questItem,
                                                                        r'''$.dia''',
                                                                      ).toString(),
                                                                      maxLines:
                                                                          1,
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF383438),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          (questIndex + 1)
                                                                              .toString(),
                                                                          maxLines:
                                                                              1,
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                const Color(0xFF383438),
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Builder(
                                                                            builder:
                                                                                (context) {
                                                                              final chapter = getJsonField(
                                                                                questItem,
                                                                                r'''$.chapter''',
                                                                              ).toList();

                                                                              return Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: List.generate(chapter.length, (chapterIndex) {
                                                                                  final chapterItem = chapter[chapterIndex];
                                                                                  return Container(
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          getJsonField(
                                                                                            chapterItem,
                                                                                            r'''$.nameChapter''',
                                                                                          ).toString(),
                                                                                          maxLines: 1,
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Poppins',
                                                                                            color: const Color(0xFF383438),
                                                                                            fontWeight: FontWeight.bold,
                                                                                            fontSize: 10.0,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          getJsonField(
                                                                                            chapterItem,
                                                                                            r'''$.number''',
                                                                                          ).toString(),
                                                                                          maxLines: 1,
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Poppins',
                                                                                            color: const Color(0xFF6A646B),
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontSize: 10.0,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  );
                                                                                }).divide(const SizedBox(height: 4.0)),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 14.0)),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 12.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
                                              ),
                                            );
                                          }).divide(const SizedBox(height: 12.0)),
                                        );
                                      },
                                    ),
                                  ].divide(const SizedBox(height: 16.0)),
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'eklqem7o' /* Show complete schedule */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF7A3080),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                          ]
                              .divide(const SizedBox(height: 16.0))
                              .addToEnd(const SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
