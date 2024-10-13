import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'buy_credits_model.dart';
export 'buy_credits_model.dart';

class BuyCreditsWidget extends StatefulWidget {
  const BuyCreditsWidget({
    super.key,
    int? credits,
    int? valuexp,
    required this.valuemoney,
  })  : credits = credits ?? 120,
        valuexp = valuexp ?? 1200;

  final int credits;
  final int valuexp;
  final int? valuemoney;

  @override
  State<BuyCreditsWidget> createState() => _BuyCreditsWidgetState();
}

class _BuyCreditsWidgetState extends State<BuyCreditsWidget> {
  late BuyCreditsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuyCreditsModel());
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
              Text(
                FFLocalizations.of(context).getVariableText(
                  enText: 'Choose the payment method bellow',
                  ptText: 'Escolha o método de pagamento abaixo',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 19.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                child: FutureBuilder<ApiCallResponse>(
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
                              '${FFLocalizations.of(context).getVariableText(
                                enText: 'Buying: ',
                                ptText: 'Comprando: ',
                              )}${widget.credits.toString()}${FFLocalizations.of(context).getVariableText(
                                enText: ' credits',
                                ptText: ' créditos',
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
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        var shouldSetState = false;
                        _model.apiResultykm =
                            await WfBerearGroup.buyCreditsXPCall.call(
                          credits: widget.credits,
                          xp: widget.valuexp,
                          token: currentAuthenticationToken,
                        );

                        shouldSetState = true;
                        if ((_model.apiResultykm?.succeeded ?? true)) {
                          FFAppState().clearQueryMoedasDoUsuarioCache();
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: Text(FFLocalizations.of(context)
                                      .getVariableText(
                                    enText: 'Success!',
                                    ptText: 'Sucesso!',
                                  )),
                                  content: Text(FFLocalizations.of(context)
                                      .getVariableText(
                                    enText:
                                        'You have successfully acquired credits!',
                                    ptText:
                                        'Você adquiriu com créditos com sucesso!',
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
                          Navigator.pop(context);
                          if (shouldSetState) safeSetState(() {});
                          return;
                        } else {
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
                                    enText:
                                        'If you have enough credits and this message persists, contact support.',
                                    ptText:
                                        'Caso você tenha créditos suficientes e essa mensagem persista, entre em contato com o suporte.',
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
                      text: '${FFLocalizations.of(context).getVariableText(
                        enText: 'Buy for ',
                        ptText: 'Comprar por ',
                      )}${valueOrDefault<String>(
                        widget.valuexp.toString(),
                        '0',
                      )} XP',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 37.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text(
                                    FFLocalizations.of(context).getVariableText(
                                  enText: 'Oops, something happened!',
                                  ptText: 'Ops, algo aconteceu!',
                                )),
                                content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                  enText:
                                      'This function is not yet available, please purchase with XP',
                                  ptText:
                                      'Esta função ainda não está disponivel, por favor compre com XP',
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
                      },
                      text: '${FFLocalizations.of(context).getVariableText(
                        enText: 'Buy for ',
                        ptText: 'Comprar por ',
                      )}${FFLocalizations.of(context).getVariableText(
                        enText: '\$',
                        ptText: 'R\$',
                      )}${valueOrDefault<String>(
                        widget.valuemoney?.toString(),
                        '0',
                      )}',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 37.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                        'azadi797' /* Cancel */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 37.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
