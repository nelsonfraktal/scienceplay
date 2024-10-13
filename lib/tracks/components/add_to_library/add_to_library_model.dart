import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_to_library_widget.dart' show AddToLibraryWidget;
import 'package:flutter/material.dart';

class AddToLibraryModel extends FlutterFlowModel<AddToLibraryWidget> {
  ///  Local state fields for this component.

  List<String> toRemove = [];
  void addToToRemove(String item) => toRemove.add(item);
  void removeFromToRemove(String item) => toRemove.remove(item);
  void removeAtIndexFromToRemove(int index) => toRemove.removeAt(index);
  void insertAtIndexInToRemove(int index, String item) =>
      toRemove.insert(index, item);
  void updateToRemoveAtIndex(int index, Function(String) updateFn) =>
      toRemove[index] = updateFn(toRemove[index]);

  List<String> toAdd = [];
  void addToToAdd(String item) => toAdd.add(item);
  void removeFromToAdd(String item) => toAdd.remove(item);
  void removeAtIndexFromToAdd(int index) => toAdd.removeAt(index);
  void insertAtIndexInToAdd(int index, String item) =>
      toAdd.insert(index, item);
  void updateToAddAtIndex(int index, Function(String) updateFn) =>
      toAdd[index] = updateFn(toAdd[index]);

  int aux = 0;

  ///  State fields for stateful widgets in this component.

  // Model for Component_voltar_baixo component.
  late ComponentVoltarBaixoModel componentVoltarBaixoModel;
  // Stores action output result for [Backend Call - API (updateMyContentsInFiles)] action in ContainerSave widget.
  ApiCallResponse? apiResultRemovedFromPlaylists;
  // Stores action output result for [Backend Call - API (removeContentFromFile)] action in ContainerSave widget.
  ApiCallResponse? apiResultRemovedFromPlaylist;
  // Stores action output result for [Backend Call - API (updateMyContentsInFiles)] action in ContainerSave widget.
  ApiCallResponse? apiResultAddedToPlaylists;
  // Stores action output result for [Backend Call - API (addContentToFile)] action in ContainerSave widget.
  ApiCallResponse? apiResultAddedToPlaylist;
  // Stores action output result for [Backend Call - API (updateMyContentsInFiles)] action in ContainerSave widget.
  ApiCallResponse? apiResultMultAddedToPlaylists;
  // Stores action output result for [Backend Call - API (addContentToFile)] action in ContainerSave widget.
  ApiCallResponse? apiResultMultAddedToPlaylist;
  // Stores action output result for [Backend Call - API (updateMyContentsInFiles)] action in ContainerSave widget.
  ApiCallResponse? apiResultMultRemovedFromPlaylists;
  // Stores action output result for [Backend Call - API (removeContentFromFile)] action in ContainerSave widget.
  ApiCallResponse? apiResultMultRemovedFromPlaylist;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Bottom Sheet - Create_file_express] action in ButtonCreateFile widget.
  bool? newFile;

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
