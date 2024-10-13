import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_country_region_widget.dart' show SelectCountryRegionWidget;
import 'package:flutter/material.dart';

class SelectCountryRegionModel
    extends FlutterFlowModel<SelectCountryRegionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;

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
