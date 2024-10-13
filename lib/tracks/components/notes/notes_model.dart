import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'notes_widget.dart' show NotesWidget;
import 'package:flutter/material.dart';

class NotesModel extends FlutterFlowModel<NotesWidget> {
  ///  Local state fields for this component.

  bool addingNote = false;

  ///  State fields for stateful widgets in this component.

  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // Stores action output result for [Backend Call - API (deleteNoteContent)] action in IconButtonDeleteNote widget.
  ApiCallResponse? apiResultDeleteNote;
  // State field(s) for TextFieldNote widget.
  FocusNode? textFieldNoteFocusNode;
  TextEditingController? textFieldNoteTextController;
  String? Function(BuildContext, String?)? textFieldNoteTextControllerValidator;
  // Stores action output result for [Backend Call - API (addNoteContent)] action in ButtonSave widget.
  ApiCallResponse? apiResultAddNote;

  @override
  void initState(BuildContext context) {
    componentVoltarBaixoModel =
        createModel(context, () => ComponentVoltarBaixoModel());
  }

  @override
  void dispose() {
    componentVoltarBaixoModel.dispose();
    textFieldNoteFocusNode?.dispose();
    textFieldNoteTextController?.dispose();
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
