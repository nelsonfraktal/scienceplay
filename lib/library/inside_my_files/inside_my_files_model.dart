import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_my_files_widget.dart' show InsideMyFilesWidget;
import 'package:flutter/material.dart';

class InsideMyFilesModel extends FlutterFlowModel<InsideMyFilesWidget> {
  ///  Local state fields for this page.

  List<String> specialties = [];
  void addToSpecialties(String item) => specialties.add(item);
  void removeFromSpecialties(String item) => specialties.remove(item);
  void removeAtIndexFromSpecialties(int index) => specialties.removeAt(index);
  void insertAtIndexInSpecialties(int index, String item) =>
      specialties.insert(index, item);
  void updateSpecialtiesAtIndex(int index, Function(String) updateFn) =>
      specialties[index] = updateFn(specialties[index]);

  List<String> specialtySelected = [];
  void addToSpecialtySelected(String item) => specialtySelected.add(item);
  void removeFromSpecialtySelected(String item) =>
      specialtySelected.remove(item);
  void removeAtIndexFromSpecialtySelected(int index) =>
      specialtySelected.removeAt(index);
  void insertAtIndexInSpecialtySelected(int index, String item) =>
      specialtySelected.insert(index, item);
  void updateSpecialtySelectedAtIndex(int index, Function(String) updateFn) =>
      specialtySelected[index] = updateFn(specialtySelected[index]);

  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;
  // Stores action output result for [Bottom Sheet - DeleteFile] action in Container widget.
  bool? fileRemoved;
  // State field(s) for TextField-search widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultAddFavoriteContent;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
    componentMoedasDoUsuarioModel =
        createModel(context, () => ComponentMoedasDoUsuarioModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
    componentMoedasDoUsuarioModel.dispose();
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();
  }
}
