import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'more_settings_audio_widget.dart' show MoreSettingsAudioWidget;
import 'package:flutter/material.dart';

class MoreSettingsAudioModel extends FlutterFlowModel<MoreSettingsAudioWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getTinyUrl)] action in ContainerCopyLink widget.
  ApiCallResponse? apiResultGetUrl;
  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in ContainerCopyLink widget.
  ApiCallResponse? apiResultGetUrlTrack;
  // Stores action output result for [Backend Call - API (getTinyUrl)] action in ContainerX widget.
  ApiCallResponse? apiResultGetUrlX;
  // Stores action output result for [Backend Call - API (getTinyUrl)] action in ContainerIG widget.
  ApiCallResponse? apiResultGetUrlIG;
  // Stores action output result for [Backend Call - API (getTinyUrl)] action in ContainerMore widget.
  ApiCallResponse? apiResultGetUrlShare;
  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in ContainerMore widget.
  ApiCallResponse? apiResultGetUrlTrackMore;
  // Stores action output result for [Backend Call - API (removeFavoriteContent)] action in ContainerFavorite widget.
  ApiCallResponse? apiResultRemoveContentFromFavorite;
  // Stores action output result for [Backend Call - API (addFavoriteContent)] action in ContainerFavorite widget.
  ApiCallResponse? apiResultAddContentToFavorite;
  // Stores action output result for [Bottom Sheet - Add_to_library] action in ContainerFavorite widget.
  bool? addedOrRemoved;
  // Stores action output result for [Backend Call - API (getTinyUrl)] action in ContainerProfileAuthor widget.
  ApiCallResponse? apiResultGetUrlShareCopy;
  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in ContainerProfileAuthor widget.
  ApiCallResponse? apiResultGetUrlTrackMoreCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
