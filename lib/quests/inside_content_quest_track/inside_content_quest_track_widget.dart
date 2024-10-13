import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'inside_content_quest_track_model.dart';
export 'inside_content_quest_track_model.dart';

class InsideContentQuestTrackWidget extends StatefulWidget {
  const InsideContentQuestTrackWidget({
    super.key,
    int? tipo,
  }) : tipo = tipo ?? 1;

  final int tipo;

  @override
  State<InsideContentQuestTrackWidget> createState() =>
      _InsideContentQuestTrackWidgetState();
}

class _InsideContentQuestTrackWidgetState
    extends State<InsideContentQuestTrackWidget> {
  late InsideContentQuestTrackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideContentQuestTrackModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '0gyf6nmm' /* Content Quest */,
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
                                '3msqiwyx' /* Share */,
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
                  decoration: const BoxDecoration(),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 8.0, 24.0, 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Container(
                                      height: 178.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
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
                                                    .getText(
                                                  'y4tl9vrj' /* The Brain That Changes Itself */,
                                                ),
                                                maxLines: 4,
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: const Color(0xFF383438),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 25.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'u9bkxdqc' /* By Norman Doidge, M.D. */,
                                                ),
                                                maxLines: 2,
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: const Color(0xFF6A646B),
                                                  fontWeight: FontWeight.normal,
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
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF7A3080),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          56.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 8.0, 4.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tgkcjqw5' /* Book */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Book.svg',
                                                          width: 12.0,
                                                          height: 12.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 4.0)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF7A3080),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          56.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 8.0, 4.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z9t96tzr' /* In progress */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Clock.svg',
                                                          width: 12.0,
                                                          height: 12.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 4.0)),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF7A3080),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          56.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 4.0, 8.0, 4.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a0b0ptaz' /* 30 days challenge */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Calendar.svg',
                                                          width: 12.0,
                                                          height: 12.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 4.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/aab7cb3113d478cd6f62d4b858000bc0.jpeg',
                                      width: 117.0,
                                      height: 178.0,
                                      fit: BoxFit.cover,
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
                                    'y90aedjq' /* Your progress */,
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
                                    percent: 0.5,
                                    lineHeight: 16.0,
                                    animation: true,
                                    animateFromLastPercent: true,
                                    progressColor:
                                        FlutterFlowTheme.of(context).primary,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    center: Text(
                                      FFLocalizations.of(context).getText(
                                        'sa4dy7a8' /* 50% */,
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: const Color(0xFF9D979E),
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    barRadius: const Radius.circular(56.0),
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
                                        'o2f19dld' /* Schedule */,
                                      ),
                                      maxLines: 4,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: const Color(0xFF383438),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19.0,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.settings_outlined,
                                      color: Color(0xFF7A3080),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 16.0,
                                      height: 116.0,
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0xFFDEDBDE),
                                              size: 16.0,
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 2.0,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFFDEDBDE),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: const Color(0xFFF3F2F3),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  14.0, 14.0, 14.0, 14.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF3F2F3),
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
                                                              'fenq8kmb' /* Day 1 */,
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
                                                              fontSize: 10.0,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Calendar_(1).svg',
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
                                                      color: const Color(0xFFF3F2F3),
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
                                                              'dgct7i2w' /* Pending */,
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
                                                              fontSize: 10.0,
                                                            ),
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .circle_outlined,
                                                            color: Color(
                                                                0xFF6A646B),
                                                            size: 12.0,
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lfygeadm' /* JAN */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9p6qlosw' /* 31 */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 25.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '9c1nnztn' /* 1 */,
                                                            ),
                                                            maxLines: 1,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: const Color(
                                                                  0xFF383438),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'pzu528xa' /* A woman perpertually falling */,
                                                                  ),
                                                                  maxLines: 1,
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF383438),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ln5svwmy' /* Chapter 1 */,
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
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Play.svg',
                                                                            width:
                                                                                10.0,
                                                                            height:
                                                                                10.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'et8j9ar2' /* 500K */,
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 2.0)),
                                                                    ),
                                                                    const Icon(
                                                                      Icons
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFF6A646B),
                                                                      size: 5.0,
                                                                    ),
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        't95jba9z' /* 0h 33m */,
                                                                      ),
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
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    const Icon(
                                                                      Icons
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFF6A646B),
                                                                      size: 5.0,
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Star.svg',
                                                                            width:
                                                                                10.0,
                                                                            height:
                                                                                10.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'grh1ii5z' /* 4.9 */,
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontSize:
                                                                                10.0,
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
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 14.0)),
                                              ),
                                            ].divide(const SizedBox(height: 12.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 16.0,
                                      height: 116.0,
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            const Icon(
                                              Icons.check_circle_outline,
                                              color: Color(0xFFDEDBDE),
                                              size: 16.0,
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 2.0,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFFDEDBDE),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: const Color(0xFFF3F2F3),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  14.0, 14.0, 14.0, 14.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF3F2F3),
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
                                                              'xr3bh8sk' /* Day 2 */,
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
                                                              fontSize: 10.0,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Calendar_(1).svg',
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
                                                      color: const Color(0xFFF3F2F3),
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
                                                              'fpt7v3ud' /* Pending */,
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
                                                              fontSize: 10.0,
                                                            ),
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .circle_outlined,
                                                            color: Color(
                                                                0xFF6A646B),
                                                            size: 12.0,
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wa1ywraa' /* FEV */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pfpzqb3s' /* 1 */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 25.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'uhojfmlj' /* 1 */,
                                                            ),
                                                            maxLines: 1,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: const Color(
                                                                  0xFF383438),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'vro9hur1' /* Building a Better Brain */,
                                                                  ),
                                                                  maxLines: 1,
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF383438),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '0hsm85u6' /* Chapter 2 */,
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
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Play.svg',
                                                                            width:
                                                                                10.0,
                                                                            height:
                                                                                10.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'x20t18sv' /* 500K */,
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 2.0)),
                                                                    ),
                                                                    const Icon(
                                                                      Icons
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFF6A646B),
                                                                      size: 5.0,
                                                                    ),
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'knmhs8yb' /* 0h 33m */,
                                                                      ),
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
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    const Icon(
                                                                      Icons
                                                                          .circle,
                                                                      color: Color(
                                                                          0xFF6A646B),
                                                                      size: 5.0,
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Star.svg',
                                                                            width:
                                                                                10.0,
                                                                            height:
                                                                                10.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'duhm9x1e' /* 4.9 */,
                                                                          ),
                                                                          maxLines:
                                                                              1,
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                const Color(0xFF6A646B),
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontSize:
                                                                                10.0,
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
                                                                  height: 4.0)),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 14.0)),
                                              ),
                                            ].divide(const SizedBox(height: 12.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '4sai06n1' /* Show complete schedule */,
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
  }
}
