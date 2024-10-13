import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'heads_each_area_widget.dart' show HeadsEachAreaWidget;
import 'package:flutter/material.dart';

class HeadsEachAreaModel extends FlutterFlowModel<HeadsEachAreaWidget> {
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
