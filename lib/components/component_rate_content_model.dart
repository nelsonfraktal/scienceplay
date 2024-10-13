import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'component_rate_content_widget.dart' show ComponentRateContentWidget;
import 'package:flutter/material.dart';

class ComponentRateContentModel
    extends FlutterFlowModel<ComponentRateContentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Backend Call - API (addRatingToContent)] action in Button widget.
  ApiCallResponse? apiResultAddRateToContent;

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
