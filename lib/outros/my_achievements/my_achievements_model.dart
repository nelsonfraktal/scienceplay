import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'my_achievements_widget.dart' show MyAchievementsWidget;
import 'package:flutter/material.dart';

class MyAchievementsModel extends FlutterFlowModel<MyAchievementsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;

  /// Query cache managers for this widget.

  final _queryStreakAllManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryStreakAll({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryStreakAllManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryStreakAllCache() => _queryStreakAllManager.clear();
  void clearQueryStreakAllCacheKey(String? uniqueKey) =>
      _queryStreakAllManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
    componentMoedasDoUsuarioModel =
        createModel(context, () => ComponentMoedasDoUsuarioModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
    componentMoedasDoUsuarioModel.dispose();

    /// Dispose query cache managers for this widget.

    clearQueryStreakAllCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
