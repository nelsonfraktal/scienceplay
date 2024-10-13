import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_content_buy_widget.dart' show InsideContentBuyWidget;
import 'package:flutter/material.dart';

class InsideContentBuyModel extends FlutterFlowModel<InsideContentBuyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in IconButtonFavorited widget.
  ApiCallResponse? apiResultRemoveFavoriteContent;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in IconButtonUnfavorited widget.
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
