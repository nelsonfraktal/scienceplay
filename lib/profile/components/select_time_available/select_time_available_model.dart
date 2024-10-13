import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_time_available_widget.dart' show SelectTimeAvailableWidget;
import 'package:flutter/material.dart';

class SelectTimeAvailableModel
    extends FlutterFlowModel<SelectTimeAvailableWidget> {
  ///  Local state fields for this component.

  TimeAvailableStruct? tempTime;
  void updateTempTimeStruct(Function(TimeAvailableStruct) updateFn) {
    updateFn(tempTime ??= TimeAvailableStruct());
  }

  ///  State fields for stateful widgets in this component.

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
