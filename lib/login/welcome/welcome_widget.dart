import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'welcome_model.dart';
export 'welcome_model.dart';

class WelcomeWidget extends StatefulWidget {
  const WelcomeWidget({super.key});

  @override
  State<WelcomeWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  late WelcomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeModel());
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
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'w9wpjrk9' /* Welcome to Science Play App */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Raleway',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 42.0,
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '9czm1psn' /* The Audiobook and Audiopaper A... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'Signup',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 700),
                                      ),
                                    },
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  '5jyj714c' /* Sign up */,
                                ),
                                options: FFButtonOptions(
                                  height: 55.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
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
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'Login',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 700),
                                      ),
                                    },
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  '18qflayv' /* Login */,
                                ),
                                options: FFButtonOptions(
                                  height: 55.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0x007A3080),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 19.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(56.0),
                                ),
                              ),
                            ].divide(const SizedBox(height: 12.0)),
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
