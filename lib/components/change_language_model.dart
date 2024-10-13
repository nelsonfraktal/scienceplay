import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'change_language_widget.dart' show ChangeLanguageWidget;
import 'package:flutter/material.dart';

class ChangeLanguageModel extends FlutterFlowModel<ChangeLanguageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (updateUserLanguage)] action in Button widget.
  ApiCallResponse? apiResultUpdateUserLanguage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
