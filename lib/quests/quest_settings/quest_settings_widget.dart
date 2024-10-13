import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'quest_settings_model.dart';
export 'quest_settings_model.dart';

class QuestSettingsWidget extends StatefulWidget {
  const QuestSettingsWidget({
    super.key,
    required this.qtdCap,
    required this.daysSelected,
    required this.status,
  });

  final int? qtdCap;
  final int? daysSelected;
  final String? status;

  @override
  State<QuestSettingsWidget> createState() => _QuestSettingsWidgetState();
}

class _QuestSettingsWidgetState extends State<QuestSettingsWidget> {
  late QuestSettingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestSettingsModel());
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
          color: FlutterFlowTheme.of(context).primaryBackground,
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
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'n9vdwgdu' /* Quest settings */,
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
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'k2fe5rj0' /* Days challenge: */,
                      ),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: const Color(0xFF6A646B),
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (widget.daysSelected ==
                                  (((widget.qtdCap!) / 2).ceil())) {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'não acontece nada',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).warning,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'faz a alteração',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: widget.daysSelected ==
                                        (((widget.qtdCap!) / 2).ceil())
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 25.0,
                                    color: Color(0x0E000000),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 8.0, 20.0, 8.0),
                                child: Text(
                                  '${((widget.qtdCap!) / 2).ceil().toString()}${FFLocalizations.of(context).getVariableText(
                                    enText: ' days',
                                    ptText: ' dias',
                                  )}',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.daysSelected ==
                                                (((widget.qtdCap!) / 2).ceil())
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : const Color(0xFF6A646B),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (widget.daysSelected == widget.qtdCap) {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'não acontece nada',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).warning,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'confirma alteração',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: widget.daysSelected == widget.qtdCap
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 25.0,
                                    color: Color(0x0E000000),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 8.0, 20.0, 8.0),
                                child: Text(
                                  '${widget.qtdCap?.toString()}${FFLocalizations.of(context).getVariableText(
                                    enText: ' days',
                                    ptText: ' dias',
                                  )}',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.daysSelected ==
                                                widget.qtdCap
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : const Color(0xFF6A646B),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (widget.daysSelected ==
                                  ((widget.qtdCap!) * 2)) {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'não acontece nada',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).warning,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'faz a troca',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                );
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: widget.daysSelected ==
                                        ((widget.qtdCap!) * 2)
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 25.0,
                                    color: Color(0x0E000000),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 8.0, 20.0, 8.0),
                                child: Text(
                                  '${((widget.qtdCap!) * 2).toString()}${FFLocalizations.of(context).getVariableText(
                                    enText: ' days',
                                    ptText: ' dias',
                                  )}',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.daysSelected ==
                                                ((widget.qtdCap!) * 2)
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : const Color(0xFF6A646B),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '61kt59xv' /* Status: */,
                        ),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xFF6A646B),
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: widget.status ==
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          enText: 'In progress',
                                          ptText: 'Em progresso',
                                        )
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 25.0,
                                    color: Color(0x0E000000),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 8.0, 20.0, 8.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'f9nsvqjm' /* Active */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.status ==
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  enText: 'In progress',
                                                  ptText: 'Em progresso',
                                                )
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : const Color(0xFF6A646B),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: widget.status ==
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          enText: 'Paused',
                                          ptText: 'Pausado',
                                        )
                                    ? FlutterFlowTheme.of(context)
                                        .purpleAlternate
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 25.0,
                                    color: Color(0x0E000000),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 8.0, 20.0, 8.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '6rbnv10r' /* Paused */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: widget.status ==
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  enText: 'Paused',
                                                  ptText: 'Pausado',
                                                )
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : const Color(0xFF6A646B),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ].divide(const SizedBox(height: 12.0)),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
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
                        text: FFLocalizations.of(context).getText(
                          'iil4urq9' /* Reset all progress */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x0080302F),
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
                      FFButtonWidget(
                        onPressed: () async {
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
                        text: FFLocalizations.of(context).getText(
                          '1fzpz7xl' /* Exit Quest */,
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
                          color: const Color(0x0080302F),
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
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'wssqo833' /* Back */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
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
