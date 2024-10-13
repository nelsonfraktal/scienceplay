import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'search_explore_widget.dart' show SearchExploreWidget;
import 'package:flutter/material.dart';

class SearchExploreModel extends FlutterFlowModel<SearchExploreWidget> {
  ///  Local state fields for this page.

  List<dynamic> contents = [];
  void addToContents(dynamic item) => contents.add(item);
  void removeFromContents(dynamic item) => contents.remove(item);
  void removeAtIndexFromContents(int index) => contents.removeAt(index);
  void insertAtIndexInContents(int index, dynamic item) =>
      contents.insert(index, item);
  void updateContentsAtIndex(int index, Function(dynamic) updateFn) =>
      contents[index] = updateFn(contents[index]);

  bool searchEmpty = false;

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getContentByKW)] action in SearchExplore widget.
  ApiCallResponse? apiResulteit;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (getContentByKW)] action in TextField widget.
  ApiCallResponse? apiResultGetContentOnChange;
  // Stores action output result for [Backend Call - API (getContentByKW)] action in TextField widget.
  ApiCallResponse? apiResultGetContentOnChangeFocus;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Stores action output result for [Backend Call - API (getContentByKW)] action in Container widget.
  ApiCallResponse? apiResultGetContentClickArea;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
