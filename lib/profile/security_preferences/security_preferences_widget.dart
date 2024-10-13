import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/profile/components/change_password/change_password_widget.dart';
import '/profile/components/delete_account/delete_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'security_preferences_model.dart';
export 'security_preferences_model.dart';

class SecurityPreferencesWidget extends StatefulWidget {
  const SecurityPreferencesWidget({super.key});

  @override
  State<SecurityPreferencesWidget> createState() =>
      _SecurityPreferencesWidgetState();
}

class _SecurityPreferencesWidgetState extends State<SecurityPreferencesWidget> {
  late SecurityPreferencesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityPreferencesModel());
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '0evmcnhm' /* Security preferences */,
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
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const ChangePasswordWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
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
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 24.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'a6ww8mh2' /* Change password */,
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
                            const Icon(
                              Icons.chevron_right_sharp,
                              color: Color(0xFFB7B2B8),
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: GestureDetector(
                              onTap: () => FocusScope.of(context).unfocus(),
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const DeleteAccountWidget(),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
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
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 24.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '1eg4b22y' /* Delete account */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF80302F),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: const Icon(
                                Icons.chevron_right_sharp,
                                color: Color(0xFFB7B2B8),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ].addToStart(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
