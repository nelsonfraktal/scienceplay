import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'component_report_content_model.dart';
export 'component_report_content_model.dart';

class ComponentReportContentWidget extends StatefulWidget {
  const ComponentReportContentWidget({
    super.key,
    required this.idContent,
  });

  final String? idContent;

  @override
  State<ComponentReportContentWidget> createState() =>
      _ComponentReportContentWidgetState();
}

class _ComponentReportContentWidgetState
    extends State<ComponentReportContentWidget> {
  late ComponentReportContentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentReportContentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.componentVoltarBaixoModel,
                    updateCallback: () => safeSetState(() {}),
                    child: ComponentVoltarBaixoWidget(
                      customAction: () async {},
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'xu5ftu6a' /* Report a problem */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'jtam83d7' /* What's your concern with this ... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFF847B85),
                          letterSpacing: 0.0,
                        ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x1A000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.opcaoSelecionada = 1;
                              safeSetState(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'fu5s7s1s' /* The transcription is incorrect */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF383438),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                if (_model.opcaoSelecionada == 1)
                                  FlutterFlowIconButton(
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: const Icon(
                                      Icons.check_rounded,
                                      color: Color(0xFF32802F),
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '0uemrfbz' /* The transcription isn't in syn... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF383438),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              if (_model.opcaoSelecionada == 2)
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  icon: const Icon(
                                    Icons.check_rounded,
                                    color: Color(0xFF32802F),
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.opcaoSelecionada = 3;
                              safeSetState(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ebxk8fm9' /* It's the wrong transcript */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF383438),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                if (_model.opcaoSelecionada == 3)
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: const Icon(
                                      Icons.check_rounded,
                                      color: Color(0xFF32802F),
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.opcaoSelecionada = 4;
                              safeSetState(() {});
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '2rnsdcyp' /* My concern isn't here */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF383438),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                if (_model.opcaoSelecionada == 4)
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: const Icon(
                                      Icons.check_rounded,
                                      color: Color(0xFF32802F),
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_model.opcaoSelecionada == 4)
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 25.0,
                            color: Color(0x1A000000),
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                            spreadRadius: 0.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: _model.opcaoSelecionada == 4
                              ? FlutterFlowTheme.of(context).primary
                              : const Color(0x00000000),
                          width: _model.opcaoSelecionada == 4 ? 1.0 : 0.0,
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            const Duration(milliseconds: 500),
                            () => safeSetState(() {}),
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              '73ppduke' /* Please describe what's happeni... */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF9D979E),
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          maxLines: null,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  FFButtonWidget(
                    onPressed: () {
                      if ((_model.opcaoSelecionada == 4) &&
                          (_model.textController.text == '')) {
                        return true;
                      } else if (_model.opcaoSelecionada == 0) {
                        return true;
                      } else {
                        return false;
                      }
                    }()
                        ? null
                        : () async {
                            _model.apiResultReportTranscription =
                                await WfBerearGroup.reportTranscriptionCall
                                    .call(
                              idContent: widget.idContent,
                              motivo: _model.opcaoSelecionada == 4
                                  ? _model.textController.text
                                  : FFLocalizations.of(context).getVariableText(
                                      enText: 'The transcription is incorrect',
                                      ptText: 'A transcrição está incorreta',
                                    ),
                              token: currentAuthenticationToken,
                            );

                            if (!(_model
                                    .apiResultReportTranscription?.succeeded ??
                                true)) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText:
                                          'Oops, something is wrong. Try again!',
                                      ptText:
                                          'Ops, algo deu errado. Tente novamente!',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
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
                    text: FFLocalizations.of(context).getText(
                      'vk4qhmqy' /* Submit */,
                    ),
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 55.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                      disabledColor: const Color(0xFFB7B2B8),
                      disabledTextColor: const Color(0xFFEAE9EB),
                    ),
                  ),
                ].divide(const SizedBox(height: 24.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
