import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resetting_password3_widget.dart' show ResettingPassword3Widget;
import 'package:flutter/material.dart';

class ResettingPassword3Model
    extends FlutterFlowModel<ResettingPassword3Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
