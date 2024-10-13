import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_file_express_widget.dart' show CreateFileExpressWidget;
import 'package:flutter/material.dart';

class CreateFileExpressModel extends FlutterFlowModel<CreateFileExpressWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // State field(s) for TextFieldSearch widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
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
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();
  }
}
