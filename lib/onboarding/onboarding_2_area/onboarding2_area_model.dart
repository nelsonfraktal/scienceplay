import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding2_area_widget.dart' show Onboarding2AreaWidget;
import 'package:flutter/material.dart';

class Onboarding2AreaModel extends FlutterFlowModel<Onboarding2AreaWidget> {
  ///  Local state fields for this page.

  bool showOther = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldOther widget.
  FocusNode? textFieldOtherFocusNode;
  TextEditingController? textFieldOtherTextController;
  String? Function(BuildContext, String?)?
      textFieldOtherTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateAreasInterests)] action in Button widget.
  ApiCallResponse? apiResultUpdateAreas;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldOtherFocusNode?.dispose();
    textFieldOtherTextController?.dispose();
  }
}
