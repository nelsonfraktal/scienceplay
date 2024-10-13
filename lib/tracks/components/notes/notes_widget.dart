import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'notes_model.dart';
export 'notes_model.dart';

class NotesWidget extends StatefulWidget {
  const NotesWidget({
    super.key,
    required this.idContent,
    required this.time,
  });

  final String? idContent;
  final String? time;

  @override
  State<NotesWidget> createState() => _NotesWidgetState();
}

class _NotesWidgetState extends State<NotesWidget> {
  late NotesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotesModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {
        FFAppState().clearQueryGetNotesContentCache();
        _model.apiRequestCompleted = false;
      });
      await _model.waitForApiRequestCompleted();
    });

    _model.textFieldNoteTextController ??= TextEditingController();
    _model.textFieldNoteFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.componentVoltarBaixoModel,
                  updateCallback: () => safeSetState(() {}),
                  child: ComponentVoltarBaixoWidget(
                    customAction: () async {},
                  ),
                ),
                Flexible(
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'urp07joj' /* Notes */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFF2B282B),
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
            Text(
              FFLocalizations.of(context).getText(
                'gm3pmcvi' /* Take notes during the content.... */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: const Color(0xFF847B85),
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height * 0.5,
              ),
              decoration: const BoxDecoration(),
              child: FutureBuilder<ApiCallResponse>(
                future: FFAppState()
                    .queryGetNotesContent(
                  requestFn: () => WfBerearNotesGroup.getNotesContentCall.call(
                    idContent: widget.idContent,
                    token: currentAuthenticationToken,
                  ),
                )
                    .then((result) {
                  _model.apiRequestCompleted = true;
                  return result;
                }),
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
                  final listViewNotesGetNotesContentResponse = snapshot.data!;

                  return Builder(
                    builder: (context) {
                      final note = WfBerearNotesGroup.getNotesContentCall
                              .notes(
                                listViewNotesGetNotesContentResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];

                      return RefreshIndicator(
                        onRefresh: () async {
                          safeSetState(() {
                            FFAppState().clearQueryGetNotesContentCache();
                            _model.apiRequestCompleted = false;
                          });
                          await _model.waitForApiRequestCompleted();
                        },
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: note.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 24.0),
                          itemBuilder: (context, noteIndex) {
                            final noteItem = note[noteIndex];
                            return Container(
                              width: 100.0,
                              decoration: const BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.76,
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.76,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                getJsonField(
                                                  noteItem,
                                                  r'''$.time''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF847B85),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'cv42wlgd' /* • */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF847B85),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'y5inxkiz' /* Private note */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF847B85),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                          Text(
                                            getJsonField(
                                              noteItem,
                                              r'''$.annotation''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: const Color(0xFF514C52),
                                                  fontSize: 19.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.7,
                                            height: 1.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFEAE9EB),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderRadius: 20.0,
                                    borderWidth: 0.0,
                                    buttonSize: 40.0,
                                    icon: const FaIcon(
                                      FontAwesomeIcons.trashAlt,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                    showLoadingIndicator: true,
                                    onPressed: () async {
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                        enText: 'Are you sure?',
                                                        ptText: 'Tem certeza?',
                                                      )),
                                                      content: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                        enText:
                                                            'You can\'t undo this action if proced.',
                                                        ptText:
                                                            'Esta ação não poderá ser desfeita.',
                                                      )),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                            enText: 'Cancel',
                                                            ptText: 'Cancelar',
                                                          )),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                            enText:
                                                                'Delete note',
                                                            ptText:
                                                                'Apagar anotação',
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ) ??
                                              false;
                                      if (confirmDialogResponse) {
                                        _model.apiResultDeleteNote =
                                            await WfBerearNotesGroup
                                                .deleteNoteContentCall
                                                .call(
                                          token: currentAuthenticationToken,
                                          idNote: getJsonField(
                                            noteItem,
                                            r'''$._id''',
                                          ).toString(),
                                        );

                                        if ((_model.apiResultDeleteNote
                                                ?.succeeded ??
                                            true)) {
                                          FFAppState()
                                              .clearQueryGetNotesContentCache();
                                        }
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            if (!_model.addingNote)
              FFButtonWidget(
                onPressed: () async {
                  _model.addingNote = true;
                  safeSetState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'wnhmlaef' /* + Add note */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(56.0),
                ),
              ),
            if (_model.addingNote)
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      controller: _model.textFieldNoteTextController,
                      focusNode: _model.textFieldNoteFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textFieldNoteTextController',
                        const Duration(milliseconds: 500),
                        () => safeSetState(() {}),
                      ),
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          '5b5dx3ui' /* Add your note here... */,
                        ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                      maxLines: null,
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator: _model.textFieldNoteTextControllerValidator
                          .asValidator(context),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: (_model.textFieldNoteTextController.text ==
                                        '')
                                ? null
                                : () async {
                                    _model.apiResultAddNote =
                                        await WfBerearNotesGroup
                                            .addNoteContentCall
                                            .call(
                                      token: currentAuthenticationToken,
                                      idContent: widget.idContent,
                                      annotation:
                                          '“${_model.textFieldNoteTextController.text}”',
                                      time: widget.time,
                                    );

                                    if ((_model.apiResultAddNote?.succeeded ??
                                        true)) {
                                      FFAppState()
                                          .clearQueryGetNotesContentCache();
                                      safeSetState(() {
                                        _model.textFieldNoteTextController
                                            ?.clear();
                                      });
                                      _model.addingNote = false;
                                      safeSetState(() {});
                                    }

                                    safeSetState(() {});
                                  },
                            text: FFLocalizations.of(context).getText(
                              '4pn4hhaa' /* Save */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(56.0),
                              disabledColor:
                                  FlutterFlowTheme.of(context).alternate,
                              disabledTextColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              _model.addingNote = false;
                              safeSetState(() {});
                              safeSetState(() {
                                _model.textFieldNoteTextController?.clear();
                              });
                            },
                            text: FFLocalizations.of(context).getText(
                              'vnnwpru6' /* Cancel */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(56.0),
                            ),
                          ),
                        ].divide(const SizedBox(height: 8.0)),
                      ),
                    ),
                  ].divide(const SizedBox(height: 24.0)),
                ),
              ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
