import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'onboarding_finish_model.dart';
export 'onboarding_finish_model.dart';

class OnboardingFinishWidget extends StatefulWidget {
  const OnboardingFinishWidget({super.key});

  @override
  State<OnboardingFinishWidget> createState() => _OnboardingFinishWidgetState();
}

class _OnboardingFinishWidgetState extends State<OnboardingFinishWidget> {
  late OnboardingFinishModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingFinishModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
      await Future.delayed(const Duration(milliseconds: 6000));

      context.goNamed('For_you');
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Lottie.network(
                      'https://lottie.host/f7f4735a-9153-468f-9b1a-b29bb96ae1bf/jXnyXKHUU0.json',
                      width: 150.0,
                      height: 130.0,
                      fit: BoxFit.cover,
                      animate: true,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getVariableText(
                        enText: _model.listaTextos[_model.index],
                        ptText: _model.listaTextosPortugues[_model.index],
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
                  FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      minute: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController,
                    updateStateInterval: const Duration(milliseconds: 1000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds = value;
                      _model.timerValue = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    onEnded: () async {
                      if (_model.index < (_model.listaTextos.length - 1)) {
                        _model.index = _model.index + 1;
                        safeSetState(() {});
                        _model.timerController.onResetTimer();

                        _model.timerController.onStartTimer();
                      } else {
                        _model.index = 0;
                        safeSetState(() {});
                        _model.timerController.onResetTimer();

                        _model.timerController.onStartTimer();
                      }
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 1.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
