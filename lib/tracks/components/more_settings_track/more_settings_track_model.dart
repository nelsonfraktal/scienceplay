import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'more_settings_track_widget.dart' show MoreSettingsTrackWidget;
import 'package:flutter/material.dart';

class MoreSettingsTrackModel extends FlutterFlowModel<MoreSettingsTrackWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in ContainerCopyLink widget.
  ApiCallResponse? apiResultGetUrlTrack;
  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in ContainerMore widget.
  ApiCallResponse? apiResultGetUrlTrackMore;
  // Stores action output result for [Backend Call - API (removeFavoriteTrack)] action in ContainerFavorite widget.
  ApiCallResponse? apiResultRemoveFavoritedTrack;
  // Stores action output result for [Backend Call - API (addFavoriteTrack)] action in ContainerFavorite widget.
  ApiCallResponse? apiResultAddFavoriteTrack;
  // Stores action output result for [Backend Call - API (getTinyUrlTrack)] action in ContainerShare widget.
  ApiCallResponse? apiResultGetUrlTrackMoreCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
