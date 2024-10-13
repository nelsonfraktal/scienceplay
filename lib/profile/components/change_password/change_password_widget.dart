import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'change_password_model.dart';
export 'change_password_model.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key});

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  late ChangePasswordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
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
                    'jveu0mld' /* Change password */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode1,
                  autofocus: true,
                  obscureText: !_model.passwordVisibility1,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'ypcjzip8' /* Old password */,
                    ),
                    labelStyle: GoogleFonts.getFont(
                      'Poppins',
                      color: const Color(0xFF9D979E),
                      fontSize: 14.0,
                    ),
                    alignLabelWithHint: true,
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Color(0xFF9D979E),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => safeSetState(
                        () => _model.passwordVisibility1 =
                            !_model.passwordVisibility1,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordVisibility1
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: const Color(0xFF9D979E),
                        size: 24.0,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                      ),
                  cursorColor: const Color(0xFF7A3080),
                  validator:
                      _model.textController1Validator.asValidator(context),
                ),
              ),
              TextFormField(
                controller: _model.textController2,
                focusNode: _model.textFieldFocusNode2,
                autofocus: true,
                obscureText: !_model.passwordVisibility2,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    '2ueuwfjv' /* New password */,
                  ),
                  labelStyle: GoogleFonts.getFont(
                    'Poppins',
                    color: const Color(0xFF9D979E),
                    fontSize: 14.0,
                  ),
                  alignLabelWithHint: true,
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color(0xFF9D979E),
                  ),
                  suffixIcon: InkWell(
                    onTap: () => safeSetState(
                      () => _model.passwordVisibility2 =
                          !_model.passwordVisibility2,
                    ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility2
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: const Color(0xFF9D979E),
                      size: 24.0,
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                cursorColor: const Color(0xFF7A3080),
                validator: _model.textController2Validator.asValidator(context),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: TextFormField(
                  controller: _model.textController3,
                  focusNode: _model.textFieldFocusNode3,
                  autofocus: true,
                  obscureText: !_model.passwordVisibility3,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'b9gmq1f0' /* Confirm a new password */,
                    ),
                    labelStyle: GoogleFonts.getFont(
                      'Poppins',
                      color: const Color(0xFF9D979E),
                      fontSize: 14.0,
                    ),
                    alignLabelWithHint: true,
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Color(0xFF9D979E),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => safeSetState(
                        () => _model.passwordVisibility3 =
                            !_model.passwordVisibility3,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordVisibility3
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: const Color(0xFF9D979E),
                        size: 24.0,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                      ),
                  cursorColor: const Color(0xFF7A3080),
                  validator:
                      _model.textController3Validator.asValidator(context),
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
                          Function() navigate = () {};
                          _model.apiResultpmc =
                              await AuthGroup.changePasswordCall.call(
                            oldPassword: _model.textController1.text,
                            newPassword: _model.textController2.text,
                            confirmNewPassword: _model.textController3.text,
                            email: currentUserData?.email,
                          );

                          if ((_model.apiResultpmc?.succeeded ?? true)) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return WebViewAware(
                                  child: AlertDialog(
                                    title: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'Sucess!',
                                      ptText: 'Pronto!',
                                    )),
                                    content: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText:
                                          'Your password has been changed successfully, press OK to continue! You will be redirected to the login screen.',
                                      ptText:
                                          'Sua senha foi alterada, pressione OK para continuar! Você será redirecionado(a) para o login.',
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
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            navigate = () =>
                                context.goNamedAuth('Welcome', context.mounted);
                            Navigator.pop(context);
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
                                    content: Text(getJsonField(
                                              (_model.apiResultpmc?.jsonBody ??
                                                  ''),
                                              r'''$.message''',
                                            ).toString() ==
                                            'We didn’t find an account with those login credentials'
                                        ? FFLocalizations.of(context)
                                            .getVariableText(
                                            enText:
                                                'Your old password is wrong.',
                                            ptText:
                                                'Sua senha antiga está incorreta.',
                                          )
                                        : getJsonField(
                                            (_model.apiResultpmc?.jsonBody ??
                                                ''),
                                            r'''$.message''',
                                          ).toString()),
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
                          'x7sb8e93' /* Continue */,
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
                          'xo2vzmco' /* Cancel */,
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
