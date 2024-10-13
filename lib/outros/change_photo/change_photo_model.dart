import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_photo_widget.dart' show ChangePhotoWidget;
import 'package:flutter/material.dart';

class ChangePhotoModel extends FlutterFlowModel<ChangePhotoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (updateProfileImage)] action in Container widget.
  ApiCallResponse? apiResultgwoCopy;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (updateProfileImage)] action in Container widget.
  ApiCallResponse? apiResultgwo;
  // Stores action output result for [Backend Call - API (updatePhoto)] action in Container widget.
  ApiCallResponse? apiResultUpdatePhoto;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
  }
}
