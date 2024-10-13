import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'create_file_express_model.dart';
export 'create_file_express_model.dart';

class CreateFileExpressWidget extends StatefulWidget {
  const CreateFileExpressWidget({
    super.key,
    required this.idContent,
  });

  final String? idContent;

  @override
  State<CreateFileExpressWidget> createState() =>
      _CreateFileExpressWidgetState();
}

class _CreateFileExpressWidgetState extends State<CreateFileExpressWidget> {
  late CreateFileExpressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateFileExpressModel());

    _model.textFieldSearchTextController ??= TextEditingController();
    _model.textFieldSearchFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.componentVoltarBaixoModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ComponentVoltarBaixoWidget(
                        customAction: () async {},
                      ),
                    ),
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'gv2lasc8' /* Create file */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF2B282B),
                              fontSize: 19.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 25.0,
                        color: Color(0x0E000000),
                        offset: Offset(
                          0.0,
                          0.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: TextFormField(
                      controller: _model.textFieldSearchTextController,
                      focusNode: _model.textFieldSearchFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textFieldSearchTextController',
                        const Duration(milliseconds: 1000),
                        () => safeSetState(() {}),
                      ),
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF9D979E),
                                  letterSpacing: 0.0,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          'cuwwqexp' /* File´s name */,
                        ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF6A646B),
                            letterSpacing: 0.0,
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator: _model.textFieldSearchTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: (_model.textFieldSearchTextController.text == '')
                      ? null
                      : () async {
                          _model.apiResultCreateFile =
                              await WfBerearGroup.createFileCall.call(
                            name: _model.textFieldSearchTextController.text,
                            token: currentAuthenticationToken,
                            listOfContentsList:
                                functions.stringToList(widget.idContent!),
                          );

                          if ((_model.apiResultCreateFile?.succeeded ?? true)) {
                            if (getJsonField(
                                  (_model.apiResultCreateFile?.jsonBody ?? ''),
                                  r'''$.response.erro''',
                                ) !=
                                null) {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: Text(FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Something is wrong.',
                                        ptText: 'Algo deu errado.',
                                      )),
                                      content: Text(FFLocalizations.of(context)
                                          .getVariableText(
                                        enText:
                                            'You already have a file with this name, try again with another name.',
                                        ptText:
                                            'Você já tem uma pasta com esse nome, tente novamente com outro nome.',
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
                            } else {
                              FFAppState().clearQueryMyFilesCache();
                              Navigator.pop(context, true);
                            }
                          }

                          safeSetState(() {});
                        },
                  text: FFLocalizations.of(context).getText(
                    '8t42stp2' /* Save */,
                  ),
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 55.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(56.0),
                    disabledColor: const Color(0xFFB7B2B8),
                    disabledTextColor: const Color(0xFFEAE9EB),
                  ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ),
        ],
      ),
    );
  }
}
