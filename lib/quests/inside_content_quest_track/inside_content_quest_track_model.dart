import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inside_content_quest_track_widget.dart'
    show InsideContentQuestTrackWidget;
import 'package:flutter/material.dart';

class InsideContentQuestTrackModel
    extends FlutterFlowModel<InsideContentQuestTrackWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }
}
