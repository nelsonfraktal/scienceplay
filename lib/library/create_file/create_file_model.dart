import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_file_widget.dart' show CreateFileWidget;
import 'package:flutter/material.dart';

class CreateFileModel extends FlutterFlowModel<CreateFileWidget> {
  ///  Local state fields for this component.

  List<String> selectedContents = [];
  void addToSelectedContents(String item) => selectedContents.add(item);
  void removeFromSelectedContents(String item) => selectedContents.remove(item);
  void removeAtIndexFromSelectedContents(int index) =>
      selectedContents.removeAt(index);
  void insertAtIndexInSelectedContents(int index, String item) =>
      selectedContents.insert(index, item);
  void updateSelectedContentsAtIndex(int index, Function(String) updateFn) =>
      selectedContents[index] = updateFn(selectedContents[index]);

  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode1;
  TextEditingController? textFieldSearchTextController1;
  String? Function(BuildContext, String?)?
      textFieldSearchTextController1Validator;
  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode2;
  TextEditingController? textFieldSearchTextController2;
  String? Function(BuildContext, String?)?
      textFieldSearchTextController2Validator;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in ContainerFavorite widget.
  ApiCallResponse? apiResultRemoveFavoriteContentFromLoved;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in ContainerFavorite widget.
  ApiCallResponse? apiResultAddFavoriteContentFromLoved;
  // Stores action output result for [Backend Call - API (createFile)] action in Button widget.
  ApiCallResponse? apiResultCreateFile;

  @override
  void initState(BuildContext context) {
    componentVoltarBaixoModel =
        createModel(context, () => ComponentVoltarBaixoModel());
  }

  @override
  void dispose() {
    componentVoltarBaixoModel.dispose();
    textFieldSearchFocusNode1?.dispose();
    textFieldSearchTextController1?.dispose();

    textFieldSearchFocusNode2?.dispose();
    textFieldSearchTextController2?.dispose();
  }
}
