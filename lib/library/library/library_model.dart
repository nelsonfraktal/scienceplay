import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'library_widget.dart' show LibraryWidget;
import 'package:flutter/material.dart';

class LibraryModel extends FlutterFlowModel<LibraryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;
  // Stores action output result for [Backend Call - API (getDailyQuest)] action in ContainerEmpty widget.
  ApiCallResponse? apiResultDailyQuest;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;

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
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
