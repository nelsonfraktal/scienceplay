import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'component_report_transcription_widget.dart'
    show ComponentReportTranscriptionWidget;
import 'package:flutter/material.dart';

class ComponentReportTranscriptionModel
    extends FlutterFlowModel<ComponentReportTranscriptionWidget> {
  ///  Local state fields for this component.

  int opcaoSelecionada = 0;

  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (reportTranscription)] action in Button widget.
  ApiCallResponse? apiResultReportTranscription;

  @override
  void initState(BuildContext context) {
    componentVoltarBaixoModel =
        createModel(context, () => ComponentVoltarBaixoModel());
  }

  @override
  void dispose() {
    componentVoltarBaixoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
