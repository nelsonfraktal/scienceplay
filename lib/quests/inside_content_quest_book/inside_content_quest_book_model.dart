import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'inside_content_quest_book_widget.dart'
    show InsideContentQuestBookWidget;
import 'package:flutter/material.dart';

class InsideContentQuestBookModel
    extends FlutterFlowModel<InsideContentQuestBookWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Stores action output result for [Backend Call - API (updateStatusDailyQuestBook)] action in ContainerPending widget.
  ApiCallResponse? apiResultUpdateDailyToChecked;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (updateStatusDailyQuestBook)] action in ContainerCheck widget.
  ApiCallResponse? apiResultUpdateDailyToPending;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
