import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'inside_file_summary_model.dart';
export 'inside_file_summary_model.dart';

class InsideFileSummaryWidget extends StatefulWidget {
  const InsideFileSummaryWidget({super.key});

  @override
  State<InsideFileSummaryWidget> createState() =>
      _InsideFileSummaryWidgetState();
}

class _InsideFileSummaryWidgetState extends State<InsideFileSummaryWidget> {
  late InsideFileSummaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideFileSummaryModel());
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
        backgroundColor: const Color(0xFFFAFAFA),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: wrapWithModel(
                        model: _model.componentVoltarBaixoModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ComponentVoltarBaixoWidget(
                          customAction: () async {},
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 100.0,
                        borderWidth: 0.0,
                        buttonSize: 40.0,
                        fillColor: const Color(0xFFEEE7ED),
                        icon: Icon(
                          Icons.share_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButtonSearch pressed ...');
                        },
                      ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '9g0uhvoy' /* Content */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF514C52),
                              fontSize: 19.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 8.0, 10.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'udy99qi3' /* 1.  Introduction */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF514C52),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'c5n3z2oi' /* 1 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF9D979E),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 8.0, 10.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '0rpbwef4' /* 2.  Neural Mechanisms of Creat... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF514C52),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'hq8g9xmc' /* 2 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF9D979E),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 8.0, 10.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '5a128spb' /* 3.  Neurotransmitters and Crea... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF514C52),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'dzx0g8kt' /* 3 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF9D979E),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 8.0, 10.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'vqhs2cjv' /* 4.  Environmental Influences o... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF514C52),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'efz0wf6t' /* 4 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF9D979E),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 8.0, 10.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    't1kl9viw' /* 5.  Conclusion */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF514C52),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'wpofumhg' /* 5 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF9D979E),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 8.0, 10.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '18lgioq5' /* Highly relevant insights */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF514C52),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '70ffax3g' /* 6 */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF9D979E),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
