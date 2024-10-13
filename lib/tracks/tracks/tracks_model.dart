import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'tracks_widget.dart' show TracksWidget;
import 'package:flutter/material.dart';

class TracksModel extends FlutterFlowModel<TracksWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;
  bool apiRequestCompleted3 = false;
  String? apiRequestLastUniqueKey3;
  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  // Stores action output result for [Backend Call - API (getDailyQuest)] action in ContainerEmpty widget.
  ApiCallResponse? apiResultDailyQuest;
  // Stores action output result for [Backend Call - API (removeFavoriteTrack)] action in Icon widget.
  ApiCallResponse? apiResult6ahCopy3;
  // Stores action output result for [Backend Call - API (addFavoriteTrack)] action in Icon widget.
  ApiCallResponse? apiResult9xd;
  // Stores action output result for [Backend Call - API (removeFavoriteTrack)] action in Icon widget.
  ApiCallResponse? apiResult6ahCopy;
  // Stores action output result for [Backend Call - API (addFavoriteTrack)] action in Icon widget.
  ApiCallResponse? apiResult9xd33;
  // Stores action output result for [Backend Call - API (removeFavoriteTrack)] action in Icon widget.
  ApiCallResponse? apiResult6ahCopy3222;

  @override
  void initState(BuildContext context) {
    componentMoedasDoUsuarioModel =
        createModel(context, () => ComponentMoedasDoUsuarioModel());
  }

  @override
  void dispose() {
    componentMoedasDoUsuarioModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted3;
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
}
