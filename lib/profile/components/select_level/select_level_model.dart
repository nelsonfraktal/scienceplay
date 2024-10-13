import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_level_widget.dart' show SelectLevelWidget;
import 'package:flutter/material.dart';

class SelectLevelModel extends FlutterFlowModel<SelectLevelWidget> {
  ///  Local state fields for this component.

  LevelStruct? tempLevel;
  void updateTempLevelStruct(Function(LevelStruct) updateFn) {
    updateFn(tempLevel ??= LevelStruct());
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
