import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'for_you_widget.dart' show ForYouWidget;
import 'package:flutter/material.dart';

class ForYouModel extends FlutterFlowModel<ForYouWidget> {
  ///  Local state fields for this page.

  String hoursLeftToEndDay = 'hours left';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (validToken)] action in For_you widget.
  ApiCallResponse? apiResultsda;
  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;
  bool apiRequestCompleted4 = false;
  String? apiRequestLastUniqueKey4;
  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  bool apiRequestCompleted3 = false;
  String? apiRequestLastUniqueKey3;
  // Stores action output result for [Backend Call - API (getDailyQuest)] action in ContainerEmpty widget.
  ApiCallResponse? apiResultDailyQuest;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in Icon widget.
  ApiCallResponse? apiResultAddFavoriteContent;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in Icon widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in Icon widget.
  ApiCallResponse? apiResultAddFavoriteContentForYou;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in Icon widget.
  ApiCallResponse? apiResultRemoveFavoriteContentForYou;

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
  Future waitForApiRequestCompleted4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted4;
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
}
