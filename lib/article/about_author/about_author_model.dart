import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_author_widget.dart' show AboutAuthorWidget;
import 'package:flutter/material.dart';

class AboutAuthorModel extends FlutterFlowModel<AboutAuthorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in Container widget.
  ApiCallResponse? apiResultAddFavoriteContent;

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
