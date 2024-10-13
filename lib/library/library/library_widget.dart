import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/library/create_file/create_file_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'library_model.dart';
export 'library_model.dart';

class LibraryWidget extends StatefulWidget {
  const LibraryWidget({super.key});

  @override
  State<LibraryWidget> createState() => _LibraryWidgetState();
}

class _LibraryWidgetState extends State<LibraryWidget> {
  late LibraryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LibraryModel());
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: RefreshIndicator(
                      onRefresh: () async {
                        FFAppState().clearQueryMyFilesCache();
                        FFAppState().clearQueryGetAllContentsInMyFilesCache();
                        FFAppState().clearQueryGetSpecialtiesMyFilesCache();

                        context.goNamed('Library');
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
                                  24.0, 32.0, 0.0, 32.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        FFLocalizations.of(context)
                                            .languageCode,
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '2b1ugecc' /* Library */,
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
                                  24.0, 0.0, 24.0, 32.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: FFAppState().queryDailyQuest(
                                  requestFn: () =>
                                      WfBerearGroup.getDailyQuestCall.call(
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
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  final containerQuestGetDailyQuestResponse =
                                      snapshot.data!;

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'My_achievements',
                                        queryParameters: {
                                          'tab': serializeParam(
                                            1,
                                            ParamType.int,
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
                                            color: Color(0x0E000000),
                                            offset: Offset(
                                              0.0,
                                              0.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 16.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'njfwhj6g' /* Listen to 2 audiobooks */,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF383438),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'emt85khj' /* 40 XP */,
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: const Color(0xFF9D979E),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            if (WfBerearGroup.getDailyQuestCall
                                                    .listen(
                                                  containerQuestGetDailyQuestResponse
                                                      .jsonBody,
                                                ) !=
                                                null)
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 16.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFFEAE9EB),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: LinearPercentIndicator(
                                                    percent: (WfBerearGroup
                                                            .getDailyQuestCall
                                                            .listen(
                                                          containerQuestGetDailyQuestResponse
                                                              .jsonBody,
                                                        )!) /
                                                        2,
                                                    lineHeight: 16.0,
                                                    animation: true,
                                                    animateFromLastPercent:
                                                        true,
                                                    progressColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    backgroundColor:
                                                        const Color(0xFFEAE9EB),
                                                    center: Text(
                                                      '${WfBerearGroup.getDailyQuestCall.listen(
                                                            containerQuestGetDailyQuestResponse
                                                                .jsonBody,
                                                          )?.toString()}/2',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color: WfBerearGroup
                                                                    .getDailyQuestCall
                                                                    .listen(
                                                                  containerQuestGetDailyQuestResponse
                                                                      .jsonBody,
                                                                )! >=
                                                                2
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground
                                                            : const Color(0xFF9D979E),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                ),
                                              ),
                                            if (WfBerearGroup.getDailyQuestCall
                                                    .listen(
                                                  containerQuestGetDailyQuestResponse
                                                      .jsonBody,
                                                ) ==
                                                null)
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState()
                                                      .clearQueryDailyQuestCache();
                                                  _model.apiResultDailyQuest =
                                                      await WfBerearGroup
                                                          .getDailyQuestCall
                                                          .call(
                                                    token:
                                                        currentAuthenticationToken,
                                                  );

                                                  safeSetState(() {});
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                            '7r2ryikf' /* Failed to load your progress */,
                                                          ),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .purpleAlternate,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                        FlutterFlowIconButton(
                                                          borderRadius: 8.0,
                                                          buttonSize: 40.0,
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .redoAlt,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 24.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: FFAppState()
                                    .queryMyFiles(
                                  requestFn: () =>
                                      WfBerearGroup.getMyFilesCall.call(
                                    token: currentAuthenticationToken,
                                    language:
                                        currentUserData?.linguagemPreferida,
                                  ),
                                )
                                    .then((result) {
                                  _model.apiRequestCompleted = true;
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
                                  final containerPlaylistsGetMyFilesResponse =
                                      snapshot.data!;

                                  return Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const CreateFileWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 157.0,
                                                    height: 157.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFEEE7ED),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7.0),
                                                    ),
                                                    child: const Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Icon(
                                                        Icons.add,
                                                        color:
                                                            Color(0xFF383438),
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iqhykiun' /* Create file */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 19.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ),
                                          if (WfBerearGroup.getMyFilesCall
                                                      .files(
                                                    containerPlaylistsGetMyFilesResponse
                                                        .jsonBody,
                                                  ) !=
                                                  null &&
                                              (WfBerearGroup.getMyFilesCall
                                                      .files(
                                                containerPlaylistsGetMyFilesResponse
                                                    .jsonBody,
                                              ))!
                                                  .isNotEmpty)
                                            Builder(
                                              builder: (context) {
                                                final file =
                                                    WfBerearGroup.getMyFilesCall
                                                            .files(
                                                              containerPlaylistsGetMyFilesResponse
                                                                  .jsonBody,
                                                            )
                                                            ?.toList() ??
                                                        [];

                                                return Wrap(
                                                  spacing: 16.0,
                                                  runSpacing: 24.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.antiAlias,
                                                  children: List.generate(
                                                      file.length, (fileIndex) {
                                                    final fileItem =
                                                        file[fileIndex];
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
                                                        context.pushNamed(
                                                          'Inside_my_files',
                                                          queryParameters: {
                                                            'contents':
                                                                serializeParam(
                                                              getJsonField(
                                                                fileItem,
                                                                r'''$.contents''',
                                                                true,
                                                              ),
                                                              ParamType.JSON,
                                                              isList: true,
                                                            ),
                                                            'name':
                                                                serializeParam(
                                                              getJsonField(
                                                                fileItem,
                                                                r'''$.name''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'id':
                                                                serializeParam(
                                                              getJsonField(
                                                                fileItem,
                                                                r'''$.id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if ((functions
                                                                      .countItemsInList(
                                                                          getJsonField(
                                                                        fileItem,
                                                                        r'''$.contents''',
                                                                        true,
                                                                      )!)
                                                                      .toString() ==
                                                                  '1') ||
                                                              (functions
                                                                      .countItemsInList(
                                                                          getJsonField(
                                                                        fileItem,
                                                                        r'''$.contents''',
                                                                        true,
                                                                      )!)
                                                                      .toString() ==
                                                                  '0'))
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                              ),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.41,
                                                                height: 157.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFFEEE7ED),
                                                                  image:
                                                                      DecorationImage(
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    image: Image
                                                                        .network(
                                                                      getJsonField(
                                                                        fileItem,
                                                                        r'''$.cover''',
                                                                      ).toString(),
                                                                    ).image,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7.0),
                                                                ),
                                                              ),
                                                            ),
                                                          if (functions
                                                                  .countItemsInList(
                                                                      getJsonField(
                                                                    fileItem,
                                                                    r'''$.contents''',
                                                                    true,
                                                                  )!)
                                                                  .toString() ==
                                                              '2')
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                              ),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.41,
                                                                  height: 157.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFFEEE7ED),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            7.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                          child:
                                                                              Image.network(
                                                                            getJsonField(
                                                                              fileItem,
                                                                              r'''$.contents[0].cover_image''',
                                                                            ).toString(),
                                                                            height:
                                                                                157.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                          child:
                                                                              Image.network(
                                                                            getJsonField(
                                                                              fileItem,
                                                                              r'''$.contents[1].cover_image''',
                                                                            ).toString(),
                                                                            height:
                                                                                157.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            2.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          if (functions
                                                                  .countItemsInList(
                                                                      getJsonField(
                                                                    fileItem,
                                                                    r'''$.contents''',
                                                                    true,
                                                                  )!)
                                                                  .toString() ==
                                                              '3')
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                              ),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.41,
                                                                  height: 157.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFFEEE7ED),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            7.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                          child:
                                                                              Image.network(
                                                                            getJsonField(
                                                                              fileItem,
                                                                              r'''$.contents[0].cover_image''',
                                                                            ).toString(),
                                                                            height:
                                                                                157.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: Image.network(
                                                                                    getJsonField(
                                                                                      fileItem,
                                                                                      r'''$.contents[1].cover_image''',
                                                                                    ).toString(),
                                                                                    height: double.infinity,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: Image.network(
                                                                                    getJsonField(
                                                                                      fileItem,
                                                                                      r'''$.contents[2].cover_image''',
                                                                                    ).toString(),
                                                                                    height: double.infinity,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 2.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            2.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          if ((functions
                                                                      .countItemsInList(
                                                                          getJsonField(
                                                                        fileItem,
                                                                        r'''$.contents''',
                                                                        true,
                                                                      )!)
                                                                      .toString() !=
                                                                  '0') &&
                                                              (functions
                                                                      .countItemsInList(
                                                                          getJsonField(
                                                                        fileItem,
                                                                        r'''$.contents''',
                                                                        true,
                                                                      )!)
                                                                      .toString() !=
                                                                  '1') &&
                                                              (functions
                                                                      .countItemsInList(
                                                                          getJsonField(
                                                                        fileItem,
                                                                        r'''$.contents''',
                                                                        true,
                                                                      )!)
                                                                      .toString() !=
                                                                  '2') &&
                                                              (functions
                                                                      .countItemsInList(
                                                                          getJsonField(
                                                                        fileItem,
                                                                        r'''$.contents''',
                                                                        true,
                                                                      )!)
                                                                      .toString() !=
                                                                  '3'))
                                                            Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.0,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                              ),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            7.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.41,
                                                                  height: 157.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFFEEE7ED),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            7.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: Image.network(
                                                                                    functions.getImageInIndex(
                                                                                        getJsonField(
                                                                                          fileItem,
                                                                                          r'''$.contents''',
                                                                                          true,
                                                                                        )!,
                                                                                        4),
                                                                                    height: double.infinity,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: Image.network(
                                                                                    functions.getImageInIndex(
                                                                                        getJsonField(
                                                                                          fileItem,
                                                                                          r'''$.contents''',
                                                                                          true,
                                                                                        )!,
                                                                                        2),
                                                                                    height: double.infinity,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 2.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: Image.network(
                                                                                    functions.getImageInIndex(
                                                                                        getJsonField(
                                                                                          fileItem,
                                                                                          r'''$.contents''',
                                                                                          true,
                                                                                        )!,
                                                                                        3),
                                                                                    height: double.infinity,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: Image.network(
                                                                                    functions.getImageInIndex(
                                                                                        getJsonField(
                                                                                          fileItem,
                                                                                          r'''$.contents''',
                                                                                          true,
                                                                                        )!,
                                                                                        1),
                                                                                    height: double.infinity,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 2.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            2.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          Text(
                                                            getJsonField(
                                                              fileItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      19.0,
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
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          if (!(WfBerearGroup.getMyFilesCall
                                                      .files(
                                                    containerPlaylistsGetMyFilesResponse
                                                        .jsonBody,
                                                  ) !=
                                                  null &&
                                              (WfBerearGroup.getMyFilesCall
                                                      .files(
                                                containerPlaylistsGetMyFilesResponse
                                                    .jsonBody,
                                              ))!
                                                  .isNotEmpty))
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState()
                                                    .clearQueryMyFilesCache();
                                                safeSetState(() {
                                                  FFAppState()
                                                      .clearQueryMyFilesCache();
                                                  _model.apiRequestCompleted =
                                                      false;
                                                });
                                                await _model
                                                    .waitForApiRequestCompleted();
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                          'u6zcx7n1' /* Failed to load your files */,
                                                        ),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .purpleAlternate,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                      FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 8.0,
                                                        buttonSize: 40.0,
                                                        icon: FaIcon(
                                                          FontAwesomeIcons
                                                              .redoAlt,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                        ]
                                            .divide(const SizedBox(height: 35.0))
                                            .addToEnd(const SizedBox(height: 20.0)),
                                      ),
                                    ),
                                  );
                                },
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
