import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'redirect_model.dart';
export 'redirect_model.dart';

class RedirectWidget extends StatefulWidget {
  const RedirectWidget({
    super.key,
    required this.id,
  });

  final String? id;

  @override
  State<RedirectWidget> createState() => _RedirectWidgetState();
}

class _RedirectWidgetState extends State<RedirectWidget> {
  late RedirectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RedirectModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultGetContent = await WfBerearGroup.getContentShareCall.call(
        contentId: widget.id,
        token: currentAuthenticationToken,
      );

      if ((_model.apiResultGetContent?.succeeded ?? true)) {
        FFAppState().conteudoSelecionado =
            WfBerearGroup.getContentShareCall.contents(
          (_model.apiResultGetContent?.jsonBody ?? ''),
        );
        safeSetState(() {});
        if (currentUserData!.isFree &&
            !getJsonField(
              WfBerearGroup.getContentShareCall.contents(
                (_model.apiResultGetContent?.jsonBody ?? ''),
              ),
              r'''$.isFree''',
            )) {
          context.goNamed(
            'Inside_content_buy',
            queryParameters: {
              'content': serializeParam(
                WfBerearGroup.getContentShareCall.contents(
                  (_model.apiResultGetContent?.jsonBody ?? ''),
                ),
                ParamType.JSON,
              ),
              'typeContent': serializeParam(
                TypeContent.Audio,
                ParamType.Enum,
              ),
            }.withoutNulls,
          );
        } else {
          context.goNamed(
            'Inside_content',
            queryParameters: {
              'content': serializeParam(
                WfBerearGroup.getContentShareCall.contents(
                  (_model.apiResultGetContent?.jsonBody ?? ''),
                ),
                ParamType.JSON,
              ),
              'typeContent': serializeParam(
                TypeContent.Audio,
                ParamType.Enum,
              ),
            }.withoutNulls,
          );
        }
      } else {
        _model.error = true;
        safeSetState(() {});
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              FFLocalizations.of(context).getVariableText(
                enText: 'Your content could not be loaded.',
                ptText: 'Não foi possível carregar seu conteúdo.',
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                  ),
            ),
            duration: const Duration(milliseconds: 3000),
            backgroundColor: FlutterFlowTheme.of(context).warning,
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: Image.asset(
                'assets/images/bg-science.jpg',
              ).image,
            ),
          ),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: Stack(
              alignment: const AlignmentDirectional(0.0, 1.0),
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0x00D9D9D9), Color(0xCB7A3080)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 68.0, 24.0, 88.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/Text_input_container.svg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 56.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (!_model.error)
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '9lu0oijb' /* Preparing your content... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Raleway',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 32.0,
                                    ),
                                  ),
                                if (_model.error)
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'Go to Home',
                                      ptText: 'Ir para o Início',
                                    ),
                                    options: FFButtonOptions(
                                      height: 44.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 1.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
