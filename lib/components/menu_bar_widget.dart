import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu_bar_model.dart';
export 'menu_bar_model.dart';

class MenuBarWidget extends StatefulWidget {
  const MenuBarWidget({
    super.key,
    required this.telaSelecionada,
  });

  final int? telaSelecionada;

  @override
  State<MenuBarWidget> createState() => _MenuBarWidgetState();
}

class _MenuBarWidgetState extends State<MenuBarWidget> {
  late MenuBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (widget.telaSelecionada != 1) {
                      context.pushNamed(
                        'For_you',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.telaSelecionada != 1)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Home.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'ibiwqwjn' /* For me */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF9D979E),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      if (widget.telaSelecionada == 1)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Home_(1).png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'd9521zgb' /* For me */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF7A3080),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (widget.telaSelecionada != 2) {
                      context.pushNamed(
                        'Tracks',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.telaSelecionada != 2)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/Search.svg',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'cqboc2lk' /* Explore */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF9D979E),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      if (widget.telaSelecionada == 2)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Search.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'cgshm0ka' /* Explore */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF7A3080),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (widget.telaSelecionada != 1) {
                      context.pushNamed(
                        'For_you',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.telaSelecionada != 3)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/Play.svg',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'xqr6c3m5' /* Tracks */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF9D979E),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      if (widget.telaSelecionada == 3)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Play.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'cp9ckokg' /* Tracks */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF7A3080),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (widget.telaSelecionada != 1) {
                      context.pushNamed(
                        'For_you',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.telaSelecionada != 4)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Book_(1).png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'oi3km36y' /* Library */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF9D979E),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      if (widget.telaSelecionada == 4)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Book.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'youwcc27' /* Library */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF7A3080),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
