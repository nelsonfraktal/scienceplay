import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'delete_account_model.dart';
export 'delete_account_model.dart';

class DeleteAccountWidget extends StatefulWidget {
  const DeleteAccountWidget({super.key});

  @override
  State<DeleteAccountWidget> createState() => _DeleteAccountWidgetState();
}

class _DeleteAccountWidgetState extends State<DeleteAccountWidget> {
  late DeleteAccountModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteAccountModel());
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
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '4tynnc07' /* Are you sure you want to delet... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF383438),
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'nwcyvt8n' /* Your progress, data and inform... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF6A646B),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
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
                        Function() navigate = () {};
                        _model.apiResult3sx =
                            await AuthGroup.deleteAccountCall.call(
                          uid: currentUserUid,
                        );

                        if ((_model.apiResult3sx?.succeeded ?? true)) {
                          Navigator.pop(context);
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          navigate = () =>
                              context.goNamedAuth('Welcome', context.mounted);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return WebViewAware(
                                child: AlertDialog(
                                  title: Text(FFLocalizations.of(context)
                                      .getVariableText(
                                    enText: 'Oops, something happened!',
                                    ptText: 'Ops, algo de errado aconteceu!',
                                  )),
                                  content: Text(FFLocalizations.of(context)
                                      .getVariableText(
                                    enText: 'Please try again later.',
                                    ptText:
                                        'Por favor, tente novamente mais tarde.',
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
                        }

                        navigate();

                        safeSetState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'fh0tclzj' /* Yes, delete account */,
                      ),
                      icon: FaIcon(
                        FontAwesomeIcons.trashAlt,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 14.0,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 37.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
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
                        '3udeb01p' /* No, thanks */,
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
            ],
          ),
        ),
      ),
    );
  }
}
