import '/componentes_globais/component_report_transcription/component_report_transcription_widget.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'transcription_model.dart';
export 'transcription_model.dart';

class TranscriptionWidget extends StatefulWidget {
  const TranscriptionWidget({
    super.key,
    required this.transcription,
    required this.title,
    required this.journal,
    required this.idContent,
  });

  final String? transcription;
  final String? title;
  final String? journal;
  final String? idContent;

  @override
  State<TranscriptionWidget> createState() => _TranscriptionWidgetState();
}

class _TranscriptionWidgetState extends State<TranscriptionWidget> {
  late TranscriptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TranscriptionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * 0.85,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                wrapWithModel(
                  model: _model.componentVoltarBaixoModel,
                  updateCallback: () => safeSetState(() {}),
                  child: ComponentVoltarBaixoWidget(
                    customAction: () async {},
                  ),
                ),
                Expanded(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'q15mcg4z' /* Transcription */,
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFF2B282B),
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 0.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0xFFEEE7ED),
                  icon: const Icon(
                    Icons.format_size,
                    color: Color(0xFF383438),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    _model.showTextSize = !_model.showTextSize;
                    safeSetState(() {});
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 0.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0xFFEEE7ED),
                  icon: const FaIcon(
                    FontAwesomeIcons.flag,
                    color: Color(0xFF383438),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return WebViewAware(
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: ComponentReportTranscriptionWidget(
                              idContent: widget.idContent!,
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                    ),
                    decoration: const BoxDecoration(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.title,
                                'Título',
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF2B282B),
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.journal,
                                'Jornal',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.transcription,
                                'Transcription',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF847B85),
                                    fontSize:
                                        _model.countControllerValue?.toDouble(),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 8.0))
                            .addToStart(const SizedBox(height: 32.0)),
                      ),
                    ),
                  ),
                  if (_model.showTextSize)
                    Align(
                      alignment: const AlignmentDirectional(1.0, -1.0),
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          width: 135.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: const Color(0x00E0E3E7),
                              width: 2.0,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minusCircle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plusCircle,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            count: _model.countControllerValue ??= 14,
                            updateCount: (count) => safeSetState(
                                () => _model.countControllerValue = count),
                            stepSize: 1,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
