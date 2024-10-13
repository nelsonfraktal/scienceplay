import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exit_quest_model.dart';
export 'exit_quest_model.dart';

class ExitQuestWidget extends StatefulWidget {
  const ExitQuestWidget({
    super.key,
    required this.idContentQuestBook,
  });

  final String? idContentQuestBook;

  @override
  State<ExitQuestWidget> createState() => _ExitQuestWidgetState();
}

class _ExitQuestWidgetState extends State<ExitQuestWidget> {
  late ExitQuestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExitQuestModel());
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
                    '2dne8lc1' /* Are you sure you want to exit ... */,
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
                  'hznsvyca' /* Your progress will be permanen... */,
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
                          _model.apiResultExitQuest =
                              await WfBerearBookGroup.exitQuestCall.call(
                            idContentQuestBook: widget.idContentQuestBook,
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultExitQuest?.succeeded ?? true)) {
                            FFAppState().clearQueryDailyQuestCache();
                            FFAppState().clearQueryGetContentQuestBookCache();
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'See you in your next quest.',
                                    ptText:
                                        'Vemos você em seu próximo desafio.',
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).success,
                              ),
                            );

                            context.goNamed('For_you');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText:
                                        'Ops, something is wrong, try again.',
                                    ptText:
                                        'Opa, algo de errado aconteceu, tente novamente.',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
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

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          '4xzevgpb' /* Yes, exit Quest */,
                        ),
                        icon: const Icon(
                          FFIcons.kexitedit,
                          size: 16.0,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF80302F),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Color(0x007A3080),
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
                          'iydqq3st' /* No, thanks */,
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
                                    color: FlutterFlowTheme.of(context).primary,
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
