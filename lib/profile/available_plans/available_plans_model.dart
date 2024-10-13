import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'available_plans_widget.dart' show AvailablePlansWidget;
import 'package:flutter/material.dart';

class AvailablePlansModel extends FlutterFlowModel<AvailablePlansWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAccessUser)] action in Column widget.
  ApiCallResponse? apiResultGetAccess;
  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Stores action output result for [Backend Call - API (solicitarCancelamentoAssinatura)] action in ContainerFree widget.
  ApiCallResponse? apiResultCancelamento;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }
}
