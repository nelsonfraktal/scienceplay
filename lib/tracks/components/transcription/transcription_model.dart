import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transcription_widget.dart' show TranscriptionWidget;
import 'package:flutter/material.dart';

class TranscriptionModel extends FlutterFlowModel<TranscriptionWidget> {
  ///  Local state fields for this component.

  bool showTextSize = false;

  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {
    componentVoltarBaixoModel =
        createModel(context, () => ComponentVoltarBaixoModel());
  }

  @override
  void dispose() {
    componentVoltarBaixoModel.dispose();
  }
}
