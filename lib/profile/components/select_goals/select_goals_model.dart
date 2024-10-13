import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_goals_widget.dart' show SelectGoalsWidget;
import 'package:flutter/material.dart';

class SelectGoalsModel extends FlutterFlowModel<SelectGoalsWidget> {
  ///  Local state fields for this component.

  List<GoalsStruct> tempGoals = [];
  void addToTempGoals(GoalsStruct item) => tempGoals.add(item);
  void removeFromTempGoals(GoalsStruct item) => tempGoals.remove(item);
  void removeAtIndexFromTempGoals(int index) => tempGoals.removeAt(index);
  void insertAtIndexInTempGoals(int index, GoalsStruct item) =>
      tempGoals.insert(index, item);
  void updateTempGoalsAtIndex(int index, Function(GoalsStruct) updateFn) =>
      tempGoals[index] = updateFn(tempGoals[index]);

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
