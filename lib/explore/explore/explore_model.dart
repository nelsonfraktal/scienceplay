import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'explore_widget.dart' show ExploreWidget;
import 'package:flutter/material.dart';

class ExploreModel extends FlutterFlowModel<ExploreWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;
  bool apiRequestCompleted5 = false;
  String? apiRequestLastUniqueKey5;
  bool apiRequestCompleted7 = false;
  String? apiRequestLastUniqueKey7;
  bool apiRequestCompleted3 = false;
  String? apiRequestLastUniqueKey3;
  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;
  bool apiRequestCompleted4 = false;
  String? apiRequestLastUniqueKey4;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  bool apiRequestCompleted6 = false;
  String? apiRequestLastUniqueKey6;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultAddFavoriteContent;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultRemoveFavoriteFreeContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultAddFavoriteFreeContent;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultRemoveFavoritePremiumContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultAddFavoritePremiumContent;
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
  Future waitForApiRequestCompleted5({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted5;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted7({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted7;
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

  Future waitForApiRequestCompleted6({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted6;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
