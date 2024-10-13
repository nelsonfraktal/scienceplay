import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_areas_interests_widget.dart' show SelectAreasInterestsWidget;
import 'package:flutter/material.dart';

class SelectAreasInterestsModel
    extends FlutterFlowModel<SelectAreasInterestsWidget> {
  ///  Local state fields for this component.

  List<AreaInterestStruct> tempAreas = [];
  void addToTempAreas(AreaInterestStruct item) => tempAreas.add(item);
  void removeFromTempAreas(AreaInterestStruct item) => tempAreas.remove(item);
  void removeAtIndexFromTempAreas(int index) => tempAreas.removeAt(index);
  void insertAtIndexInTempAreas(int index, AreaInterestStruct item) =>
      tempAreas.insert(index, item);
  void updateTempAreasAtIndex(
          int index, Function(AreaInterestStruct) updateFn) =>
      tempAreas[index] = updateFn(tempAreas[index]);

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
