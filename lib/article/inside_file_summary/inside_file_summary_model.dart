import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_file_summary_widget.dart' show InsideFileSummaryWidget;
import 'package:flutter/material.dart';

class InsideFileSummaryModel extends FlutterFlowModel<InsideFileSummaryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;

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
