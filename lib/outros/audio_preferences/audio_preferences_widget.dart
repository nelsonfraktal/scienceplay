import '/auth/custom_auth/auth_util.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'audio_preferences_model.dart';
export 'audio_preferences_model.dart';

class AudioPreferencesWidget extends StatefulWidget {
  const AudioPreferencesWidget({super.key});

  @override
  State<AudioPreferencesWidget> createState() => _AudioPreferencesWidgetState();
}

class _AudioPreferencesWidgetState extends State<AudioPreferencesWidget> {
  late AudioPreferencesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioPreferencesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 238.0,
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFFAFAFA),
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x00000040),
                offset: Offset(
                  0.0,
                  0.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'oi93y9iy' /* Save */,
                          ),
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: const Color(0xFF7A3080),
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
              ),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 32.0),
                  child: Builder(
                    builder: (context) {
                      final audioOS =
                          FFAppConstants.AudioOS.toList().take(2).toList();

                      return ListView.separated(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          16.0,
                          0,
                          16.0,
                        ),
                        scrollDirection: Axis.vertical,
                        itemCount: audioOS.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                        itemBuilder: (context, audioOSIndex) {
                          final audioOSItem = audioOS[audioOSIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().audioPref = audioOSItem;
                              safeSetState(() {});
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 100.0,
                              height: 49.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 11.0, 16.0, 11.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (FFAppState().audioPref == ''
                                          ? (currentUserData
                                                  ?.preferenciaAudio ==
                                              audioOSItem)
                                          : valueOrDefault<bool>(
                                              FFAppState().audioPref ==
                                                      audioOSItem
                                                  ? true
                                                  : false,
                                              false,
                                            ))
                                        Icon(
                                          Icons.check,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 24.0,
                                        ),
                                      Text(
                                        audioOSItem,
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: const Color(0xFF636363),
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 4.0)),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
