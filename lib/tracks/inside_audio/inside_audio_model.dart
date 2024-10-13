import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_audio_widget.dart' show InsideAudioWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class InsideAudioModel extends FlutterFlowModel<InsideAudioWidget> {
  ///  Local state fields for this page.

  double playbackSpeed = 1.0;

  int indexSelecionado = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (addStartedContent)] action in Inside_audio widget.
  ApiCallResponse? apiResultStartedContent;
  // Stores action output result for [Backend Call - API (registerStudySession)] action in ContainerVoltar widget.
  ApiCallResponse? apiResultRegisterStudySession;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in IconButtonFavorited widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in IconButtonUnfavorited widget.
  ApiCallResponse? apiResultAddFavoriteContent;
  // Stores action output result for [Backend Call - API (addStartedContent)] action in SimpleAudioPlayerV2 widget.
  ApiCallResponse? apiResultStartedContentInNextAutomatico;
  // Stores action output result for [Backend Call - API (addStartedContent)] action in SimpleAudioPlayerV2 widget.
  ApiCallResponse? apiResultStartedContentInNext;
  // Stores action output result for [Backend Call - API (addStartedContent)] action in SimpleAudioPlayerV2 widget.
  ApiCallResponse? apiResultStartedContentInPrev;
  // Stores action output result for [Backend Call - API (addContentCompleted)] action in SimpleAudioPlayerV2 widget.
  ApiCallResponse? apiResultContentCompleted;
  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in SimpleAudioPlayerV2 widget.
  ApiCallResponse? apiResultGetUrlTrackMoreCopy;
  // State field(s) for TimerStudySessions widget.
  final timerStudySessionsInitialTimeMs = 0;
  int timerStudySessionsMilliseconds = 0;
  String timerStudySessionsValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerStudySessionsController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerStudySessionsController.dispose();
  }
}
