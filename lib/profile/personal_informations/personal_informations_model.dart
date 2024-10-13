import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personal_informations_widget.dart' show PersonalInformationsWidget;
import 'package:flutter/material.dart';

class PersonalInformationsModel
    extends FlutterFlowModel<PersonalInformationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Stores action output result for [Backend Call - API (updateUser)] action in Container widget.
  ApiCallResponse? resultUpdateUser;
  // Stores action output result for [Backend Call - API (getUserNickname)] action in Container widget.
  ApiCallResponse? apiCheckNickname;
  // Stores action output result for [Backend Call - API (updateUser)] action in Container widget.
  ApiCallResponse? resultUpdateUser2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
