import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/component_rate_content_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tracks/components/add_to_library/add_to_library_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'more_settings_audio_model.dart';
export 'more_settings_audio_model.dart';

class MoreSettingsAudioWidget extends StatefulWidget {
  const MoreSettingsAudioWidget({
    super.key,
    bool? ocultarRateContent,
    required this.id,
    required this.thumb,
    required this.title,
    required this.journal,
    required this.urlShare,
  }) : ocultarRateContent = ocultarRateContent ?? false;

  final bool ocultarRateContent;
  final String? id;
  final String? thumb;
  final String? title;
  final String? journal;
  final String? urlShare;

  @override
  State<MoreSettingsAudioWidget> createState() =>
      _MoreSettingsAudioWidgetState();
}

class _MoreSettingsAudioWidgetState extends State<MoreSettingsAudioWidget> {
  late MoreSettingsAudioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreSettingsAudioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Container(
                width: 32.0,
                height: 3.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAE9EB),
                  borderRadius: BorderRadius.circular(3.0),
                ),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (!FFAppState().trackSendoTocada) {
                          if (widget.urlShare != null &&
                              widget.urlShare != '') {
                            await Clipboard.setData(
                                ClipboardData(text: widget.urlShare!));
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'URL copied to clipboard.',
                                    ptText:
                                        'URL copiada para área de transferência.',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          } else {
                            _model.apiResultGetUrl =
                                await WfBerearGroup.getTinyUrlCall.call(
                              idContent: widget.id,
                              url:
                                  '${FFAppConstants.deepUrlRedirect}${widget.id}',
                              token: currentAuthenticationToken,
                            );

                            if ((_model.apiResultGetUrl?.succeeded ?? true)) {
                              await actions.setStringValueInJson(
                                FFAppState().conteudoSelecionado,
                                'tinyUrl',
                                getJsonField(
                                  (_model.apiResultGetUrl?.jsonBody ?? ''),
                                  r'''$.url''',
                                ).toString(),
                              );
                              await Clipboard.setData(ClipboardData(
                                  text: getJsonField(
                                (_model.apiResultGetUrl?.jsonBody ?? ''),
                                r'''$.url''',
                              ).toString()));
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'URL copied to clipboard.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  duration: const Duration(milliseconds: 3000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText:
                                          'Oops, something is wrong, please try again.',
                                      ptText:
                                          'Ops, algo deu errado, tente novamente por favor.',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  duration: const Duration(milliseconds: 3000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).warning,
                                ),
                              );
                            }
                          }
                        } else {
                          if (!(getJsonField(
                            FFAppState().playlistSelecionada,
                            r'''$.tinyUrl''',
                          ).toString().isEmpty)) {
                            await Clipboard.setData(ClipboardData(
                                text: getJsonField(
                              FFAppState().playlistSelecionada,
                              r'''$.tinyUrl''',
                            ).toString()));
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'URL copied to clipboard.',
                                    ptText:
                                        'URL copiada para área de transferência.',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          } else {
                            _model.apiResultGetUrlTrack =
                                await WfBerearGroup.getTinyUrlTrackCall.call(
                              url:
                                  '${FFAppConstants.deepUrlRedirectTrack}${getJsonField(
                                FFAppState().playlistSelecionada,
                                r'''$.id_track''',
                              ).toString()}',
                              idTrack: getJsonField(
                                FFAppState().playlistSelecionada,
                                r'''$.id_track''',
                              ).toString(),
                              token: currentAuthenticationToken,
                            );

                            if ((_model.apiResultGetUrlTrack?.succeeded ??
                                true)) {
                              await actions.setStringValueInJson(
                                FFAppState().playlistSelecionada,
                                'tinyUrl',
                                getJsonField(
                                  (_model.apiResultGetUrlTrack?.jsonBody ?? ''),
                                  r'''$.url''',
                                ).toString(),
                              );
                              await Clipboard.setData(ClipboardData(
                                  text: getJsonField(
                                (_model.apiResultGetUrlTrack?.jsonBody ?? ''),
                                r'''$.url''',
                              ).toString()));
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText: 'URL copied to clipboard.',
                                      ptText:
                                          'URL copiada para área de transferência.',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  duration: const Duration(milliseconds: 3000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText:
                                          'Oops, something is wrong, please try again.',
                                      ptText:
                                          'Ops, algo deu errado, tente novamente por favor.',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  duration: const Duration(milliseconds: 3000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).warning,
                                ),
                              );
                            }
                          }
                        }

                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 48.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                    color: const Color(0xFFEAE9EB),
                                    width: 1.0,
                                  ),
                                ),
                                child: const Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.link,
                                    color: Color(0xFF6A646B),
                                    size: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'ouurss8o' /* Copy link */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF6A646B),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (widget.urlShare != null &&
                            widget.urlShare != '') {
                          await launchURL(
                              'twitter://post?message=${widget.urlShare}');
                        } else {
                          _model.apiResultGetUrlX =
                              await WfBerearGroup.getTinyUrlCall.call(
                            idContent: widget.id,
                            url:
                                '${FFAppConstants.deepUrlRedirect}${widget.id}',
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultGetUrlX?.succeeded ?? true)) {
                            await actions.setStringValueInJson(
                              FFAppState().conteudoSelecionado,
                              'tinyUrl',
                              getJsonField(
                                (_model.apiResultGetUrl?.jsonBody ?? ''),
                                r'''$.url''',
                              ).toString(),
                            );
                            await launchURL(
                                'twitter://post?message=${getJsonField(
                              (_model.apiResultGetUrlX?.jsonBody ?? ''),
                              r'''$.url''',
                            ).toString()}');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText:
                                        'Oops, something is wrong, please try again.',
                                    ptText:
                                        'Ops, algo deu errado, tente novamente por favor.',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).warning,
                              ),
                            );
                          }
                        }

                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 48.0,
                                height: 48.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/ggy9g_x.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'fi5deqb6' /* X */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF6A646B),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (!(widget.urlShare != null &&
                            widget.urlShare != '')) {
                          _model.apiResultGetUrlIG =
                              await WfBerearGroup.getTinyUrlCall.call(
                            idContent: widget.id,
                            url:
                                '${FFAppConstants.deepUrlRedirect}${widget.id}',
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultGetUrlIG?.succeeded ?? true)) {
                            await actions.setStringValueInJson(
                              FFAppState().conteudoSelecionado,
                              'tinyUrl',
                              getJsonField(
                                (_model.apiResultGetUrl?.jsonBody ?? ''),
                                r'''$.url''',
                              ).toString(),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText:
                                        'Oops, something is wrong, please try again.',
                                    ptText:
                                        'Ops, algo deu errado, tente novamente por favor.',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).warning,
                              ),
                            );
                          }
                        }

                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 48.0,
                                height: 48.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/ig.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'mj1k5rti' /* Instagram */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF6A646B),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 10.0)),
                          ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (!FFAppState().trackSendoTocada) {
                            if (widget.urlShare != null &&
                                widget.urlShare != '') {
                              await Share.share(
                                widget.urlShare!,
                                sharePositionOrigin:
                                    getWidgetBoundingBox(context),
                              );
                            } else {
                              _model.apiResultGetUrlShare =
                                  await WfBerearGroup.getTinyUrlCall.call(
                                idContent: widget.id,
                                url:
                                    '${FFAppConstants.deepUrlRedirect}${widget.id}',
                                token: currentAuthenticationToken,
                              );

                              if ((_model.apiResultGetUrlShare?.succeeded ??
                                  true)) {
                                await actions.setStringValueInJson(
                                  FFAppState().conteudoSelecionado,
                                  'tinyUrl',
                                  getJsonField(
                                    (_model.apiResultGetUrl?.jsonBody ?? ''),
                                    r'''$.url''',
                                  ).toString(),
                                );
                                await Share.share(
                                  getJsonField(
                                    (_model.apiResultGetUrl?.jsonBody ?? ''),
                                    r'''$.url''',
                                  ).toString(),
                                  sharePositionOrigin:
                                      getWidgetBoundingBox(context),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText:
                                            'Oops, something is wrong, please try again.',
                                        ptText:
                                            'Ops, algo deu errado, tente novamente por favor.',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    duration: const Duration(milliseconds: 3000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).warning,
                                  ),
                                );
                              }
                            }
                          } else {
                            if (!(getJsonField(
                              FFAppState().playlistSelecionada,
                              r'''$.tinyUrl''',
                            ).toString().isEmpty)) {
                              await Share.share(
                                getJsonField(
                                  FFAppState().playlistSelecionada,
                                  r'''$.tinyUrl''',
                                ).toString(),
                                sharePositionOrigin:
                                    getWidgetBoundingBox(context),
                              );
                            } else {
                              _model.apiResultGetUrlTrackMore =
                                  await WfBerearGroup.getTinyUrlTrackCall.call(
                                url:
                                    '${FFAppConstants.deepUrlRedirectTrack}${getJsonField(
                                  FFAppState().playlistSelecionada,
                                  r'''$.id_track''',
                                ).toString()}',
                                idTrack: getJsonField(
                                  FFAppState().playlistSelecionada,
                                  r'''$.id_track''',
                                ).toString(),
                                token: currentAuthenticationToken,
                              );

                              if ((_model.apiResultGetUrlTrackMore?.succeeded ??
                                  true)) {
                                await actions.setStringValueInJson(
                                  FFAppState().playlistSelecionada,
                                  'tinyUrl',
                                  getJsonField(
                                    (_model.apiResultGetUrlTrack?.jsonBody ??
                                        ''),
                                    r'''$.url''',
                                  ).toString(),
                                );
                                await Share.share(
                                  getJsonField(
                                    (_model.apiResultGetUrlTrackMore
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.url''',
                                  ).toString(),
                                  sharePositionOrigin:
                                      getWidgetBoundingBox(context),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText:
                                            'Oops, something is wrong, please try again.',
                                        ptText:
                                            'Ops, algo deu errado, tente novamente por favor.',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    duration: const Duration(milliseconds: 3000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).warning,
                                  ),
                                );
                              }
                            }
                          }

                          safeSetState(() {});
                        },
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(25.0),
                                    border: Border.all(
                                      color: const Color(0xFFEAE9EB),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.keyboard_control_outlined,
                                      color: Color(0xFF6A646B),
                                      size: 16.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'lecf2f8q' /* More */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF6A646B),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (getJsonField(
                      FFAppState().conteudoSelecionado,
                      r'''$.favorited''',
                    )) {
                      _model.apiResultRemoveContentFromFavorite =
                          await WfBerearGroup.removeFavoriteContentCall.call(
                        contentId: widget.id,
                        token: currentAuthenticationToken,
                      );

                      if ((_model
                              .apiResultRemoveContentFromFavorite?.succeeded ??
                          true)) {
                        await actions.setBoolValueInJson(
                          FFAppState().conteudoSelecionado,
                          'favorited',
                          false,
                        );
                        await action_blocks.clearQueryCacheContent(context);
                      } else {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Something is wrong, try again.',
                                ptText: 'Algo deu errado, tente novamente.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).warning,
                          ),
                        );
                      }
                    } else {
                      _model.apiResultAddContentToFavorite =
                          await WfBerearGroup.addFavoriteContentCall.call(
                        contentId: widget.id,
                        token: currentAuthenticationToken,
                      );

                      if ((_model.apiResultAddContentToFavorite?.succeeded ??
                          true)) {
                        await actions.setBoolValueInJson(
                          FFAppState().conteudoSelecionado,
                          'favorited',
                          true,
                        );
                        await action_blocks.clearQueryCacheContent(context);
                      } else {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Something is wrong, try again.',
                                ptText: 'Algo deu errado, tente novamente.',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            duration: const Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).warning,
                          ),
                        );
                      }
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!getJsonField(
                            FFAppState().conteudoSelecionado,
                            r'''$.favorited''',
                          ))
                            Icon(
                              Icons.favorite_border_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          if (getJsonField(
                            FFAppState().conteudoSelecionado,
                            r'''$.favorited''',
                          ))
                            Icon(
                              Icons.favorite_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          if (getJsonField(
                            FFAppState().conteudoSelecionado,
                            r'''$.favorited''',
                          ))
                            Text(
                              FFLocalizations.of(context).getText(
                                '9jz6i8p3' /* Unfavorite */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          if (!getJsonField(
                            FFAppState().conteudoSelecionado,
                            r'''$.favorited''',
                          ))
                            Text(
                              FFLocalizations.of(context).getText(
                                'hqj93mzm' /* Add to favorites */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return WebViewAware(
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: AddToLibraryWidget(
                              coverImage: widget.thumb!,
                              title: widget.title!,
                              journal: widget.journal!,
                              id: widget.id!,
                            ),
                          ),
                        );
                      },
                    ).then((value) =>
                        safeSetState(() => _model.addedOrRemoved = value));

                    if (_model.addedOrRemoved!) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            FFLocalizations.of(context).getVariableText(
                              enText: 'File updated.',
                              ptText: 'Pasta atualizada.',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          duration: const Duration(milliseconds: 3000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'dfywe69h' /* Add to library */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF6A646B),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
                if (!widget.ocultarRateContent)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: ComponentRateContentWidget(
                                idContent: widget.id!,
                                thumbContent: widget.thumb!,
                                nameContent: widget.title,
                                journalContent: widget.journal!,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'yt64s0br' /* Rate this content */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '09db7a9k' /* Go to author profile */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF6A646B),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                Builder(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (!FFAppState().trackSendoTocada) {
                        if (!(getJsonField(
                          FFAppState().conteudoSelecionado,
                          r'''$.tinyUrl''',
                        ).toString().isEmpty)) {
                          await Share.share(
                            getJsonField(
                              FFAppState().conteudoSelecionado,
                              r'''$.tinyUrl''',
                            ).toString(),
                            sharePositionOrigin: getWidgetBoundingBox(context),
                          );
                        } else {
                          _model.apiResultGetUrlShareCopy =
                              await WfBerearGroup.getTinyUrlCall.call(
                            idContent: widget.id,
                            url:
                                '${FFAppConstants.deepUrlRedirect}${widget.id}',
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultGetUrlShareCopy?.succeeded ??
                              true)) {
                            await actions.setStringValueInJson(
                              FFAppState().conteudoSelecionado,
                              'tinyUrl',
                              getJsonField(
                                (_model.apiResultGetUrlShareCopy?.jsonBody ??
                                    ''),
                                r'''$.url''',
                              ).toString(),
                            );
                            await Share.share(
                              getJsonField(
                                (_model.apiResultGetUrlShareCopy?.jsonBody ??
                                    ''),
                                r'''$.url''',
                              ).toString(),
                              sharePositionOrigin:
                                  getWidgetBoundingBox(context),
                            );
                          } else {
                            await Share.share(
                              FFLocalizations.of(context).getVariableText(
                                enText:
                                    'Try the Science Play app now: https://www.scienceplay.app/',
                                ptText:
                                    'Conheça o app da Science Play: https://www.scienceplay.app/',
                              ),
                              sharePositionOrigin:
                                  getWidgetBoundingBox(context),
                            );
                          }
                        }
                      } else {
                        if (!(getJsonField(
                          FFAppState().playlistSelecionada,
                          r'''$.tinyUrl''',
                        ).toString().isEmpty)) {
                          await Share.share(
                            getJsonField(
                              FFAppState().playlistSelecionada,
                              r'''$.tinyUrl''',
                            ).toString(),
                            sharePositionOrigin: getWidgetBoundingBox(context),
                          );
                        } else {
                          _model.apiResultGetUrlTrackMoreCopy =
                              await WfBerearGroup.getTinyUrlTrackCall.call(
                            url:
                                '${FFAppConstants.deepUrlRedirectTrack}${getJsonField(
                              FFAppState().playlistSelecionada,
                              r'''$.id_track''',
                            ).toString()}',
                            idTrack: getJsonField(
                              FFAppState().playlistSelecionada,
                              r'''$.id_track''',
                            ).toString(),
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultGetUrlTrackMoreCopy?.succeeded ??
                              true)) {
                            await actions.setStringValueInJson(
                              FFAppState().playlistSelecionada,
                              'tinyUrl',
                              getJsonField(
                                (_model.apiResultGetUrlTrackMoreCopy
                                        ?.jsonBody ??
                                    ''),
                                r'''$.url''',
                              ).toString(),
                            );
                            await Share.share(
                              getJsonField(
                                (_model.apiResultGetUrlTrackMoreCopy
                                        ?.jsonBody ??
                                    ''),
                                r'''$.url''',
                              ).toString(),
                              sharePositionOrigin:
                                  getWidgetBoundingBox(context),
                            );
                          } else {
                            await Share.share(
                              FFLocalizations.of(context).getVariableText(
                                enText:
                                    'Try the Science Play app now: https://www.scienceplay.app/',
                                ptText:
                                    'Conheça o app da Science Play: https://www.scienceplay.app/',
                              ),
                              sharePositionOrigin:
                                  getWidgetBoundingBox(context),
                            );
                          }
                        }
                      }

                      safeSetState(() {});
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.share_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '5m94rdm6' /* Share */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.flag_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'rg9e12z6' /* Report */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF6A646B),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'hzrqbpn9' /* Cancel */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFF383438),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
