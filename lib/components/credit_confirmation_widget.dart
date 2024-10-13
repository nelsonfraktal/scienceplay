import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'credit_confirmation_model.dart';
export 'credit_confirmation_model.dart';

class CreditConfirmationWidget extends StatefulWidget {
  const CreditConfirmationWidget({
    super.key,
    required this.track,
  });

  final dynamic track;

  @override
  State<CreditConfirmationWidget> createState() =>
      _CreditConfirmationWidgetState();
}

class _CreditConfirmationWidgetState extends State<CreditConfirmationWidget> {
  late CreditConfirmationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreditConfirmationModel());
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
        height: 290.0,
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  '${FFLocalizations.of(context).getVariableText(
                    enText:
                        'Do you want to listen to this audiobook by spending 1 credit?',
                    ptText: 'Deseja ouvir esta faixa por ',
                  )}${getJsonField(
                    widget.track,
                    r'''$.credits''',
                  ).toString()}${FFLocalizations.of(context).getVariableText(
                    enText: ' credit(s)?',
                    ptText: ' crédito(s)?',
                  )}',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              FutureBuilder<ApiCallResponse>(
                future: ObjGroup.getUserUIDCall.call(
                  constraints:
                      '[{\"key\": \"_id\", \"constraint_type\": \"equals\", \"value\": \"$currentUserUid\"}]',
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
                  final containerGetUserUIDResponse = snapshot.data!;

                  return Container(
                    constraints: const BoxConstraints(
                      minWidth: 82.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEE7ED),
                      borderRadius: BorderRadius.circular(56.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 10.0, 16.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Creditos_science_play.svg',
                              width: 16.0,
                              height: 16.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Total: ${valueOrDefault<String>(
                              ObjGroup.getUserUIDCall
                                  .credits(
                                    containerGetUserUIDResponse.jsonBody,
                                  )
                                  ?.toString(),
                              '0',
                            )}',
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
                  );
                },
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
                          var shouldSetState = false;
                          _model.apiResult0wh =
                              await WfBerearGroup.purchasedTrackCall.call(
                            track: getJsonField(
                              widget.track,
                              r'''$.id_track''',
                            ).toString(),
                            token: currentAuthenticationToken,
                          );

                          shouldSetState = true;
                          if ((_model.apiResult0wh?.succeeded ?? true)) {
                            FFAppState().clearQueryMoedasDoUsuarioCache();

                            context.goNamed(
                              'Track',
                              queryParameters: {
                                'track': serializeParam(
                                  widget.track,
                                  ParamType.JSON,
                                ),
                              }.withoutNulls,
                            );

                            if (shouldSetState) safeSetState(() {});
                            return;
                          } else {
                            Navigator.pop(context);
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'Oops, something happened!',
                                      ptText: 'Ops, algo aconteceu!',
                                    )),
                                    content: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'You don\'t have enough credits!',
                                      ptText:
                                          'Você não possui creditos suficientes!',
                                    )),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }

                          if (shouldSetState) safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'n0m3waxi' /* Confirm */,
                        ),
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
                          '3u438y6z' /* Cancel */,
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
