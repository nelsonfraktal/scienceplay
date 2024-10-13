import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'delete_file_model.dart';
export 'delete_file_model.dart';

class DeleteFileWidget extends StatefulWidget {
  const DeleteFileWidget({
    super.key,
    required this.name,
    required this.id,
  });

  final String? name;
  final String? id;

  @override
  State<DeleteFileWidget> createState() => _DeleteFileWidgetState();
}

class _DeleteFileWidgetState extends State<DeleteFileWidget> {
  late DeleteFileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteFileModel());
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
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'zg81o413' /* Are you sure? */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Text(
                '${FFLocalizations.of(context).getVariableText(
                  enText: 'Are you sure that you want to remove file \"',
                  ptText: 'Tem certeza que deseja remover a pasta \"',
                )}${widget.name}${FFLocalizations.of(context).getVariableText(
                  enText: '\". This action can not be undone.',
                  ptText: '\". Essa ação não pode ser desfeita.',
                )}',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: const Color(0xFF6A646B),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
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
                          _model.apiResultDeleteFile =
                              await WfBerearGroup.deleteFileCall.call(
                            idFile: widget.id,
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultDeleteFile?.succeeded ?? true)) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'File removed from library.',
                                    ptText: 'Pasta removida da biblioteca.',
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
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                            Navigator.pop(context, true);
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
                          'bbs42vvx' /* Delete */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).error,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                          'gouheia6' /* Cancel */,
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
                                    color: const Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Color(0xFF14181B),
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
