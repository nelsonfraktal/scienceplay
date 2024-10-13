import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding_finish_widget.dart' show OnboardingFinishWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OnboardingFinishModel extends FlutterFlowModel<OnboardingFinishWidget> {
  ///  Local state fields for this page.

  List<String> listaTextos = [
    'Responding to your ~biological~ technology individuality...',
    'Customizing your learning journey...',
    'Updating the lastest technologies...'
  ];
  void addToListaTextos(String item) => listaTextos.add(item);
  void removeFromListaTextos(String item) => listaTextos.remove(item);
  void removeAtIndexFromListaTextos(int index) => listaTextos.removeAt(index);
  void insertAtIndexInListaTextos(int index, String item) =>
      listaTextos.insert(index, item);
  void updateListaTextosAtIndex(int index, Function(String) updateFn) =>
      listaTextos[index] = updateFn(listaTextos[index]);

  int index = 0;

  List<String> listaTextosPortugues = [
    'Encontrando suas necessidades ~biológicas~ tecnológicas',
    'Personalizando sua jornada de aprendizado',
    'Atualizando as últimas tecnologias'
  ];
  void addToListaTextosPortugues(String item) => listaTextosPortugues.add(item);
  void removeFromListaTextosPortugues(String item) =>
      listaTextosPortugues.remove(item);
  void removeAtIndexFromListaTextosPortugues(int index) =>
      listaTextosPortugues.removeAt(index);
  void insertAtIndexInListaTextosPortugues(int index, String item) =>
      listaTextosPortugues.insert(index, item);
  void updateListaTextosPortuguesAtIndex(
          int index, Function(String) updateFn) =>
      listaTextosPortugues[index] = updateFn(listaTextosPortugues[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 2000;
  int timerMilliseconds = 2000;
  String timerValue = StopWatchTimer.getDisplayTime(
    2000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
