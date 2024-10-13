import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/quests/day_goals/day_goals_widget.dart';
import '/quests/rate_quest/rate_quest_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'content_quest_model.dart';
export 'content_quest_model.dart';

class ContentQuestWidget extends StatefulWidget {
  const ContentQuestWidget({
    super.key,
    required this.book,
  });

  final dynamic book;

  @override
  State<ContentQuestWidget> createState() => _ContentQuestWidgetState();
}

class _ContentQuestWidgetState extends State<ContentQuestWidget> {
  late ContentQuestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContentQuestModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: WfBerearBookGroup.getBookByIdCall.call(
        id: getJsonField(
          widget.book,
          r'''$.id''',
        ).toString(),
        token: currentAuthenticationToken,
      ),
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
        final contentQuestGetBookByIdResponse = snapshot.data!;

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
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: wrapWithModel(
                            model: _model.componentVoltarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const ComponentVoltarWidget(),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'm029terk' /* Content Quest */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: const Color(0xFF383438),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          fillColor: const Color(0xFFEEE7ED),
                          icon: Icon(
                            Icons.keyboard_control,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: GestureDetector(
                                    onTap: () =>
                                        FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: RateQuestWidget(
                                        book: widget.book!,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF2C2F6D), Color(0xFF058CA6)],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.64, -1.0),
                                end: AlignmentDirectional(-0.64, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 24.0, 24.0, 24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: Column(
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
                                              maxLines: 4,
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 32.0,
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
                                                color: const Color(0xFFEAE9EB),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
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
                                    ].divide(const SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0x4C000000),
                                          borderRadius:
                                              BorderRadius.circular(56.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '74tcxdg6' /* Book */,
                                                ),
                                                maxLines: 1,
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/Book.svg',
                                                  width: 12.0,
                                                  height: 12.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0x4C000000),
                                          borderRadius:
                                              BorderRadius.circular(56.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '${formatNumber(
                                                  WfBerearBookGroup
                                                          .getBookByIdCall
                                                          .chapters(
                                                            contentQuestGetBookByIdResponse
                                                                .jsonBody,
                                                          )!
                                                          .length /
                                                      2,
                                                  formatType: FormatType.custom,
                                                  format: '0',
                                                  locale: '',
                                                )}, ${WfBerearBookGroup.getBookByIdCall.chapters(
                                                      contentQuestGetBookByIdResponse
                                                          .jsonBody,
                                                    )?.length.toString()} ou ${(WfBerearBookGroup.getBookByIdCall.chapters(
                                                      contentQuestGetBookByIdResponse
                                                          .jsonBody,
                                                    )!.length * 2).toString()}${FFLocalizations.of(context).getVariableText(
                                                  enText: ' days',
                                                  ptText: ' dias',
                                                )}',
                                                maxLines: 1,
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/Calendar.svg',
                                                  width: 12.0,
                                                  height: 12.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 4.0)),
                                  ),
                                  if ((String var1) {
                                    return var1 == 'start';
                                  }(getJsonField(
                                    widget.book,
                                    r'''$.status''',
                                  ).toString()))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () =>
                                                      FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: DayGoalsWidget(
                                                      qtdCapitulos:
                                                          WfBerearBookGroup
                                                              .getBookByIdCall
                                                              .chapters(
                                                                contentQuestGetBookByIdResponse
                                                                    .jsonBody,
                                                              )!
                                                              .length,
                                                      book: widget.book!,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'px86rrew' /* Join Quest */,
                                        ),
                                        icon: const Icon(
                                          Icons.calendar_today_outlined,
                                          size: 24.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 56.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 8.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 19.0,
                                          ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(56.0),
                                        ),
                                      ),
                                    ),
                                  if ((String var1) {
                                    return var1 != 'start';
                                  }(getJsonField(
                                    widget.book,
                                    r'''$.status''',
                                  ).toString()))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'Inside_content_quest_book',
                                            queryParameters: {
                                              'book': serializeParam(
                                                widget.book,
                                                ParamType.JSON,
                                              ),
                                              'idContentQuestBook':
                                                  serializeParam(
                                                getJsonField(
                                                  widget.book,
                                                  r'''$.id_content_quest_book''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          's3nonefe' /* See progress */,
                                        ),
                                        icon: const FaIcon(
                                          FontAwesomeIcons.bookOpen,
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 56.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 8.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 19.0,
                                          ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(56.0),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '4d5iz239' /* Summary */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: const Color(0xFF383438),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19.0,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    WfBerearBookGroup.getBookByIdCall.summary(
                                      contentQuestGetBookByIdResponse.jsonBody,
                                    ),
                                    'Summary',
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: const Color(0xFF383438),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 0.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: const Color(0xFFEAE9EB),
                                              width: 0.5,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 4.0, 8.0, 4.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                            contentQuestGetBookByIdResponse
                                                                .jsonBody,
                                                            r'''$.rating''',
                                                          ) !=
                                                          null
                                                      ? getJsonField(
                                                          contentQuestGetBookByIdResponse
                                                              .jsonBody,
                                                          r'''$.rating''',
                                                        ).toString()
                                                      : FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                          enText:
                                                              'Rate this content',
                                                          ptText:
                                                              'Avalie este conteúdo',
                                                        ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xFF6A646B),
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Star.svg',
                                                    width: 12.0,
                                                    height: 12.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 4.0)),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 5.0,
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final specialty = WfBerearBookGroup
                                                    .getBookByIdCall
                                                    .specialties(
                                                      contentQuestGetBookByIdResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];

                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  specialty.length,
                                                  (specialtyIndex) {
                                                final specialtyItem =
                                                    specialty[specialtyIndex];
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFEAE9EB),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 4.0,
                                                                8.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          getJsonField(
                                                            specialtyItem,
                                                            r'''$.name''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: const Color(
                                                                    0xFF6A646B),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                  ),
                                                );
                                              }).divide(const SizedBox(width: 4.0)),
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(width: 4.0)),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await launchURL(
                                        WfBerearBookGroup.getBookByIdCall.link(
                                      contentQuestGetBookByIdResponse.jsonBody,
                                    )!);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(56.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 9.0, 15.0, 9.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: SvgPicture.asset(
                                              'assets/images/Amazon.svg',
                                              width: 16.0,
                                              height: 16.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '5w4fn4hc' /* Buy at Amazon */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: const Color(0xFF7A3080),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      's633440a' /* Chapters */,
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: const Color(0xFF383438),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19.0,
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) {
                                    final chapter =
                                        WfBerearBookGroup.getBookByIdCall
                                                .chapters(
                                                  contentQuestGetBookByIdResponse
                                                      .jsonBody,
                                                )
                                                ?.toList() ??
                                            [];

                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: chapter.length,
                                      itemBuilder: (context, chapterIndex) {
                                        final chapterItem =
                                            chapter[chapterIndex];
                                        return Container(
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0,
                                                    valueOrDefault<double>(
                                                      chapterIndex == 1
                                                          ? 0.0
                                                          : 12.0,
                                                      0.0,
                                                    ),
                                                    12.0,
                                                    12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${FFLocalizations.of(context).getVariableText(
                                                    enText: 'Chapter ',
                                                    ptText: 'Capítulo ',
                                                  )}${(chapterIndex + 1).toString()}',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.0,
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    enText: getJsonField(
                                                      chapterItem,
                                                      r'''$.name_en''',
                                                    ).toString(),
                                                    ptText: getJsonField(
                                                      chapterItem,
                                                      r'''$.name_pt''',
                                                    ).toString(),
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 4.0)),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ahwvy3vq' /* All chapters */,
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
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ].addToEnd(const SizedBox(height: 24.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
