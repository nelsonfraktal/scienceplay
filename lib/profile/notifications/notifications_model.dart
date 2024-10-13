import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultEmail;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultEmail2;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultNewcontent;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultNewcontent2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultSuggestion;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultSuggestion2;
  // State field(s) for Switch widget.
  bool? switchValue4;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultPublicities;
  // Stores action output result for [Backend Call - API (updateUser)] action in Switch widget.
  ApiCallResponse? apiResultPublicities2;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }
}
