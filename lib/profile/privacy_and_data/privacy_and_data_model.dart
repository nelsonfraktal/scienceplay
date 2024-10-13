import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'privacy_and_data_widget.dart' show PrivacyAndDataWidget;
import 'package:flutter/material.dart';

class PrivacyAndDataModel extends FlutterFlowModel<PrivacyAndDataWidget> {
  ///  Local state fields for this page.

  int item = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }
}
