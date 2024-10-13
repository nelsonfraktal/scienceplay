import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_content_widget.dart' show InsideContentWidget;
import 'package:flutter/material.dart';

class InsideContentModel extends FlutterFlowModel<InsideContentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in IconButtonFavorited widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in IconButtonUnfavorited widget.
  ApiCallResponse? apiResultAddFavoriteContent;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }
}
