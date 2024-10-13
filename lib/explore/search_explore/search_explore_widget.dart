import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'search_explore_model.dart';
export 'search_explore_model.dart';

class SearchExploreWidget extends StatefulWidget {
  const SearchExploreWidget({
    super.key,
    this.pesquisa,
  });

  final String? pesquisa;

  @override
  State<SearchExploreWidget> createState() => _SearchExploreWidgetState();
}

class _SearchExploreWidgetState extends State<SearchExploreWidget> {
  late SearchExploreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchExploreModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.pesquisa != null && widget.pesquisa != '') {
        _model.loading = true;
        safeSetState(() {});
        _model.apiResulteit = await WfBerearGroup.getContentByKWCall.call(
          kw: widget.pesquisa,
          language: currentUserData?.linguagemPreferida,
          token: currentAuthenticationToken,
        );

        if ((_model.apiResulteit?.succeeded ?? true)) {
          _model.contents = getJsonField(
            (_model.apiResulteit?.jsonBody ?? ''),
            r'''$.contents''',
            true,
          )!
              .toList()
              .cast<dynamic>();
          safeSetState(() {});
          if (_model.contents.isNotEmpty) {
            _model.searchEmpty = false;
            safeSetState(() {});
          } else {
            _model.searchEmpty = true;
            safeSetState(() {});
          }
        } else {
          _model.searchEmpty = true;
          safeSetState(() {});
        }

        _model.loading = false;
        safeSetState(() {});
      }
    });

    _model.textController ??= TextEditingController(
        text: widget.pesquisa != null && widget.pesquisa != ''
            ? widget.pesquisa
            : '');
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        if (_model.textController.text != '') {
          _model.loading = true;
          safeSetState(() {});
          _model.apiResultGetContentOnChangeFocus =
              await WfBerearGroup.getContentByKWCall.call(
            kw: _model.textController.text.toLowerCase(),
            language: currentUserData?.linguagemPreferida,
            token: currentAuthenticationToken,
          );

          if ((_model.apiResultGetContentOnChangeFocus?.succeeded ?? true)) {
            _model.contents = getJsonField(
              (_model.apiResultGetContentOnChangeFocus?.jsonBody ?? ''),
              r'''$.contents''',
              true,
            )!
                .toList()
                .cast<dynamic>();
            safeSetState(() {});
            if (_model.contents.isNotEmpty) {
              _model.searchEmpty = false;
              safeSetState(() {});
            } else {
              _model.searchEmpty = true;
              safeSetState(() {});
            }
          } else {
            _model.searchEmpty = true;
            safeSetState(() {});
          }

          _model.loading = false;
          safeSetState(() {});
        }

        safeSetState(() {});
      },
    );
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController',
                              const Duration(milliseconds: 500),
                              () async {
                                _model.loading = true;
                                safeSetState(() {});
                                if (_model.textController.text != '') {
                                  _model.apiResultGetContentOnChange =
                                      await WfBerearGroup.getContentByKWCall
                                          .call(
                                    kw: _model.textController.text
                                        .toLowerCase(),
                                    language:
                                        currentUserData?.linguagemPreferida,
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultGetContentOnChange
                                          ?.succeeded ??
                                      true)) {
                                    _model.contents = getJsonField(
                                      (_model.apiResultGetContentOnChange
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.contents''',
                                      true,
                                    )!
                                        .toList()
                                        .cast<dynamic>();
                                    safeSetState(() {});
                                    if (_model.contents.isNotEmpty) {
                                      _model.searchEmpty = false;
                                      safeSetState(() {});
                                    } else {
                                      _model.searchEmpty = true;
                                      safeSetState(() {});
                                    }
                                  } else {
                                    _model.searchEmpty = true;
                                    safeSetState(() {});
                                  }
                                }
                                _model.loading = false;
                                safeSetState(() {});

                                safeSetState(() {});
                              },
                            ),
                            onFieldSubmitted: (_) async {
                              if (FFAppState().historicoPesquisa.length == 6) {
                                FFAppState().removeFromHistoricoPesquisa(
                                    FFAppState().historicoPesquisa.first);
                                safeSetState(() {});
                                FFAppState().addToHistoricoPesquisa(
                                    _model.textController.text);
                                safeSetState(() {});
                              } else {
                                FFAppState().addToHistoricoPesquisa(
                                    _model.textController.text);
                                safeSetState(() {});
                              }
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: false,
                              hintText: FFLocalizations.of(context).getText(
                                '2w30j29s' /* Search */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF9D979E),
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFA669A9),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFFA669A9),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              prefixIcon: const Icon(
                                Icons.search_sharp,
                                color: Color(0xFFA669A9),
                                size: 24.0,
                              ),
                              suffixIcon: _model.textController!.text.isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model.textController?.clear();
                                        _model.loading = true;
                                        safeSetState(() {});
                                        if (_model.textController.text != '') {
                                          _model.apiResultGetContentOnChange =
                                              await WfBerearGroup
                                                  .getContentByKWCall
                                                  .call(
                                            kw: _model.textController.text
                                                .toLowerCase(),
                                            language: currentUserData
                                                ?.linguagemPreferida,
                                            token: currentAuthenticationToken,
                                          );

                                          if ((_model
                                                  .apiResultGetContentOnChange
                                                  ?.succeeded ??
                                              true)) {
                                            _model.contents = getJsonField(
                                              (_model.apiResultGetContentOnChange
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.contents''',
                                              true,
                                            )!
                                                .toList()
                                                .cast<dynamic>();
                                            safeSetState(() {});
                                            if (_model.contents.isNotEmpty) {
                                              _model.searchEmpty = false;
                                              safeSetState(() {});
                                            } else {
                                              _model.searchEmpty = true;
                                              safeSetState(() {});
                                            }
                                          } else {
                                            _model.searchEmpty = true;
                                            safeSetState(() {});
                                          }
                                        }
                                        _model.loading = false;
                                        safeSetState(() {});

                                        safeSetState(() {});
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 22,
                                      ),
                                    )
                                  : null,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'lhmcp4tn' /* Cancel */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                if (_model.textController.text == '')
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 0.0, 24.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            FFAppState().clearQueryGetAuthorsCache();
                            safeSetState(() {
                              FFAppState().clearQueryGetAuthorsCache();
                              _model.apiRequestCompleted = false;
                            });
                            await _model.waitForApiRequestCompleted();
                          },
                          child: SingleChildScrollView(
                            primary: false,
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FutureBuilder<ApiCallResponse>(
                                  future: FFAppState()
                                      .queryGetAuthors(
                                    requestFn: () => WfBerearAuthorsGroup
                                        .getAuthorsWFCall
                                        .call(
                                      token: currentAuthenticationToken,
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
                                    final containerAuthorsGetAuthorsWFResponse =
                                        snapshot.data!;

                                    return Container(
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jgvp759t' /* Specialists */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xFF383438),
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
                                                      'Heads_each_area',
                                                      queryParameters: {
                                                        'authors':
                                                            serializeParam(
                                                          WfBerearAuthorsGroup
                                                              .getAuthorsWFCall
                                                              .authors(
                                                            containerAuthorsGetAuthorsWFResponse
                                                                .jsonBody,
                                                          ),
                                                          ParamType.JSON,
                                                          isList: true,
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
                                                              milliseconds:
                                                                  300),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kb72yehe' /* See more */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: const BoxDecoration(),
                                            child: Builder(
                                              builder: (context) {
                                                final author =
                                                    (WfBerearAuthorsGroup
                                                                .getAuthorsWFCall
                                                                .authors(
                                                                  containerAuthorsGetAuthorsWFResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.toList() ??
                                                            [])
                                                        .take(10)
                                                        .toList();

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
                                                        author.length,
                                                        (authorIndex) {
                                                      final authorItem =
                                                          author[authorIndex];
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
                                                            'About_author',
                                                            queryParameters: {
                                                              'author':
                                                                  serializeParam(
                                                                authorItem,
                                                                ParamType.JSON,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (!((String
                                                                  var1) {
                                                                return var1
                                                                    .contains(
                                                                        'empty:');
                                                              }(getJsonField(
                                                                authorItem,
                                                                r'''$.photo''',
                                                              ).toString())))
                                                                Container(
                                                                  width: 90.0,
                                                                  height: 90.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    getJsonField(
                                                                      authorItem,
                                                                      r'''$.photo''',
                                                                    ).toString(),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              if ((String
                                                                  var1) {
                                                                return var1
                                                                    .contains(
                                                                        'empty:');
                                                              }(getJsonField(
                                                                authorItem,
                                                                r'''$.photo''',
                                                              ).toString()))
                                                                Container(
                                                                  width: 90.0,
                                                                  height: 90.0,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Color(
                                                                        0xFF808080),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      (String
                                                                          var1) {
                                                                        return var1
                                                                            .split(':')[1];
                                                                      }(getJsonField(
                                                                        authorItem,
                                                                        r'''$.photo''',
                                                                      ).toString()),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                36.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    getJsonField(
                                                                      authorItem,
                                                                      r'''$.name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFF6A646B),
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                  if ((String
                                                                      var1) {
                                                                    return var1 !=
                                                                        '';
                                                                  }(getJsonField(
                                                                    authorItem,
                                                                    r'''$.degree''',
                                                                  ).toString()))
                                                                    Text(
                                                                      getJsonField(
                                                                        authorItem,
                                                                        r'''$.degree''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        4.0)),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 12.0)),
                                                          ),
                                                        ),
                                                      );
                                                    }).divide(
                                                        const SizedBox(width: 16.0)),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 24.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'g4wz4bja' /* Suggested */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFF383438),
                                                fontSize: 19.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        FutureBuilder<ApiCallResponse>(
                                          future: WfGroup.specialtiesCall.call(
                                            areaUidJson: getJsonField(
                                              <String?, List<dynamic>?>{
                                                'area': functions
                                                    .dataTypeToListOfIds(
                                                        FFAppState()
                                                            .occupationsOrInterests
                                                            .toList()),
                                              },
                                              r'''$.area''',
                                            ),
                                          ),
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final wrapSpecialtiesResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final area =
                                                    (WfGroup.specialtiesCall
                                                                .specialties(
                                                                  wrapSpecialtiesResponse
                                                                      .jsonBody,
                                                                )
                                                                ?.toList() ??
                                                            [])
                                                        .take(6)
                                                        .toList();

                                                return Wrap(
                                                  spacing: 16.0,
                                                  runSpacing: 16.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: List.generate(
                                                      area.length, (areaIndex) {
                                                    final areaItem =
                                                        area[areaIndex];
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
                                                        _model.loading = true;
                                                        safeSetState(() {});
                                                        safeSetState(() {
                                                          _model.textController
                                                                  ?.text =
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                            enText:
                                                                getJsonField(
                                                              areaItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                            ptText:
                                                                getJsonField(
                                                              areaItem,
                                                              r'''$.name_portuguese''',
                                                            ).toString(),
                                                          );
                                                          _model.textController
                                                                  ?.selection =
                                                              TextSelection.collapsed(
                                                                  offset: _model
                                                                      .textController!
                                                                      .text
                                                                      .length);
                                                        });
                                                        _model.apiResultGetContentClickArea =
                                                            await WfBerearGroup
                                                                .getContentByKWCall
                                                                .call(
                                                          kw: _model
                                                              .textController
                                                              .text
                                                              .toLowerCase(),
                                                          language: currentUserData
                                                              ?.linguagemPreferida,
                                                          token:
                                                              currentAuthenticationToken,
                                                        );

                                                        if ((_model
                                                                .apiResultGetContentClickArea
                                                                ?.succeeded ??
                                                            true)) {
                                                          _model.contents =
                                                              getJsonField(
                                                            (_model.apiResultGetContentClickArea
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.contents''',
                                                            true,
                                                          )!
                                                                  .toList()
                                                                  .cast<
                                                                      dynamic>();
                                                          safeSetState(() {});
                                                          if (_model.contents
                                                              .isNotEmpty) {
                                                            _model.searchEmpty =
                                                                false;
                                                            safeSetState(() {});
                                                          } else {
                                                            _model.searchEmpty =
                                                                true;
                                                            safeSetState(() {});
                                                          }
                                                        } else {
                                                          _model.searchEmpty =
                                                              true;
                                                          safeSetState(() {});
                                                        }

                                                        _model.loading = false;
                                                        safeSetState(() {});

                                                        safeSetState(() {});
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.4,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .search_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getVariableText(
                                                                  enText:
                                                                      getJsonField(
                                                                    areaItem,
                                                                    r'''$.name''',
                                                                  ).toString(),
                                                                  ptText:
                                                                      getJsonField(
                                                                    areaItem,
                                                                    r'''$.name_portuguese''',
                                                                  ).toString(),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 8.0)),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 24.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (!_model.searchEmpty &&
                    (_model.textController.text != '') &&
                    !_model.loading)
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Builder(
                        builder: (context) {
                          final content = _model.contents.toList();

                          return SingleChildScrollView(
                            primary: false,
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
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 12.0, 24.0, 12.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: const BoxDecoration(
                                                    color: Color(0xFFEEE7ED),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(8.0),
                                                    child: Icon(
                                                      Icons
                                                          .play_circle_outline_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                                          'ln67h87c' /* Premium */,
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
                                                      Text(
                                                        getJsonField(
                                                          contentItem,
                                                          r'''$.title''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: const Color(
                                                                  0xFF383438),
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
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
                                                              width: 12.0,
                                                              height: 12.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              getJsonField(
                                                                contentItem,
                                                                r'''$.journal''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: const Color(
                                                                        0xFF847B85),
                                                                    fontSize:
                                                                        10.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
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
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF847B85),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'qpxqgaif' /* • */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            functions
                                                                .secondsToTimeV2(
                                                                    getJsonField(
                                                              contentItem,
                                                              r'''$.timeAudioSeconds''',
                                                            )),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF847B85),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          if (getJsonField(
                                                                contentItem,
                                                                r'''$.rating''',
                                                              ) !=
                                                              null)
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'qkpy2sfo' /* • */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
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
                                                                const Icon(
                                                                  Icons
                                                                      .star_rate_rounded,
                                                                  color: Color(
                                                                      0xFFFFB45E),
                                                                  size: 12.0,
                                                                ),
                                                                Text(
                                                                  getJsonField(
                                                                    contentItem,
                                                                    r'''$.rating''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: const Color(
                                                                            0xFF847B85),
                                                                        fontSize:
                                                                            10.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 2.0)),
                                                            ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 8.0)),
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
                if (_model.searchEmpty &&
                    (_model.textController.text != '') &&
                    !_model.loading)
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 98.0, 24.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '1ubz7kxf' /* No results found. */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                if (_model.loading)
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: Lottie.asset(
                        'assets/jsons/Animation_-_1727359170630.json',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                        frameRate: FrameRate(60.0),
                        animate: true,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
