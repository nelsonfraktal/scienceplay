import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/library/create_file_express/create_file_express_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'add_to_library_model.dart';
export 'add_to_library_model.dart';

class AddToLibraryWidget extends StatefulWidget {
  const AddToLibraryWidget({
    super.key,
    required this.coverImage,
    required this.title,
    required this.journal,
    required this.id,
  });

  final String? coverImage;
  final String? title;
  final String? journal;
  final String? id;

  @override
  State<AddToLibraryWidget> createState() => _AddToLibraryWidgetState();
}

class _AddToLibraryWidgetState extends State<AddToLibraryWidget> {
  late AddToLibraryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddToLibraryModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: FFAppState().queryMyFiles(
        requestFn: () => WfBerearGroup.getMyFilesCall.call(
          language: currentUserData?.linguagemPreferida,
          token: currentAuthenticationToken,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30.0,
              height: 30.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final containerBodyGetMyFilesResponse = snapshot.data!;

        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      wrapWithModel(
                        model: _model.componentVoltarBaixoModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ComponentVoltarBaixoWidget(
                          customAction: () async {},
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1.0, -1.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (!(!(_model.toRemove.isNotEmpty) &&
                                !(_model.toAdd.isNotEmpty))) {
                              _model.aux = functions.newCustomFunction(
                                  _model.toRemove.toList(),
                                  _model.toAdd.toList());
                              safeSetState(() {});
                              await Future.wait([
                                Future(() async {
                                  if (_model.aux == 1) {
                                    if (_model.toRemove.length > 1) {
                                      _model.apiResultRemovedFromPlaylists =
                                          await WfBerearGroup
                                              .updateMyContentsInFilesCall
                                              .call(
                                        idContent: widget.id,
                                        listIdsFilesList: _model.toRemove,
                                        isAdd: false,
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model.apiResultRemovedFromPlaylists
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    } else {
                                      _model.apiResultRemovedFromPlaylist =
                                          await WfBerearGroup
                                              .removeContentFromFileCall
                                              .call(
                                        idContent: widget.id,
                                        idFile: _model.toRemove.first,
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model.apiResultRemovedFromPlaylist
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    }
                                  }
                                }),
                                Future(() async {
                                  if (_model.aux == 2) {
                                    if (_model.toAdd.length > 1) {
                                      _model.apiResultAddedToPlaylists =
                                          await WfBerearGroup
                                              .updateMyContentsInFilesCall
                                              .call(
                                        idContent: widget.id,
                                        listIdsFilesList: _model.toAdd,
                                        isAdd: true,
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model.apiResultAddedToPlaylists
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    } else {
                                      _model.apiResultAddedToPlaylist =
                                          await WfBerearGroup
                                              .addContentToFileCall
                                              .call(
                                        token: currentAuthenticationToken,
                                        idFile: _model.toAdd.first,
                                        idContent: widget.id,
                                      );

                                      if ((_model.apiResultAddedToPlaylist
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    }
                                  }
                                }),
                                Future(() async {
                                  if (_model.aux == 3) {
                                    if (_model.toAdd.length > 1) {
                                      _model.apiResultMultAddedToPlaylists =
                                          await WfBerearGroup
                                              .updateMyContentsInFilesCall
                                              .call(
                                        idContent: widget.id,
                                        listIdsFilesList: _model.toAdd,
                                        isAdd: true,
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model.apiResultMultAddedToPlaylists
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    } else {
                                      _model.apiResultMultAddedToPlaylist =
                                          await WfBerearGroup
                                              .addContentToFileCall
                                              .call(
                                        token: currentAuthenticationToken,
                                        idFile: _model.toAdd.first,
                                        idContent: widget.id,
                                      );

                                      if ((_model.apiResultMultAddedToPlaylist
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    }

                                    if (_model.toRemove.length > 1) {
                                      _model.apiResultMultRemovedFromPlaylists =
                                          await WfBerearGroup
                                              .updateMyContentsInFilesCall
                                              .call(
                                        idContent: widget.id,
                                        listIdsFilesList: _model.toRemove,
                                        isAdd: false,
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model
                                              .apiResultMultRemovedFromPlaylists
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    } else {
                                      _model.apiResultMultRemovedFromPlaylist =
                                          await WfBerearGroup
                                              .removeContentFromFileCall
                                              .call(
                                        idContent: widget.id,
                                        idFile: _model.toRemove.first,
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model
                                              .apiResultMultRemovedFromPlaylist
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().clearQueryMyFilesCache();
                                        Navigator.pop(context, true);
                                      }
                                    }
                                  }
                                }),
                              ]);
                            }

                            safeSetState(() {});
                          },
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 0.0, 12.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '28eaar5r' /* Save */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: !(_model.toRemove.isNotEmpty) &&
                                          !(_model.toAdd.isNotEmpty)
                                      ? const Color(0xFFB7B2B8)
                                      : FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          widget.coverImage!,
                          width: 282.0,
                          height: 188.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.title,
                            'Title',
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF2B282B),
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.journal,
                          'Journal',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF514C52),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
                if (WfBerearGroup.getMyFilesCall
                            .files(
                              containerBodyGetMyFilesResponse.jsonBody,
                            )
                            ?.where((e) => (String var1) {
                                  return var1 != "My favorites" &&
                                      var1 != "Listening" &&
                                      var1 != "Completed";
                                }(getJsonField(
                                  e,
                                  r'''$.name''',
                                ).toString()))
                            .toList() !=
                        null &&
                    (WfBerearGroup.getMyFilesCall
                            .files(
                              containerBodyGetMyFilesResponse.jsonBody,
                            )
                            ?.where((e) => (String var1) {
                                  return var1 != "My favorites" &&
                                      var1 != "Listening" &&
                                      var1 != "Completed";
                                }(getJsonField(
                                  e,
                                  r'''$.name''',
                                ).toString()))
                            .toList())!
                        .isNotEmpty)
                  Container(
                    decoration: const BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final file = WfBerearGroup.getMyFilesCall
                                .files(
                                  containerBodyGetMyFilesResponse.jsonBody,
                                )
                                ?.where((e) => (String var1) {
                                      return var1 != "My favorites" &&
                                          var1 != "Listening" &&
                                          var1 != "Completed" &&
                                          var1 != "Meus favoritos" &&
                                          var1 != "Ouvindo" &&
                                          var1 != "Completados";
                                    }(getJsonField(
                                      e,
                                      r'''$.name''',
                                    ).toString()))
                                .toList()
                                .toList() ??
                            [];

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(file.length, (fileIndex) {
                            final fileItem = file[fileIndex];
                            return Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      functions.containsHttps(getJsonField(
                                        fileItem,
                                        r'''$.cover''',
                                      ).toString())
                                          ? getJsonField(
                                              fileItem,
                                              r'''$.cover''',
                                            ).toString()
                                          : 'https:${getJsonField(
                                              fileItem,
                                              r'''$.cover''',
                                            ).toString()}',
                                      width: 40.0,
                                      height: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      getJsonField(
                                        fileItem,
                                        r'''$.name''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFF6A646B),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    child: Checkbox(
                                      value:
                                          _model.checkboxValueMap[fileItem] ??=
                                              functions.listJsonInKeyContainsId(
                                                  widget.id!,
                                                  getJsonField(
                                                    fileItem,
                                                    r'''$.contents''',
                                                    true,
                                                  )!,
                                                  'id'),
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.checkboxValueMap[fileItem] =
                                                newValue!);
                                        if (newValue!) {
                                          if (functions.listJsonInKeyContainsId(
                                              widget.id!,
                                              getJsonField(
                                                fileItem,
                                                r'''$.contents''',
                                                true,
                                              )!,
                                              'id')) {
                                            if (_model.toRemove
                                                .contains(getJsonField(
                                              fileItem,
                                              r'''$.id''',
                                            ).toString())) {
                                              _model.removeFromToRemove(
                                                  getJsonField(
                                                fileItem,
                                                r'''$.id''',
                                              ).toString());
                                              safeSetState(() {});
                                            }
                                          } else {
                                            _model.addToToAdd(getJsonField(
                                              fileItem,
                                              r'''$.id''',
                                            ).toString());
                                            safeSetState(() {});
                                            if (_model.toRemove
                                                .contains(getJsonField(
                                              fileItem,
                                              r'''$.id''',
                                            ).toString())) {
                                              _model.removeFromToRemove(
                                                  getJsonField(
                                                fileItem,
                                                r'''$.id''',
                                              ).toString());
                                              safeSetState(() {});
                                            }
                                          }
                                        } else {
                                          if (functions.listJsonInKeyContainsId(
                                              widget.id!,
                                              getJsonField(
                                                fileItem,
                                                r'''$.contents''',
                                                true,
                                              )!,
                                              'id')) {
                                            _model.addToToRemove(getJsonField(
                                              fileItem,
                                              r'''$.id''',
                                            ).toString());
                                            safeSetState(() {});
                                            if (_model.toAdd
                                                .contains(getJsonField(
                                              fileItem,
                                              r'''$.id''',
                                            ).toString())) {
                                              _model
                                                  .removeFromToAdd(getJsonField(
                                                fileItem,
                                                r'''$.id''',
                                              ).toString());
                                              safeSetState(() {});
                                            }
                                          } else {
                                            if (_model.toAdd
                                                .contains(getJsonField(
                                              fileItem,
                                              r'''$.id''',
                                            ).toString())) {
                                              _model
                                                  .removeFromToAdd(getJsonField(
                                                fileItem,
                                                r'''$.id''',
                                              ).toString());
                                              safeSetState(() {});
                                            }
                                          }
                                        }
                                      },
                                      side: BorderSide(
                                        width: 2,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 10.0)),
                              ),
                            );
                          }).divide(const SizedBox(height: 16.0)),
                        );
                      },
                    ),
                  ),
                if (!(WfBerearGroup.getMyFilesCall
                    .files(
                      containerBodyGetMyFilesResponse.jsonBody,
                    )!
                    .where((e) => (String var1) {
                          return var1 != "My favorites" &&
                              var1 != "Listening" &&
                              var1 != "Completed" &&
                              var1 != "Meus favoritos" &&
                              var1 != "Ouvindo" &&
                              var1 != "Completados";
                        }(getJsonField(
                          e,
                          r'''$.name''',
                        ).toString()))
                    .toList()
                    .isNotEmpty))
                  Align(
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return WebViewAware(
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: CreateFileExpressWidget(
                                    idContent: widget.id!,
                                  ),
                                ),
                              );
                            },
                          ).then((value) =>
                              safeSetState(() => _model.newFile = value));

                          if (_model.newFile!) {
                            Navigator.pop(context, true);
                          }

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          '4u2umfj9' /* + Create file to this content */,
                        ),
                        options: FFButtonOptions(
                          height: 44.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
              ].divide(const SizedBox(height: 28.0)),
            ),
          ),
        );
      },
    );
  }
}
