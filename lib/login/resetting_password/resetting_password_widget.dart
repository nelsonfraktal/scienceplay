import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'resetting_password_model.dart';
export 'resetting_password_model.dart';

class ResettingPasswordWidget extends StatefulWidget {
  const ResettingPasswordWidget({super.key});

  @override
  State<ResettingPasswordWidget> createState() =>
      _ResettingPasswordWidgetState();
}

class _ResettingPasswordWidgetState extends State<ResettingPasswordWidget> {
  late ResettingPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResettingPasswordModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: wrapWithModel(
                    model: _model.componentVoltarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const ComponentVoltarWidget(),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'fvvm8715' /* Reset your password */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'zt2l1qu4' /* Enter your email adress, and w... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF514C52),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 56.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 10.0,
                                    color: Color(0x1A000000),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: (_model.textFieldFocusNode?.hasFocus ??
                                          false)
                                      ? FlutterFlowTheme.of(context).primary
                                      : const Color(0x00000000),
                                  width: (_model.textFieldFocusNode?.hasFocus ??
                                          false)
                                      ? 0.5
                                      : 0.0,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF9D979E),
                                          letterSpacing: 0.0,
                                        ),
                                    alignLabelWithHint: false,
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'hjba0s8x' /* E-mail */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF9D979E),
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                    prefixIcon: const Icon(
                                      Icons.mail_outline,
                                      color: Color(0xFF847B85),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await AuthGroup.forgotPwCall.call(
                              email: _model.textController.text,
                            );

                            context.pushNamed(
                              'Resetting-password2',
                              queryParameters: {
                                'email': serializeParam(
                                  _model.textController.text,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 700),
                                ),
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'v3q0p67c' /* Submit */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 55.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 19.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(56.0),
                          ),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ].divide(const SizedBox(height: 48.0)),
                ),
              ].divide(const SizedBox(height: 34.0)),
            ),
          ),
        ),
      ),
    );
  }
}
