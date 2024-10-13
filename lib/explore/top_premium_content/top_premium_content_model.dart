import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_premium_content_widget.dart' show TopPremiumContentWidget;
import 'package:flutter/material.dart';

class TopPremiumContentModel extends FlutterFlowModel<TopPremiumContentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in ContainerUnfavorited widget.
  ApiCallResponse? apiResultAddFavoriteContent;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in ContainerFavorited widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
    componentMoedasDoUsuarioModel =
        createModel(context, () => ComponentMoedasDoUsuarioModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
    componentMoedasDoUsuarioModel.dispose();
  }
}
