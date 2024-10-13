import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_audio_simple_widget.dart' show InsideAudioSimpleWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class InsideAudioSimpleModel extends FlutterFlowModel<InsideAudioSimpleWidget> {
  ///  Local state fields for this page.

  double playbackSpeed = 1.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (addStartedContent)] action in Inside_audio_simple widget.
  ApiCallResponse? apiResultAddStartedContent;
  // Stores action output result for [Backend Call - API (registerStudySession)] action in ContainerVoltar widget.
  ApiCallResponse? apiResultRegisterStudySession;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in IconButtonFavorite widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in IconButtonFavorite widget.
  ApiCallResponse? apiResultAddFavoriteContent;
  // Stores action output result for [Backend Call - API (addContentCompleted)] action in SimpleAudioPlayer widget.
  ApiCallResponse? apiResultContentCompleted;
  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in SimpleAudioPlayer widget.
  ApiCallResponse? apiResultGetUrlTrackMore;
  // Stores action output result for [Backend Call - API (getTinyUrl)] action in SimpleAudioPlayer widget.
  ApiCallResponse? apiResultGetUrlShare;
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
