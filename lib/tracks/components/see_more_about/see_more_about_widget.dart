import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'see_more_about_model.dart';
export 'see_more_about_model.dart';

class SeeMoreAboutWidget extends StatefulWidget {
  const SeeMoreAboutWidget({
    super.key,
    this.about,
    required this.isContent,
  });

  final String? about;
  final bool? isContent;

  @override
  State<SeeMoreAboutWidget> createState() => _SeeMoreAboutWidgetState();
}

class _SeeMoreAboutWidgetState extends State<SeeMoreAboutWidget> {
  late SeeMoreAboutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeeMoreAboutModel());
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  if (widget.isContent ?? true)
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'xjkoy27v' /* About this content */,
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
                  if (!widget.isContent!)
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'xo21yvd7' /* About this track */,
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
              Text(
                valueOrDefault<String>(
                  widget.about,
                  '...',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: const Color(0xFF847B85),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
