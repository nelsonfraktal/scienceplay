import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'premium_student_widget.dart' show PremiumStudentWidget;
import 'package:flutter/material.dart';

class PremiumStudentModel extends FlutterFlowModel<PremiumStudentWidget> {
  ///  Local state fields for this page.

  bool mensalSelecionado = false;

  bool clicouEmAssinar = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAccessUser)] action in Icon widget.
  ApiCallResponse? apiResultGetAccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
