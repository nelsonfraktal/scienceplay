import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resetting_password2_widget.dart' show ResettingPassword2Widget;
import 'package:flutter/material.dart';

class ResettingPassword2Model
    extends FlutterFlowModel<ResettingPassword2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Stores action output result for [Backend Call - API (forgotPw)] action in Text widget.
  ApiCallResponse? apiResultg82;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }
}
