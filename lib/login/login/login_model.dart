import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  int count = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? apiResultLogin;
  // Stores action output result for [Backend Call - API (getContentPreferences)] action in Button widget.
  ApiCallResponse? apiResultGetPreferences;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
    passwordVisibility = false;
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
