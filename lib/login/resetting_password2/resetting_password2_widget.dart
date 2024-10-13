import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'resetting_password2_model.dart';
export 'resetting_password2_model.dart';

class ResettingPassword2Widget extends StatefulWidget {
  const ResettingPassword2Widget({
    super.key,
    required this.email,
  });

  final String? email;

  @override
  State<ResettingPassword2Widget> createState() =>
      _ResettingPassword2WidgetState();
}

class _ResettingPassword2WidgetState extends State<ResettingPassword2Widget> {
  late ResettingPassword2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResettingPassword2Model());
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
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        'Login',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 300),
                          ),
                        },
                      );
                    },
                    child: wrapWithModel(
                      model: _model.componentVoltarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const ComponentVoltarWidget(),
                    ),
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
                            'p1qwwzc8' /* Reset your password */,
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
                          '${FFLocalizations.of(context).getVariableText(
                            enText: 'We just emailed you at ',
                            ptText: 'Acabamos de enviar um e-mail para ',
                          )}${widget.email}${FFLocalizations.of(context).getVariableText(
                            enText:
                                '. Can’t see it? Try your spam folder or ask us to resend the link.',
                            ptText:
                                '. Não encontrou? Confira a pasta de spam ou peça-nos para reenviar o link.',
                          )}',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF514C52),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'Login',
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
                            '6ihnr66h' /* Back to login */,
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
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
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
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.apiResultg82 =
                                await AuthGroup.forgotPwCall.call(
                              email: widget.email,
                            );

                            if ((_model.apiResultg82?.succeeded ?? true)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Sucesso!',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Deu B.O!',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }

                            safeSetState(() {});
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'xt0vbpqt' /* Resend link */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF7A3080),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
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
