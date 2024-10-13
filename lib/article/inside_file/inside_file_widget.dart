import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'inside_file_model.dart';
export 'inside_file_model.dart';

class InsideFileWidget extends StatefulWidget {
  const InsideFileWidget({
    super.key,
    required this.title,
    required this.summary,
  });

  final String? title;
  final String? summary;

  @override
  State<InsideFileWidget> createState() => _InsideFileWidgetState();
}

class _InsideFileWidgetState extends State<InsideFileWidget> {
  late InsideFileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideFileModel());
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
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 48.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFAFAFA),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
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
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 100.0,
                                  borderWidth: 0.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.format_list_bulleted_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      'Inside_file_summary',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.bottomToTop,
                                          duration: Duration(milliseconds: 500),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 100.0,
                                  borderWidth: 0.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0xFFEEE7ED),
                                  icon: FaIcon(
                                    FontAwesomeIcons.solidBookmark,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButtonFavorite pressed ...');
                                  },
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 100.0,
                                borderWidth: 0.0,
                                buttonSize: 40.0,
                                fillColor: const Color(0xFFEEE7ED),
                                icon: Icon(
                                  Icons.format_size_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButtonFavorite pressed ...');
                                },
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 100.0,
                                  borderWidth: 0.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0xFFEEE7ED),
                                  icon: FaIcon(
                                    FontAwesomeIcons.search,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButtonSearch pressed ...');
                                  },
                                ),
                              ),
                          ].divide(const SizedBox(width: 12.0)),
                        ),
                      ].divide(const SizedBox(width: 8.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 72.0, 0.0, 44.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.75,
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.title,
                                      'Title',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF2B282B),
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.summary,
                                      'Summary',
                                    ),
                                    textAlign: TextAlign.justify,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF2B282B),
                                          fontSize: 19.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 24.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'tq31yfc1' /* Finish content */,
                                    ),
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 54.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF3F7652),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
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
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 24.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                    child: Container(
                      height: 36.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFAFAFA),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: LinearPercentIndicator(
                          percent: 0.5,
                          lineHeight: 8.0,
                          animation: true,
                          animateFromLastPercent: true,
                          progressColor: const Color(0xFF6A646B),
                          backgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          barRadius: const Radius.circular(5.0),
                          padding: EdgeInsets.zero,
                        ),
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
