import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'day_goals_model.dart';
export 'day_goals_model.dart';

class DayGoalsWidget extends StatefulWidget {
  const DayGoalsWidget({
    super.key,
    required this.qtdCapitulos,
    required this.book,
  });

  final int? qtdCapitulos;
  final dynamic book;

  @override
  State<DayGoalsWidget> createState() => _DayGoalsWidgetState();
}

class _DayGoalsWidgetState extends State<DayGoalsWidget> {
  late DayGoalsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayGoalsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 364.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24.0),
            bottomRight: Radius.circular(24.0),
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'x8ztht8k' /* In how many days do you want t... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  '33m7x0iw' /* You can change it later if you... */,
                ),
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: const Color(0xFF6A646B),
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          _model.apiResultCreateContentQuestBookHalf =
                              await WfBerearBookGroup.createContentQuestBookCall
                                  .call(
                            idBook: getJsonField(
                              widget.book,
                              r'''$.id''',
                            ).toString(),
                            days:
                                ((widget.qtdCapitulos!) / 2).ceil().toDouble(),
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultCreateContentQuestBookHalf
                                  ?.succeeded ??
                              true)) {
                            FFAppState().clearQueryDailyQuestCache();
                            FFAppState().clearQueryGetContentQuestBookCache();
                            await Future.delayed(
                                const Duration(milliseconds: 5000));

                            context.goNamed(
                              'Inside_content_quest_book',
                              queryParameters: {
                                'book': serializeParam(
                                  widget.book,
                                  ParamType.JSON,
                                ),
                                'idContentQuestBook': serializeParam(
                                  WfBerearBookGroup.createContentQuestBookCall
                                      .id(
                                    (_model.apiResultCreateContentQuestBookHalf
                                            ?.jsonBody ??
                                        ''),
                                  ),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'deu problema',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          }

                          Navigator.pop(context);

                          safeSetState(() {});
                        },
                        text: '${formatNumber(
                          (widget.qtdCapitulos!) / 2,
                          formatType: FormatType.custom,
                          format: '0',
                          locale: '',
                        )}${FFLocalizations.of(context).getVariableText(
                          enText: ' days',
                          ptText: ' dias',
                        )}',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(56.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          _model.apiResultCreateContentQuestBookNormal =
                              await WfBerearBookGroup.createContentQuestBookCall
                                  .call(
                            idBook: getJsonField(
                              widget.book,
                              r'''$.id''',
                            ).toString(),
                            days: widget.qtdCapitulos?.toDouble(),
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultCreateContentQuestBookNormal
                                  ?.succeeded ??
                              true)) {
                            FFAppState().clearQueryDailyQuestCache();
                            FFAppState().clearQueryGetContentQuestBookCache();
                            await Future.delayed(
                                const Duration(milliseconds: 5000));

                            context.goNamed(
                              'Inside_content_quest_book',
                              queryParameters: {
                                'book': serializeParam(
                                  widget.book,
                                  ParamType.JSON,
                                ),
                                'idContentQuestBook': serializeParam(
                                  WfBerearBookGroup.createContentQuestBookCall
                                      .id(
                                    (_model.apiResultCreateContentQuestBookNormal
                                            ?.jsonBody ??
                                        ''),
                                  ),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'deu problema',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          }

                          Navigator.pop(context);

                          safeSetState(() {});
                        },
                        text:
                            '${widget.qtdCapitulos?.toString()}${FFLocalizations.of(context).getVariableText(
                          enText: ' days',
                          ptText: ' dias',
                        )}',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(56.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          _model.apiResultCreateContentQuestBook =
                              await WfBerearBookGroup.createContentQuestBookCall
                                  .call(
                            idBook: getJsonField(
                              widget.book,
                              r'''$.id''',
                            ).toString(),
                            days: (widget.qtdCapitulos!) * 2,
                            token: currentAuthenticationToken,
                          );

                          if ((_model
                                  .apiResultCreateContentQuestBook?.succeeded ??
                              true)) {
                            FFAppState().clearQueryDailyQuestCache();
                            FFAppState().clearQueryGetContentQuestBookCache();
                            await Future.delayed(
                                const Duration(milliseconds: 5000));

                            context.goNamed(
                              'Inside_content_quest_book',
                              queryParameters: {
                                'book': serializeParam(
                                  widget.book,
                                  ParamType.JSON,
                                ),
                                'idContentQuestBook': serializeParam(
                                  WfBerearBookGroup.createContentQuestBookCall
                                      .id(
                                    (_model.apiResultCreateContentQuestBook
                                            ?.jsonBody ??
                                        ''),
                                  ),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'deu problema',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          }

                          Navigator.pop(context);

                          safeSetState(() {});
                        },
                        text:
                            '${((widget.qtdCapitulos!) * 2).toString()}${FFLocalizations.of(context).getVariableText(
                          enText: ' days',
                          ptText: ' dias',
                        )}',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(56.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'lt27l1o2' /* Cancel */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x007A3080),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF7A3080),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(56.0),
                        ),
                      ),
                    ].divide(const SizedBox(height: 8.0)),
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
