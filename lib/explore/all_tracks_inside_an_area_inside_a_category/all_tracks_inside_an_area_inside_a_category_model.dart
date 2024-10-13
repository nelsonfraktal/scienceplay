import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_tracks_inside_an_area_inside_a_category_widget.dart'
    show AllTracksInsideAnAreaInsideACategoryWidget;
import 'package:flutter/material.dart';

class AllTracksInsideAnAreaInsideACategoryModel
    extends FlutterFlowModel<AllTracksInsideAnAreaInsideACategoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // Model for Component_moedas_do_usuario component.
  late ComponentMoedasDoUsuarioModel componentMoedasDoUsuarioModel;

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
