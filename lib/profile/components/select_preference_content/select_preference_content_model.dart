import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_preference_content_widget.dart'
    show SelectPreferenceContentWidget;
import 'package:flutter/material.dart';

class SelectPreferenceContentModel
    extends FlutterFlowModel<SelectPreferenceContentWidget> {
  ///  Local state fields for this component.

  List<PreferencesStruct> tempPreferences = [];
  void addToTempPreferences(PreferencesStruct item) =>
      tempPreferences.add(item);
  void removeFromTempPreferences(PreferencesStruct item) =>
      tempPreferences.remove(item);
  void removeAtIndexFromTempPreferences(int index) =>
      tempPreferences.removeAt(index);
  void insertAtIndexInTempPreferences(int index, PreferencesStruct item) =>
      tempPreferences.insert(index, item);
  void updateTempPreferencesAtIndex(
          int index, Function(PreferencesStruct) updateFn) =>
      tempPreferences[index] = updateFn(tempPreferences[index]);

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
