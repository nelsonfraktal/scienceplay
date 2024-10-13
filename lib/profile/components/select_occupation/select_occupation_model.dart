import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_occupation_widget.dart' show SelectOccupationWidget;
import 'package:flutter/material.dart';

class SelectOccupationModel extends FlutterFlowModel<SelectOccupationWidget> {
  ///  Local state fields for this component.

  List<OccupationOrInterestStruct> tempIdsArea = [];
  void addToTempIdsArea(OccupationOrInterestStruct item) =>
      tempIdsArea.add(item);
  void removeFromTempIdsArea(OccupationOrInterestStruct item) =>
      tempIdsArea.remove(item);
  void removeAtIndexFromTempIdsArea(int index) => tempIdsArea.removeAt(index);
  void insertAtIndexInTempIdsArea(int index, OccupationOrInterestStruct item) =>
      tempIdsArea.insert(index, item);
  void updateTempIdsAreaAtIndex(
          int index, Function(OccupationOrInterestStruct) updateFn) =>
      tempIdsArea[index] = updateFn(tempIdsArea[index]);

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
