import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_and_data_model.dart';
export 'privacy_and_data_model.dart';

class PrivacyAndDataWidget extends StatefulWidget {
  const PrivacyAndDataWidget({super.key});

  @override
  State<PrivacyAndDataWidget> createState() => _PrivacyAndDataWidgetState();
}

class _PrivacyAndDataWidgetState extends State<PrivacyAndDataWidget> {
  late PrivacyAndDataModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyAndDataModel());
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFFAFAFA),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: wrapWithModel(
                                model: _model.componentVoltarModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const ComponentVoltarWidget(),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'chqlpa4g' /* Privacy and data */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF383438),
                                      fontSize: 19.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F2F3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.item == 1) {
                                  _model.item = 0;
                                  safeSetState(() {});
                                } else {
                                  _model.item = 1;
                                  safeSetState(() {});
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vbhf49tc' /* Privacy Policy */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  if (_model.item != 1)
                                    const Icon(
                                      Icons.chevron_right_sharp,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                  if (_model.item == 1)
                                    const Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                ],
                              ),
                            ),
                          ),
                          if (_model.item == 1)
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'xjx04e1t' /* Effective Date: July 10, 2024
... */
                                        ,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].addToEnd(const SizedBox(height: 15.0)),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F2F3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.item == 2) {
                                  _model.item = 0;
                                  safeSetState(() {});
                                } else {
                                  _model.item = 2;
                                  safeSetState(() {});
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'd3ios48e' /* Terms of Use */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  if (_model.item != 2)
                                    const Icon(
                                      Icons.chevron_right_sharp,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                  if (_model.item == 2)
                                    const Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                ],
                              ),
                            ),
                          ),
                          if (_model.item == 2)
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '4notzia8' /* Terms of Use of Science Play A... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].addToEnd(const SizedBox(height: 15.0)),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F2F3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.item == 3) {
                                  _model.item = 0;
                                  safeSetState(() {});
                                } else {
                                  _model.item = 3;
                                  safeSetState(() {});
                                }
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'xx4r9tbp' /* Cookie Policy */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  if (_model.item != 3)
                                    const Icon(
                                      Icons.chevron_right_sharp,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                  if (_model.item == 3)
                                    const Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                ],
                              ),
                            ),
                          ),
                          if (_model.item == 3)
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'sdtlrceb' /* 1. What are cookies?

Cookies ... */
                                        ,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF383438),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].addToEnd(const SizedBox(height: 15.0)),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ].addToStart(const SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
