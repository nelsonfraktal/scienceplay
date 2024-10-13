import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/components/buy_credits_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'my_achievements_model.dart';
export 'my_achievements_model.dart';

class MyAchievementsWidget extends StatefulWidget {
  const MyAchievementsWidget({
    super.key,
    int? tab,
  }) : tab = tab ?? 1;

  final int tab;

  @override
  State<MyAchievementsWidget> createState() => _MyAchievementsWidgetState();
}

class _MyAchievementsWidgetState extends State<MyAchievementsWidget> {
  late MyAchievementsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyAchievementsModel());
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 72.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                      Expanded(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'njp9mp7p' /* Achievements */,
                          ),
                          style: const TextStyle(
                            color: Color(0xFF383438),
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
                    ].divide(const SizedBox(width: 16.0)),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 16.0, 24.0, 32.0),
                        child: Container(
                          width: double.infinity,
                          height: 44.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.goNamed(
                                      'My_achievements',
                                      queryParameters: {
                                        'tab': serializeParam(
                                          1,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    constraints: const BoxConstraints(
                                      minWidth: double.infinity,
                                      minHeight: double.infinity,
                                      maxWidth: double.infinity,
                                      maxHeight: double.infinity,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(6.0, 0.0, 6.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'jartvuj7' /* Quest & Credits */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: valueOrDefault<Color>(
                                                    widget.tab == 1
                                                        ? const Color(0xFF514C52)
                                                        : const Color(0xFFB7B2B8),
                                                    const Color(0xFFB7B2B8),
                                                  ),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 2.0,
                                          thickness: 2.0,
                                          color: valueOrDefault<Color>(
                                            widget.tab == 1
                                                ? const Color(0xFF7A3080)
                                                : const Color(0xFFB7B2B8),
                                            const Color(0xFFB7B2B8),
                                          ),
                                        ),
                                      ],
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
                                    context.goNamed(
                                      'My_achievements',
                                      queryParameters: {
                                        'tab': serializeParam(
                                          2,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    height: 48.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Flexible(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(6.0, 0.0, 6.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8wrarwk6' /* Streak */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: valueOrDefault<Color>(
                                                    widget.tab == 2
                                                        ? const Color(0xFF514C52)
                                                        : const Color(0xFFB7B2B8),
                                                    const Color(0xFFB7B2B8),
                                                  ),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 2.0,
                                          thickness: 2.0,
                                          color: valueOrDefault<Color>(
                                            widget.tab == 2
                                                ? const Color(0xFF7A3080)
                                                : const Color(0xFFB7B2B8),
                                            const Color(0xFFB7B2B8),
                                          ),
                                        ),
                                      ],
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
                                    context.goNamed(
                                      'My_achievements',
                                      queryParameters: {
                                        'tab': serializeParam(
                                          3,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.25,
                                    height: 48.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(6.0, 0.0, 6.0, 0.0),
                                              child: AutoSizeText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'hiilrzkn' /* Badges */,
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: valueOrDefault<Color>(
                                                    widget.tab == 3
                                                        ? const Color(0xFF514C52)
                                                        : const Color(0xFFB7B2B8),
                                                    const Color(0xFFB7B2B8),
                                                  ),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 2.0,
                                          thickness: 2.0,
                                          color: valueOrDefault<Color>(
                                            widget.tab == 3
                                                ? const Color(0xFF7A3080)
                                                : const Color(0xFFB7B2B8),
                                            const Color(0xFFB7B2B8),
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
                      if (widget.tab == 1)
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 24.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: FFAppState().queryMoedasDoUsuario(
                                requestFn: () => ObjGroup.getUserUIDCall.call(
                                  constraints:
                                      '[{\"key\": \"_id\", \"constraint_type\": \"equals\", \"value\": \"$currentUserUid\"}]',
                                ),
                              ),
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final columnQuest7CreditsGetUserUIDResponse =
                                    snapshot.data!;

                                return SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 49.0,
                                          decoration: const BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    functions.timeLeftToEndDay(
                                                        currentUserData
                                                            ?.linguagemPreferida),
                                                    style: const TextStyle(
                                                      color: Color(0xFF9D979E),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm0fgea0o' /* Daily Quests */,
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: const Color(0xFF383438),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 19.0,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(height: 4.0)),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 4.0),
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
                                                        context
                                                            .goNamed('Explore');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vq7u8qgf' /* Explore content */,
                                                        ),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF7A3080),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xFFFFB45E),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
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
                                                      Flexible(
                                                        child: Container(
                                                          width: 110.0,
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xFFFFB45E),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
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
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    't0dwngrx' /* Content Quest */,
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  maxLines: 1,
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                const Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .star_rounded,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 10.0,
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const Icon(
                                                        Icons
                                                            .keyboard_arrow_right_sharp,
                                                        color:
                                                            Color(0xFF383438),
                                                        size: 16.0,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z0fsphm7' /* 30 days challenge */,
                                                        ),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF847B85),
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 10.0,
                                                        ),
                                                      ),
                                                      Padding(
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
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                'https://picsum.photos/seed/825/600',
                                                                width: 64.9,
                                                                height: 43.3,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Container(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'n8xp0gi7' /* How Neuroscience Sheds Light o... */,
                                                                      ),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF383438),
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'chdeuwb7' /* The Lancet */,
                                                                      ),
                                                                      maxLines:
                                                                          1,
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF6A646B),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            10.0,
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children:
                                                                            [
                                                                          Icon(
                                                                            Icons.play_circle,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'r1aacba1' /* 300K */,
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: const Color(0xFF9D979E),
                                                                              fontWeight: FontWeight.normal,
                                                                              fontSize: 10.0,
                                                                            ),
                                                                          ),
                                                                          Icon(
                                                                            Icons.circle,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                4.0,
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'wtlxdjb8' /* 9:12 */,
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: const Color(0xFF9D979E),
                                                                              fontWeight: FontWeight.normal,
                                                                              fontSize: 10.0,
                                                                            ),
                                                                          ),
                                                                          Icon(
                                                                            Icons.circle,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                4.0,
                                                                          ),
                                                                          const Icon(
                                                                            Icons.star_rounded,
                                                                            color:
                                                                                Color(0xFFFFB45E),
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'vq1rw8ok' /* 4.9 */,
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: const Color(0xFF6A646B),
                                                                              fontWeight: FontWeight.normal,
                                                                              fontSize: 10.0,
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(width: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
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
                                                          'przxegyj' /* Day 3 */,
                                                        ),
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 110.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              const Color(0xFFE9ECEF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
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
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'j4fo5xkb' /* Content Quest */,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                maxLines: 1,
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: const Color(
                                                                      0xFF9D979E),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      10.0,
                                                                ),
                                                              ),
                                                              const Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .circle_outlined,
                                                                  color: Color(
                                                                      0xFF9D979E),
                                                                  size: 10.0,
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 4.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(const SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      FutureBuilder<ApiCallResponse>(
                                        future: FFAppState()
                                            .queryDailyQuest(
                                          requestFn: () => WfBerearGroup
                                              .getDailyQuestCall
                                              .call(
                                            token: currentAuthenticationToken,
                                          ),
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
                                                child:
                                                    CircularProgressIndicator(
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
                                          final containerStreakListAndSpendGetDailyQuestResponse =
                                              snapshot.data!;

                                          return Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (getJsonField(
                                                      WfBerearGroup
                                                          .getDailyQuestCall
                                                          .contentQuest(
                                                        containerStreakListAndSpendGetDailyQuestResponse
                                                            .jsonBody,
                                                      ),
                                                      r'''$.id''',
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
                                                        'Inside_content_quest_book',
                                                        queryParameters: {
                                                          'book':
                                                              serializeParam(
                                                            WfBerearGroup
                                                                .getDailyQuestCall
                                                                .contentQuest(
                                                              containerStreakListAndSpendGetDailyQuestResponse
                                                                  .jsonBody,
                                                            ),
                                                            ParamType.JSON,
                                                          ),
                                                          'idContentQuestBook':
                                                              serializeParam(
                                                            getJsonField(
                                                              WfBerearGroup
                                                                  .getDailyQuestCall
                                                                  .contentQuest(
                                                                containerStreakListAndSpendGetDailyQuestResponse
                                                                    .jsonBody,
                                                              ),
                                                              r'''$.id_content_quest_book''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 25.0,
                                                            color: Color(
                                                                0x0D000000),
                                                            offset: Offset(
                                                              0.0,
                                                              0.0,
                                                            ),
                                                            spreadRadius: 0.0,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color:
                                                              const Color(0xFFFFB45E),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    12.0,
                                                                    12.0,
                                                                    12.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Flexible(
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFFFFB45E),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'xirbtxkr' /* Content Quest */,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                1,
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: Colors.white,
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 12.0,
                                                                            ),
                                                                          ),
                                                                          const Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.star_rate_rounded,
                                                                              color: Colors.white,
                                                                              size: 12.0,
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(width: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                const FaIcon(
                                                                  FontAwesomeIcons
                                                                      .angleRight,
                                                                  color: Color(
                                                                      0xFF383438),
                                                                  size: 16.0,
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              '${getJsonField(
                                                                WfBerearGroup
                                                                    .getDailyQuestCall
                                                                    .contentQuest(
                                                                  containerStreakListAndSpendGetDailyQuestResponse
                                                                      .jsonBody,
                                                                ),
                                                                r'''$.days_challenge''',
                                                              ).toString()}${FFLocalizations.of(context).getVariableText(
                                                                enText:
                                                                    ' days challenge',
                                                                ptText:
                                                                    ' dias de desafio',
                                                              )}',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF847B85),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 10.0,
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    getJsonField(
                                                                      WfBerearGroup
                                                                          .getDailyQuestCall
                                                                          .contentQuest(
                                                                        containerStreakListAndSpendGetDailyQuestResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      r'''$.image''',
                                                                    ).toString(),
                                                                    width: 60.0,
                                                                    height:
                                                                        77.0,
                                                                    fit: BoxFit
                                                                        .cover,
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
                                                                        FFLocalizations.of(context)
                                                                            .getVariableText(
                                                                          enText:
                                                                              getJsonField(
                                                                            WfBerearGroup.getDailyQuestCall.contentQuest(
                                                                              containerStreakListAndSpendGetDailyQuestResponse.jsonBody,
                                                                            ),
                                                                            r'''$.title_en''',
                                                                          ).toString(),
                                                                          ptText:
                                                                              getJsonField(
                                                                            WfBerearGroup.getDailyQuestCall.contentQuest(
                                                                              containerStreakListAndSpendGetDailyQuestResponse.jsonBody,
                                                                            ),
                                                                            r'''$.title_pt''',
                                                                          ).toString(),
                                                                        ),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFF383438),
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        getJsonField(
                                                                          WfBerearGroup
                                                                              .getDailyQuestCall
                                                                              .contentQuest(
                                                                            containerStreakListAndSpendGetDailyQuestResponse.jsonBody,
                                                                          ),
                                                                          r'''$.author''',
                                                                        ).toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFF6A646B),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  '${FFLocalizations.of(context).getVariableText(
                                                                    enText:
                                                                        'Day ',
                                                                    ptText:
                                                                        'Dia ',
                                                                  )}${getJsonField(
                                                                    WfBerearGroup
                                                                        .getDailyQuestCall
                                                                        .contentQuest(
                                                                      containerStreakListAndSpendGetDailyQuestResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    r'''$.current_day''',
                                                                  ).toString()}',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF383438),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                                if ((String
                                                                    var1) {
                                                                  return var1 ==
                                                                          'Checked' ||
                                                                      var1 ==
                                                                          'Feito';
                                                                }(getJsonField(
                                                                  WfBerearGroup
                                                                      .getDailyQuestCall
                                                                      .contentQuest(
                                                                    containerStreakListAndSpendGetDailyQuestResponse
                                                                        .jsonBody,
                                                                  ),
                                                                  r'''$.status_daily''',
                                                                ).toString()))
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFFE3F4E2),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              56.0),
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
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'Checked',
                                                                              ptText: 'Feito',
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: const Color(0xFF325E42),
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 10.0,
                                                                            ),
                                                                          ),
                                                                          const FaIcon(
                                                                            FontAwesomeIcons.solidCheckCircle,
                                                                            color:
                                                                                Color(0xFF325E42),
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                        ].divide(const SizedBox(width: 4.0)),
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
                                                                  WfBerearGroup
                                                                      .getDailyQuestCall
                                                                      .contentQuest(
                                                                    containerStreakListAndSpendGetDailyQuestResponse
                                                                        .jsonBody,
                                                                  ),
                                                                  r'''$.status_daily''',
                                                                ).toString()))
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFFE9ECEF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              56.0),
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
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'Pending',
                                                                              ptText: 'Pendente',
                                                                            ),
                                                                            maxLines:
                                                                                1,
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: const Color(0xFF9D979E),
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 10.0,
                                                                            ),
                                                                          ),
                                                                          const Icon(
                                                                            Icons.circle_outlined,
                                                                            color:
                                                                                Color(0xFF9D979E),
                                                                            size:
                                                                                12.0,
                                                                          ),
                                                                        ].divide(const SizedBox(width: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ].divide(const SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 8.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFF3F2F3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
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
                                                                'j6f6gcgm' /* Listen to 2 audiobooks */,
                                                              ),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF383438),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'm6ymh0y0' /* 40 XP */,
                                                              ),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF9D979E),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        if (WfBerearGroup
                                                                .getDailyQuestCall
                                                                .listen(
                                                              containerStreakListAndSpendGetDailyQuestResponse
                                                                  .jsonBody,
                                                            ) !=
                                                            null)
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 16.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xFFEAE9EB),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child:
                                                                  LinearPercentIndicator(
                                                                percent: (WfBerearGroup
                                                                        .getDailyQuestCall
                                                                        .listen(
                                                                      containerStreakListAndSpendGetDailyQuestResponse
                                                                          .jsonBody,
                                                                    )!) /
                                                                    2,
                                                                lineHeight:
                                                                    16.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xFFEAE9EB),
                                                                center: Text(
                                                                  '${WfBerearGroup.getDailyQuestCall.listen(
                                                                        containerStreakListAndSpendGetDailyQuestResponse
                                                                            .jsonBody,
                                                                      )?.toString()}/2',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: WfBerearGroup.getDailyQuestCall
                                                                                .listen(
                                                                              containerStreakListAndSpendGetDailyQuestResponse.jsonBody,
                                                                            )! >=
                                                                            2
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : const Color(
                                                                            0xFF9D979E),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ),
                                                          ),
                                                        if (WfBerearGroup
                                                                .getDailyQuestCall
                                                                .listen(
                                                              containerStreakListAndSpendGetDailyQuestResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            null)
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
                                                              FFAppState()
                                                                  .clearQueryDailyQuestCache();
                                                              safeSetState(() {
                                                                FFAppState()
                                                                    .clearQueryDailyQuestCache();
                                                                _model.apiRequestCompleted1 =
                                                                    false;
                                                              });
                                                              await _model
                                                                  .waitForApiRequestCompleted1();
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
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
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'wkzegurh' /* Failed to load your progress */,
                                                                      ),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .purpleAlternate,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          8.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .redoAlt,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .purpleAlternate,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      showLoadingIndicator:
                                                                          true,
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFF3F2F3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
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
                                                                'zsti2z9z' /* Spend 15 minutes learning */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: const Color(
                                                                        0xFF383438),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '5s2tbsfp' /* 100 XP */,
                                                              ),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF9D979E),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        if (WfBerearGroup
                                                                .getDailyQuestCall
                                                                .time(
                                                              containerStreakListAndSpendGetDailyQuestResponse
                                                                  .jsonBody,
                                                            ) !=
                                                            null)
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 16.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xFFEAE9EB),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                              ),
                                                              child:
                                                                  LinearPercentIndicator(
                                                                percent: (WfBerearGroup
                                                                        .getDailyQuestCall
                                                                        .time(
                                                                      containerStreakListAndSpendGetDailyQuestResponse
                                                                          .jsonBody,
                                                                    )!) /
                                                                    15,
                                                                lineHeight:
                                                                    16.0,
                                                                animation: true,
                                                                animateFromLastPercent:
                                                                    true,
                                                                progressColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                backgroundColor:
                                                                    const Color(
                                                                        0xFFEAE9EB),
                                                                center: Text(
                                                                  '${WfBerearGroup.getDailyQuestCall.time(
                                                                        containerStreakListAndSpendGetDailyQuestResponse
                                                                            .jsonBody,
                                                                      )?.toString()}/15',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: WfBerearGroup.getDailyQuestCall
                                                                                .time(
                                                                              containerStreakListAndSpendGetDailyQuestResponse.jsonBody,
                                                                            )! >=
                                                                            8
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : const Color(
                                                                            0xFF9D979E),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        10.0,
                                                                  ),
                                                                ),
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                              ),
                                                            ),
                                                          ),
                                                        if (WfBerearGroup
                                                                .getDailyQuestCall
                                                                .time(
                                                              containerStreakListAndSpendGetDailyQuestResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            null)
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
                                                              FFAppState()
                                                                  .clearQueryDailyQuestCache();
                                                              safeSetState(() {
                                                                FFAppState()
                                                                    .clearQueryDailyQuestCache();
                                                                _model.apiRequestCompleted1 =
                                                                    false;
                                                              });
                                                              await _model
                                                                  .waitForApiRequestCompleted1();
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
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
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'mltuhir2' /* Failed to load your progress */,
                                                                      ),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .purpleAlternate,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          8.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .redoAlt,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .purpleAlternate,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      showLoadingIndicator:
                                                                          true,
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ].divide(const SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 8.0)),
                                            ),
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
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 32.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'iol2u2vr' /* My credits */,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 19.0,
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    gradient: const LinearGradient(
                                                      colors: [
                                                        Color(0xFF325E42),
                                                        Color(0xFF618F71)
                                                      ],
                                                      stops: [0.0, 1.0],
                                                      begin:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      end: AlignmentDirectional(
                                                          -1.0, 0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(20.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
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
                                                                        'f3k535ee' /* Available Credits */,
                                                                      ),
                                                                      style:
                                                                          const TextStyle(
                                                                        color: Color(
                                                                            0xFFE3F4E2),
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Creditos_science_play.svg',
                                                                            width:
                                                                                35.0,
                                                                            height:
                                                                                35.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            ObjGroup.getUserUIDCall
                                                                                .credits(
                                                                                  columnQuest7CreditsGetUserUIDResponse.jsonBody,
                                                                                )
                                                                                ?.toString(),
                                                                            '0',
                                                                          ),
                                                                          style:
                                                                              const TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                32.0,
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                                Column(
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
                                                                        'wemrmsh8' /* Earned XP */,
                                                                      ),
                                                                      style:
                                                                          const TextStyle(
                                                                        color: Color(
                                                                            0xFFE3F4E2),
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        ObjGroup
                                                                            .getUserUIDCall
                                                                            .experiencia(
                                                                              columnQuest7CreditsGetUserUIDResponse.jsonBody,
                                                                            )
                                                                            ?.toString(),
                                                                        '0',
                                                                      ),
                                                                      style:
                                                                          const TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            32.0,
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 14.0)),
                                                            ),
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/Money.svg',
                                                                width: 64.0,
                                                                height: 64.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'q7tj8hd3' /* Credits can be used to access ... */,
                                                          ),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: const Color(
                                                                0xFFE3F4E2),
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        20.0,
                                                                        16.0,
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
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Crown.svg',
                                                                    width: 48.0,
                                                                    height:
                                                                        48.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'j2j9dbs0' /* Be Premium and get unlimited a... */,
                                                                        ),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFF383438),
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
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
                                                                            context.goNamed('Available_plans');
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'mtri9sfp' /* See all plans */,
                                                                            ),
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: const Color(0xFF7A3080),
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 16.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 16.0)),
                                                    ),
                                                  ),
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Flexible(
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
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    const BuyCreditsWidget(
                                                                  credits: 120,
                                                                  valuexp: 1200,
                                                                  valuemoney: 9,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        border: Border.all(
                                                          color:
                                                              const Color(0xFFFFB45E),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xFFFFF7EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            200.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Creditos_science_play_(1).svg',
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'hpyp1x4m' /* 120 credits */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF514C52),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                't2946ffd' /* $9,90 or 1200XP */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFFFFB45E),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
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
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    const BuyCreditsWidget(
                                                                  credits: 250,
                                                                  valuexp: 2000,
                                                                  valuemoney: 9,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        border: Border.all(
                                                          color:
                                                              const Color(0xFFFFB45E),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xFFFFF7EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            200.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Creditos_science_play_(1).svg',
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'piykf1ty' /* 250 credits */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF514C52),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'xvtauo8m' /* $19,90 or 2000XP */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFFFFB45E),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
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
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    const BuyCreditsWidget(
                                                                  credits: 600,
                                                                  valuexp: 4500,
                                                                  valuemoney: 9,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        border: Border.all(
                                                          color:
                                                              const Color(0xFFFFB45E),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xFFFFF7EF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            200.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Creditos_science_play_(1).svg',
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'g4bekxxn' /* 600 credits */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFF514C52),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'u3gnvcx0' /* $29,90 or 4500XP */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: const Color(
                                                                    0xFFFFB45E),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 8.0)),
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
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
                                                          '895gr5kq' /* Last badges */,
                                                        ),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              const Color(0xFF383438),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 19.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gyz7610r' /* All badges */,
                                                          ),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: const Color(
                                                                0xFF7A3080),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFF3F2F3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Medal.svg',
                                                            width: 32.0,
                                                            height: 32.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Flexible(
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
                                                                  'ifm0zila' /* Greater Guidance */,
                                                                ),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: const Color(
                                                                      0xFF383438),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'r6wdex0i' /* Complete a content quest */,
                                                                  ),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF6A646B),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 4.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFF3F7652),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFF3F2F3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Medal.svg',
                                                            width: 32.0,
                                                            height: 32.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Flexible(
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
                                                                  'n90sbtdr' /* Track your brain */,
                                                                ),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: const Color(
                                                                      0xFF383438),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '16l408v3' /* Starts a track content */,
                                                                  ),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF6A646B),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 4.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFF3F7652),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFF3F2F3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Brain.svg',
                                                            width: 32.0,
                                                            height: 32.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Flexible(
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
                                                                  'd4zmw1ko' /* Neurolover */,
                                                                ),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: const Color(
                                                                      0xFF383438),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'zij3v9kl' /* Complete a Track about Neurosc... */,
                                                                  ),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: const Color(
                                                                        0xFF6A646B),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontSize:
                                                                        12.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 4.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFF3F7652),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                    ].divide(const SizedBox(height: 0.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      if (widget.tab == 2)
                        Flexible(
                          child: FutureBuilder<ApiCallResponse>(
                            future: _model
                                .queryStreakAll(
                              requestFn: () =>
                                  WfBerearGroup.getUserStreakAllCall.call(
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              final containerStreakGetUserStreakAllResponse =
                                  snapshot.data!;

                              return Container(
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 24.0),
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFF325E42),
                                                Color(0xFF618F71)
                                              ],
                                              stops: [0.0, 1.0],
                                              begin: AlignmentDirectional(
                                                  1.0, 0.0),
                                              end:
                                                  AlignmentDirectional(-1.0, 0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: const BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
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
                                                                    'assets/images/Fire.svg',
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      WfBerearGroup.getUserStreakAllCall.currentstreak(
                                                                                containerStreakGetUserStreakAllResponse.jsonBody,
                                                                              ) !=
                                                                              null
                                                                          ? WfBerearGroup.getUserStreakAllCall
                                                                              .currentstreak(
                                                                                containerStreakGetUserStreakAllResponse.jsonBody,
                                                                              )
                                                                              ?.toString()
                                                                          : '-',
                                                                      '0',
                                                                    ),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          32.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'i48s2go9' /* day streak! */,
                                                                  ),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Container(
                                                                    width:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0xFF325E42),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '2e27kexa' /* Science Master */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFFE3F4E2),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              10.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ].divide(const SizedBox(
                                                                  width: 12.0)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      if (WfBerearGroup
                                                              .getUserStreakAllCall
                                                              .sunday(
                                                            containerStreakGetUserStreakAllResponse
                                                                .jsonBody,
                                                          ) !=
                                                          null)
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            CircularPercentIndicator(
                                                              percent: functions
                                                                      .numbersOfTrue(
                                                                          WfBerearGroup
                                                                              .getUserStreakAllCall
                                                                              .monday(
                                                                            containerStreakGetUserStreakAllResponse.jsonBody,
                                                                          )!,
                                                                          WfBerearGroup
                                                                              .getUserStreakAllCall
                                                                              .tuesday(
                                                                            containerStreakGetUserStreakAllResponse.jsonBody,
                                                                          )!,
                                                                          WfBerearGroup
                                                                              .getUserStreakAllCall
                                                                              .wednesday(
                                                                            containerStreakGetUserStreakAllResponse.jsonBody,
                                                                          )!,
                                                                          WfBerearGroup
                                                                              .getUserStreakAllCall
                                                                              .thursday(
                                                                            containerStreakGetUserStreakAllResponse.jsonBody,
                                                                          )!,
                                                                          WfBerearGroup
                                                                              .getUserStreakAllCall
                                                                              .friday(
                                                                            containerStreakGetUserStreakAllResponse.jsonBody,
                                                                          )!,
                                                                          WfBerearGroup
                                                                              .getUserStreakAllCall
                                                                              .saturday(
                                                                            containerStreakGetUserStreakAllResponse.jsonBody,
                                                                          )!,
                                                                          WfBerearGroup
                                                                              .getUserStreakAllCall
                                                                              .sunday(
                                                                            containerStreakGetUserStreakAllResponse.jsonBody,
                                                                          )!) /
                                                                  7,
                                                              radius: 25.0,
                                                              lineWidth: 10.0,
                                                              animation: true,
                                                              animateFromLastPercent:
                                                                  true,
                                                              progressColor:
                                                                  const Color(
                                                                      0xFFFFC37E),
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xFF6B8E73),
                                                              center: Text(
                                                                '${functions.numbersOfTrue(WfBerearGroup.getUserStreakAllCall.monday(
                                                                      containerStreakGetUserStreakAllResponse
                                                                          .jsonBody,
                                                                    )!, WfBerearGroup.getUserStreakAllCall.tuesday(
                                                                      containerStreakGetUserStreakAllResponse
                                                                          .jsonBody,
                                                                    )!, WfBerearGroup.getUserStreakAllCall.wednesday(
                                                                      containerStreakGetUserStreakAllResponse
                                                                          .jsonBody,
                                                                    )!, WfBerearGroup.getUserStreakAllCall.thursday(
                                                                      containerStreakGetUserStreakAllResponse
                                                                          .jsonBody,
                                                                    )!, WfBerearGroup.getUserStreakAllCall.friday(
                                                                      containerStreakGetUserStreakAllResponse
                                                                          .jsonBody,
                                                                    )!, WfBerearGroup.getUserStreakAllCall.saturday(
                                                                      containerStreakGetUserStreakAllResponse
                                                                          .jsonBody,
                                                                    )!, WfBerearGroup.getUserStreakAllCall.sunday(
                                                                      containerStreakGetUserStreakAllResponse
                                                                          .jsonBody,
                                                                    )!).toString()}/7',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      1.0, 1.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '2amcxtzb' /* This week */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 4.0)),
                                                        ),
                                                    ].divide(
                                                        const SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                20.0,
                                                                16.0,
                                                                16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Student.svg',
                                                            width: 48.0,
                                                            height: 48.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Flexible(
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
                                                                  'qf201xs2' /* Study today to extend your str... */,
                                                                ),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: const Color(
                                                                      0xFF383438),
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'Explore');
                                                                  },
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'v9r0sf2q' /* Explore content */,
                                                                    ),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: const Color(
                                                                          0xFF7A3080),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 12.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 16.0)),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFF3F2F3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
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
                                                          FlutterFlowCalendar(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            iconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                            weekFormat: false,
                                                            weekStartsMonday:
                                                                false,
                                                            initialDate:
                                                                getCurrentTimestamp,
                                                            rowHeight: 64.0,
                                                            onChange:
                                                                (DateTimeRange?
                                                                    newSelectedDate) {
                                                              safeSetState(() =>
                                                                  _model.calendarSelectedDay =
                                                                      newSelectedDate);
                                                            },
                                                            titleStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            dayOfWeekStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            dateStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            selectedDateStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            inactiveDateStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                        if (WfBerearGroup
                                                                .getUserStreakAllCall
                                                                .sunday(
                                                              containerStreakGetUserStreakAllResponse
                                                                  .jsonBody,
                                                            ) !=
                                                            null)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      enText:
                                                                          'Sun',
                                                                      ptText:
                                                                          'Dom',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if (!WfBerearGroup
                                                                      .getUserStreakAllCall
                                                                      .sunday(
                                                                    containerStreakGetUserStreakAllResponse
                                                                        .jsonBody,
                                                                  )!)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTimesCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  if (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .sunday(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      ) ??
                                                                      true)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidCheckCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .purpleAlternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      enText:
                                                                          'Mon',
                                                                      ptText:
                                                                          'Seg',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if (!WfBerearGroup
                                                                      .getUserStreakAllCall
                                                                      .monday(
                                                                    containerStreakGetUserStreakAllResponse
                                                                        .jsonBody,
                                                                  )!)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTimesCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  if (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .monday(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      ) ??
                                                                      true)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidCheckCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .purpleAlternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      enText:
                                                                          'Tue',
                                                                      ptText:
                                                                          'Ter',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if (!WfBerearGroup
                                                                      .getUserStreakAllCall
                                                                      .tuesday(
                                                                    containerStreakGetUserStreakAllResponse
                                                                        .jsonBody,
                                                                  )!)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTimesCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  if (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .tuesday(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      ) ??
                                                                      true)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidCheckCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .purpleAlternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      enText:
                                                                          'Wed',
                                                                      ptText:
                                                                          'Qua',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if (!WfBerearGroup
                                                                      .getUserStreakAllCall
                                                                      .wednesday(
                                                                    containerStreakGetUserStreakAllResponse
                                                                        .jsonBody,
                                                                  )!)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTimesCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  if (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .wednesday(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      ) ??
                                                                      true)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidCheckCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .purpleAlternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      enText:
                                                                          'Thu',
                                                                      ptText:
                                                                          'Qui',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if (!WfBerearGroup
                                                                      .getUserStreakAllCall
                                                                      .thursday(
                                                                    containerStreakGetUserStreakAllResponse
                                                                        .jsonBody,
                                                                  )!)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTimesCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  if (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .thursday(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      ) ??
                                                                      true)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidCheckCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .purpleAlternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      enText:
                                                                          'Fri',
                                                                      ptText:
                                                                          'Sex',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if (!WfBerearGroup
                                                                      .getUserStreakAllCall
                                                                      .friday(
                                                                    containerStreakGetUserStreakAllResponse
                                                                        .jsonBody,
                                                                  )!)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTimesCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  if (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .friday(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      ) ??
                                                                      true)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidCheckCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .purpleAlternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getVariableText(
                                                                      enText:
                                                                          'Sat',
                                                                      ptText:
                                                                          'Sab',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF9D979E),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if (!WfBerearGroup
                                                                      .getUserStreakAllCall
                                                                      .saturday(
                                                                    containerStreakGetUserStreakAllResponse
                                                                        .jsonBody,
                                                                  )!)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidTimesCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  if (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .saturday(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      ) ??
                                                                      true)
                                                                    FaIcon(
                                                                      FontAwesomeIcons
                                                                          .solidCheckCircle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .purpleAlternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 6.0)),
                                                          ),
                                                        if (WfBerearGroup
                                                                .getUserStreakAllCall
                                                                .sunday(
                                                              containerStreakGetUserStreakAllResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            null)
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
                                                              _model
                                                                  .clearQueryStreakAllCache();
                                                              safeSetState(() {
                                                                _model
                                                                    .clearQueryStreakAllCache();
                                                                _model.apiRequestCompleted2 =
                                                                    false;
                                                              });
                                                              await _model
                                                                  .waitForApiRequestCompleted2();
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
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
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'nam5cmdh' /* Failed to load your progress */,
                                                                      ),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .purpleAlternate,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          8.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .redoAlt,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .purpleAlternate,
                                                                        size:
                                                                            16.0,
                                                                      ),
                                                                      showLoadingIndicator:
                                                                          true,
                                                                      onPressed:
                                                                          () {
                                                                        print(
                                                                            'IconButton pressed ...');
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ].divide(const SizedBox(
                                                          height: 20.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4ze72k11' /* Science Master’s Rewards */,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 19.0,
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                      color: const Color(0xFFF3F2F3),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Flexible(
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
                                                                  'pbrkog7p' /* Reach a 30 day Streak to unloc... */,
                                                                ),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: const Color(
                                                                      0xFF383438),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 16.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFF9D979E),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                                child:
                                                                    LinearPercentIndicator(
                                                                  percent: (WfBerearGroup
                                                                          .getUserStreakAllCall
                                                                          .currentstreak(
                                                                        containerStreakGetUserStreakAllResponse
                                                                            .jsonBody,
                                                                      )!) /
                                                                      100,
                                                                  lineHeight:
                                                                      16.0,
                                                                  animation:
                                                                      true,
                                                                  animateFromLastPercent:
                                                                      true,
                                                                  progressColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent4,
                                                                  center: Text(
                                                                    '${WfBerearGroup.getUserStreakAllCall.currentstreak(
                                                                          containerStreakGetUserStreakAllResponse
                                                                              .jsonBody,
                                                                        )?.toString()}/100',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFFEAE9EB),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  barRadius: const Radius
                                                                      .circular(
                                                                          8.0),
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 16.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      if (widget.tab == 3)
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 24.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFF7EF),
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: const Color(0xFFFFB45E),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '5jxc848s' /* DISCLAIMER: */,
                                            ),
                                            style: const TextStyle(
                                              color: Color(0xFF6A646B),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'wj3y1acd' /* Badges are interactive. They d... */,
                                            ),
                                            style: const TextStyle(
                                              color: Color(0xFF6A646B),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: FFAppState().queryUserBadges(
                                        requestFn: () => WfBerearGroup
                                            .getUsersBadgesCall
                                            .call(
                                          token: currentAuthenticationToken,
                                        ),
                                      ),
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
                                        final containerBadgesGetUsersBadgesResponse =
                                            snapshot.data!;

                                        return Container(
                                          width: double.infinity,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final badgeCompleted =
                                                      WfBerearGroup
                                                              .getUsersBadgesCall
                                                              .badgesCompleted(
                                                                containerBadgesGetUsersBadgesResponse
                                                                    .jsonBody,
                                                              )
                                                              ?.toList() ??
                                                          [];

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        badgeCompleted.length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(height: 8.0),
                                                    itemBuilder: (context,
                                                        badgeCompletedIndex) {
                                                      final badgeCompletedItem =
                                                          badgeCompleted[
                                                              badgeCompletedIndex];
                                                      return Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFFF3F2F3),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  functions.containsHttps(
                                                                          getJsonField(
                                                                    badgeCompletedItem,
                                                                    r'''$.image''',
                                                                  ).toString())
                                                                      ? getJsonField(
                                                                          badgeCompletedItem,
                                                                          r'''$.image''',
                                                                        ).toString()
                                                                      : 'https:${getJsonField(
                                                                          badgeCompletedItem,
                                                                          r'''$.image''',
                                                                        ).toString()}',
                                                                  width: 32.0,
                                                                  height: 32.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      getJsonField(
                                                                        badgeCompletedItem,
                                                                        r'''$.name''',
                                                                      ).toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF383438),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          badgeCompletedItem,
                                                                          r'''$.description''',
                                                                        ).toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              const Color(0xFF6A646B),
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          4.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xFF3F7652),
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final badgeIncompleted =
                                                      WfBerearGroup
                                                              .getUsersBadgesCall
                                                              .badgesIncompleted(
                                                                containerBadgesGetUsersBadgesResponse
                                                                    .jsonBody,
                                                              )
                                                              ?.toList() ??
                                                          [];

                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        badgeIncompleted.length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(height: 8.0),
                                                    itemBuilder: (context,
                                                        badgeIncompletedIndex) {
                                                      final badgeIncompletedItem =
                                                          badgeIncompleted[
                                                              badgeIncompletedIndex];
                                                      return Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                          border: Border.all(
                                                            color: const Color(
                                                                0xFFF3F2F3),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      16.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child: Image
                                                                    .network(
                                                                  functions.containsHttps(
                                                                          getJsonField(
                                                                    badgeIncompletedItem,
                                                                    r'''$.image''',
                                                                  ).toString())
                                                                      ? getJsonField(
                                                                          badgeIncompletedItem,
                                                                          r'''$.image''',
                                                                        ).toString()
                                                                      : 'https:${getJsonField(
                                                                          badgeIncompletedItem,
                                                                          r'''$.image''',
                                                                        ).toString()}',
                                                                  width: 32.0,
                                                                  height: 32.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      getJsonField(
                                                                        badgeIncompletedItem,
                                                                        r'''$.name''',
                                                                      ).toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF383438),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        badgeIncompletedItem,
                                                                        r'''$.description''',
                                                                      ).toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: const Color(
                                                                            0xFF6A646B),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 16.0)),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                    ],
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
