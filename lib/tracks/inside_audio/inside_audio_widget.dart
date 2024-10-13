import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/component_rate_content_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tracks/components/more_settings_audio/more_settings_audio_widget.dart';
import '/tracks/components/notes/notes_widget.dart';
import '/tracks/components/see_more_about/see_more_about_widget.dart';
import '/tracks/components/transcription/transcription_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'inside_audio_model.dart';
export 'inside_audio_model.dart';

class InsideAudioWidget extends StatefulWidget {
  const InsideAudioWidget({
    super.key,
    required this.audios,
    required this.specialties,
    required this.indexSelecionado,
    required this.numberAudios,
  });

  final List<dynamic>? audios;
  final List<dynamic>? specialties;
  final int? indexSelecionado;
  final int? numberAudios;

  @override
  State<InsideAudioWidget> createState() => _InsideAudioWidgetState();
}

class _InsideAudioWidgetState extends State<InsideAudioWidget> {
  late InsideAudioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideAudioModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.indexSelecionado = widget.indexSelecionado!;
      safeSetState(() {});
      FFAppState().conteudoSelecionado =
          widget.audios![widget.indexSelecionado!];
      FFAppState().trackSendoTocada = true;
      _model.apiResultStartedContent =
          await WfBerearGroup.addStartedContentCall.call(
        idContent: getJsonField(
          widget.audios?[_model.indexSelecionado],
          r'''$.id''',
        ).toString().toString(),
        token: currentAuthenticationToken,
      );

      if ((_model.apiResultStartedContent?.succeeded ?? true)) {
        _model.timerStudySessionsController.onStartTimer();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().trackSendoTocada = false;
                              safeSetState(() {});
                              _model.apiResultRegisterStudySession =
                                  await WfBerearGroup.registerStudySessionCall
                                      .call(
                                seconds: valueOrDefault<int>(
                                  _model.timerStudySessionsMilliseconds ~/ 1000,
                                  0,
                                ),
                                idContent: getJsonField(
                                  widget.audios?[widget.indexSelecionado!],
                                  r'''$.id''',
                                ).toString(),
                                token: currentAuthenticationToken,
                              );

                              if ((_model.apiResultRegisterStudySession
                                      ?.succeeded ??
                                  true)) {
                                FFAppState().clearQueryDailyQuestCache();
                                FFAppState().clearQueryMyFilesCache();
                                FFAppState()
                                    .clearQueryGetBackWhereYouStoppedCache();
                                context.safePop();
                              } else {
                                context.safePop();
                              }

                              safeSetState(() {});
                            },
                            child: Container(
                              width: 48.0,
                              height: 48.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFEEE7ED),
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 24.0,
                                    height: 24.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/Icon-back-48px.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (getJsonField(
                                widget.audios?[widget.indexSelecionado!],
                                r'''$.favorited''',
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 100.0,
                                    borderWidth: 0.0,
                                    buttonSize: 40.0,
                                    fillColor: const Color(0xFFEEE7ED),
                                    icon: Icon(
                                      Icons.favorite_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      _model.apiResultRemoveFavoriteContent =
                                          await WfBerearGroup
                                              .removeFavoriteContentCall
                                              .call(
                                        contentId: getJsonField(
                                          widget
                                              .audios?[widget.numberAudios!],
                                          r'''$.id''',
                                        ).toString(),
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model.apiResultRemoveFavoriteContent
                                              ?.succeeded ??
                                          true)) {
                                        await actions.setBoolValueInJson(
                                          widget
                                              .audios![widget.numberAudios!],
                                          'favorited',
                                          false,
                                        );
                                        await action_blocks
                                            .clearQueryCacheContent(context);
                                        safeSetState(() {});
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText:
                                                    'Content removed from favorites.',
                                                ptText:
                                                    'Conteúdo removido dos favoritos.',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                          ),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText:
                                                    'Something is wrong, try again.',
                                                ptText:
                                                    'Algo deu errado, tente novamente.',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .warning,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              if (!getJsonField(
                                widget.audios![widget.indexSelecionado!],
                                r'''$.favorited''',
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 100.0,
                                    borderWidth: 0.0,
                                    buttonSize: 40.0,
                                    fillColor: const Color(0xFFEEE7ED),
                                    icon: Icon(
                                      Icons.favorite_border_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      _model.apiResultAddFavoriteContent =
                                          await WfBerearGroup
                                              .addFavoriteContentCall
                                              .call(
                                        contentId: getJsonField(
                                          widget.audios?[
                                              widget.indexSelecionado!],
                                          r'''$.id''',
                                        ).toString(),
                                        token: currentAuthenticationToken,
                                      );

                                      if ((_model.apiResultAddFavoriteContent
                                              ?.succeeded ??
                                          true)) {
                                        await actions.setBoolValueInJson(
                                          widget.audios![
                                              widget.indexSelecionado!],
                                          'favorited',
                                          true,
                                        );
                                        await action_blocks
                                            .clearQueryCacheContent(context);
                                        safeSetState(() {});
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText:
                                                    'Content added to favorites.',
                                                ptText:
                                                    'Conteúdo adicionado aos favoritos.',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .success,
                                          ),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              FFLocalizations.of(context)
                                                  .getVariableText(
                                                enText:
                                                    'Something is wrong, try again.',
                                                ptText:
                                                    'Algo deu errado, tente novamente.',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .warning,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 100.0,
                                  borderWidth: 0.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0xFFEEE7ED),
                                  icon: Icon(
                                    Icons.keyboard_control_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: MoreSettingsAudioWidget(
                                                id: getJsonField(
                                                  widget.audios![widget
                                                      .indexSelecionado!],
                                                  r'''$.id''',
                                                ).toString(),
                                                thumb: getJsonField(
                                                  widget.audios![widget
                                                      .indexSelecionado!],
                                                  r'''$.cover_image''',
                                                ).toString(),
                                                title: getJsonField(
                                                  widget.audios![widget
                                                      .indexSelecionado!],
                                                  r'''$.title''',
                                                ).toString(),
                                                journal: getJsonField(
                                                  widget.audios![widget
                                                      .indexSelecionado!],
                                                  r'''$.journal''',
                                                ).toString(),
                                                urlShare: getJsonField(
                                                  widget.audios![widget
                                                      .indexSelecionado!],
                                                  r'''$.tinyUrl''',
                                                ).toString(),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                              ),
                            ].divide(const SizedBox(width: 16.0)),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            getJsonField(
                              widget.audios![_model.indexSelecionado],
                              r'''$.cover_image''',
                            ).toString(),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 188.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              getJsonField(
                                FFAppState().conteudoSelecionado,
                                r'''$.title''',
                              ).toString(),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF2B282B),
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Text(
                              getJsonField(
                                FFAppState().conteudoSelecionado,
                                r'''$.journal''',
                              ).toString(),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            if (!functions.verifyIfJsonIsEmpty(getJsonField(
                              FFAppState().conteudoSelecionado,
                              r'''$.author''',
                            )))
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if ((String var1) {
                                    return var1.contains('empty:');
                                  }(getJsonField(
                                    FFAppState().conteudoSelecionado,
                                    r'''$.author[0].photo''',
                                  ).toString()))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width: 24.0,
                                        height: 24.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF808080),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            (String var1) {
                                              return var1.split(':')[1];
                                            }(getJsonField(
                                              FFAppState().conteudoSelecionado,
                                              r'''$.author[0].photo''',
                                            ).toString()),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (!((String var1) {
                                    return var1.contains('empty:');
                                  }(getJsonField(
                                    FFAppState().conteudoSelecionado,
                                    r'''$.author[0].photo''',
                                  ).toString())))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width: 24.0,
                                        height: 24.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          getJsonField(
                                            FFAppState().conteudoSelecionado,
                                            r'''$.author[0].photo''',
                                          ).toString(),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  Text(
                                    '${FFLocalizations.of(context).getVariableText(
                                      enText: 'Written by ',
                                      ptText: 'Escrito por ',
                                    )}${getJsonField(
                                      FFAppState().conteudoSelecionado,
                                      r'''$.author[0].name''',
                                    ).toString()}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF514C52),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    icon: Icon(
                                      Icons.chevron_right,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed(
                                        'About_author',
                                        queryParameters: {
                                          'author': serializeParam(
                                            getJsonField(
                                              FFAppState().conteudoSelecionado,
                                              r'''$.author[0]''',
                                            ),
                                            ParamType.JSON,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
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
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child:
                                                    ComponentRateContentWidget(
                                                  idContent: getJsonField(
                                                    FFAppState()
                                                        .conteudoSelecionado,
                                                    r'''$.id''',
                                                  ).toString(),
                                                  thumbContent: getJsonField(
                                                    FFAppState()
                                                        .conteudoSelecionado,
                                                    r'''$.cover_image''',
                                                  ).toString(),
                                                  nameContent: getJsonField(
                                                    FFAppState()
                                                        .conteudoSelecionado,
                                                    r'''$.title''',
                                                  ).toString(),
                                                  journalContent: getJsonField(
                                                    FFAppState()
                                                        .conteudoSelecionado,
                                                    r'''$.journal''',
                                                  ).toString(),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.star_border_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 12.0,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                getJsonField(
                                                          FFAppState()
                                                              .conteudoSelecionado,
                                                          r'''$.rating''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        FFAppState()
                                                            .conteudoSelecionado,
                                                        r'''$.rating''',
                                                      ).toString()
                                                    : FFLocalizations.of(
                                                            context)
                                                        .getVariableText(
                                                        enText:
                                                            'Rate this audio',
                                                        ptText:
                                                            'Avalie este conteúdo',
                                                      ),
                                                'Rate this audio',
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xFF6A646B),
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ].divide(const SizedBox(width: 10.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (widget.specialties != null &&
                                      (widget.specialties)!.isNotEmpty)
                                    Icon(
                                      Icons.circle,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 4.0,
                                    ),
                                  if (getJsonField(
                                        FFAppState().conteudoSelecionado,
                                        r'''$.specialties''',
                                      ) !=
                                      null)
                                    Builder(
                                      builder: (context) {
                                        final specialty = getJsonField(
                                          FFAppState().conteudoSelecionado,
                                          r'''$.specialties''',
                                        ).toList();

                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:
                                              List.generate(specialty.length,
                                                  (specialtyIndex) {
                                            final specialtyItem =
                                                specialty[specialtyIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 2.0, 12.0, 2.0),
                                                child: Text(
                                                  getJsonField(
                                                    specialtyItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            const Color(0xFF6A646B),
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            );
                                          }).divide(const SizedBox(width: 8.0)),
                                        );
                                      },
                                    ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                      ),
                      Builder(
                        builder: (context) => SizedBox(
                          width: double.infinity,
                          height: 236.0,
                          child: custom_widgets.SimpleAudioPlayerV2(
                            width: double.infinity,
                            height: 236.0,
                            initialIndex: widget.indexSelecionado!,
                            audioUrl: widget.audios!
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.file_audio''',
                                    ))
                                .toList()
                                .cast<String>(),
                            title: widget.audios!
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.title''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            journal: widget.audios!
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.journal''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            coverImage: widget.audios!
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.cover_image''',
                                    ))
                                .toList()
                                .cast<String>(),
                            callbackNotes: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: NotesWidget(
                                          idContent: getJsonField(
                                            widget.audios![
                                                _model.indexSelecionado],
                                            r'''$.id''',
                                          ).toString(),
                                          time: FFAppState().currentDuration,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            callbackShare: () async {
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
                                _model.apiResultGetUrlTrackMoreCopy =
                                    await WfBerearGroup.getTinyUrlTrackCall
                                        .call(
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

                                if ((_model.apiResultGetUrlTrackMoreCopy
                                        ?.succeeded ??
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

                              safeSetState(() {});
                            },
                            callbackAudioFinish: () async {
                              _model.apiResultContentCompleted =
                                  await WfBerearGroup.addContentCompletedCall
                                      .call(
                                idContent: getJsonField(
                                  widget.audios?[_model.indexSelecionado],
                                  r'''$.id''',
                                ).toString(),
                                token: currentAuthenticationToken,
                              );

                              if ((_model
                                      .apiResultContentCompleted?.succeeded ??
                                  true)) {
                                FFAppState().clearQueryUserStreakCache();
                                FFAppState().clearQueryDailyQuestCache();
                                FFAppState().clearQueryUserBadgesCache();
                                FFAppState().clearQueryMoedasDoUsuarioCache();
                                await action_blocks
                                    .clearQueryCacheContent(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'Content completed.',
                                        ptText: 'Conteúdo finalizado.',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    duration: const Duration(milliseconds: 2000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                              _model.timerStudySessionsController.onStopTimer();

                              safeSetState(() {});
                            },
                            callbackNext: () async {
                              if (!((int indexMaisUm, int total) {
                                return indexMaisUm + 1 >= total;
                              }(_model.indexSelecionado,
                                  widget.numberAudios!))) {
                                if (FFAppState().foiParaProximoAudioTrack) {
                                  _model.indexSelecionado =
                                      _model.indexSelecionado + 1;
                                  safeSetState(() {});
                                  FFAppState().auxIndex =
                                      _model.indexSelecionado;
                                  safeSetState(() {});
                                  FFAppState().conteudoSelecionado =
                                      widget.audios![_model.indexSelecionado];
                                  FFAppState().foiParaProximoAudioTrack = false;
                                  safeSetState(() {});
                                  _model.timerStudySessionsController
                                      .onStopTimer();
                                  await WfBerearGroup.addContentCompletedCall
                                      .call(
                                    idContent: getJsonField(
                                      widget
                                          .audios?[_model.indexSelecionado - 1],
                                      r'''$.id''',
                                    ).toString(),
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultContentCompleted
                                          ?.succeeded ??
                                      true)) {
                                    FFAppState().clearQueryUserStreakCache();
                                    FFAppState().clearQueryDailyQuestCache();
                                    FFAppState().clearQueryUserBadgesCache();
                                    FFAppState()
                                        .clearQueryMoedasDoUsuarioCache();
                                    await action_blocks
                                        .clearQueryCacheContent(context);
                                  }
                                  await WfBerearGroup.registerStudySessionCall
                                      .call(
                                    seconds: valueOrDefault<int>(
                                      _model.timerStudySessionsMilliseconds ~/
                                              1000,
                                      0,
                                    ),
                                    idContent: getJsonField(
                                      widget
                                          .audios?[_model.indexSelecionado - 1],
                                      r'''$.id''',
                                    ).toString(),
                                    token: currentAuthenticationToken,
                                  );

                                  _model.apiResultStartedContentInNextAutomatico =
                                      await WfBerearGroup.addStartedContentCall
                                          .call(
                                    idContent: getJsonField(
                                      widget.audios?[_model.indexSelecionado],
                                      r'''$.id''',
                                    ).toString(),
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model
                                          .apiResultStartedContentInNextAutomatico
                                          ?.succeeded ??
                                      true)) {
                                    _model.timerStudySessionsController
                                        .onResetTimer();

                                    _model.timerStudySessionsController
                                        .onStartTimer();
                                  }
                                } else {
                                  _model.indexSelecionado =
                                      _model.indexSelecionado + 1;
                                  safeSetState(() {});
                                  FFAppState().auxIndex =
                                      _model.indexSelecionado;
                                  safeSetState(() {});
                                  FFAppState().conteudoSelecionado =
                                      widget.audios![_model.indexSelecionado];
                                  safeSetState(() {});
                                  _model.timerStudySessionsController
                                      .onStopTimer();
                                  await WfBerearGroup.registerStudySessionCall
                                      .call(
                                    seconds: valueOrDefault<int>(
                                      _model.timerStudySessionsMilliseconds ~/
                                              1000,
                                      0,
                                    ),
                                    idContent: getJsonField(
                                      widget
                                          .audios?[_model.indexSelecionado - 1],
                                      r'''$.id''',
                                    ).toString(),
                                    token: currentAuthenticationToken,
                                  );

                                  _model.apiResultStartedContentInNext =
                                      await WfBerearGroup.addStartedContentCall
                                          .call(
                                    idContent: getJsonField(
                                      widget.audios?[_model.indexSelecionado],
                                      r'''$.id''',
                                    ).toString(),
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultStartedContentInNext
                                          ?.succeeded ??
                                      true)) {
                                    _model.timerStudySessionsController
                                        .onResetTimer();

                                    _model.timerStudySessionsController
                                        .onStartTimer();
                                  }
                                }

                                FFAppState().nextPrevClicado = false;
                                safeSetState(() {});
                              }

                              safeSetState(() {});
                            },
                            callbackPrevious: () async {
                              _model.indexSelecionado =
                                  _model.indexSelecionado + -1;
                              safeSetState(() {});
                              FFAppState().auxIndex = _model.indexSelecionado;
                              safeSetState(() {});
                              FFAppState().conteudoSelecionado =
                                  widget.audios![_model.indexSelecionado];
                              _model.timerStudySessionsController.onStopTimer();
                              await WfBerearGroup.registerStudySessionCall.call(
                                seconds: valueOrDefault<int>(
                                  _model.timerStudySessionsMilliseconds ~/ 1000,
                                  0,
                                ),
                                idContent: (widget
                                        .audios?[_model.indexSelecionado - 1])
                                    ?.toString(),
                                token: currentAuthenticationToken,
                              );

                              _model.apiResultStartedContentInPrev =
                                  await WfBerearGroup.addStartedContentCall
                                      .call(
                                idContent: getJsonField(
                                  widget.audios?[_model.indexSelecionado],
                                  r'''$.id''',
                                ).toString(),
                                token: currentAuthenticationToken,
                              );

                              if ((_model.apiResultStartedContentInPrev
                                      ?.succeeded ??
                                  true)) {
                                _model.timerStudySessionsController
                                    .onResetTimer();

                                _model.timerStudySessionsController
                                    .onStartTimer();
                              }
                              FFAppState().nextPrevClicado = false;
                              safeSetState(() {});

                              safeSetState(() {});
                            },
                            callbackMudouIndex: () async {
                              if (FFAppState().conteudoSelecionado !=
                                  (widget.audios?[FFAppState().auxIndex])) {
                                _model.indexSelecionado = FFAppState().auxIndex;
                                safeSetState(() {});
                                FFAppState().conteudoSelecionado =
                                    widget.audios![FFAppState().auxIndex];
                                safeSetState(() {});
                              }
                            },
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
                                child: GestureDetector(
                                  onTap: () => FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: SeeMoreAboutWidget(
                                      about: getJsonField(
                                        widget
                                            .audios?[widget.indexSelecionado!],
                                        r'''$.about''',
                                      ).toString(),
                                      isContent: true,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEE7ED),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'rul21j4u' /* About this content */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF2B282B),
                                        fontSize: 19.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  getJsonField(
                                    widget.audios![_model.indexSelecionado],
                                    r'''$.about''',
                                  ).toString().maybeHandleOverflow(
                                        maxChars: 200,
                                        replacement: '…',
                                      ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF6A646B),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'tx6zzn7i' /* See more */,
                                    ),
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                      ),
                      if ((String var1) {
                        return var1 != '';
                      }(getJsonField(
                        widget.audios![widget.indexSelecionado!],
                        r'''$.summary''',
                      ).toString()))
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
                                  child: GestureDetector(
                                    onTap: () =>
                                        FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: TranscriptionWidget(
                                        transcription: getJsonField(
                                          widget.audios![
                                              widget.indexSelecionado!],
                                          r'''$.summary''',
                                        ).toString(),
                                        title: getJsonField(
                                          widget.audios![
                                              widget.indexSelecionado!],
                                          r'''$.title''',
                                        ).toString(),
                                        journal: getJsonField(
                                          widget.audios![
                                              widget.indexSelecionado!],
                                          r'''$.journal''',
                                        ).toString(),
                                        idContent: getJsonField(
                                          widget.audios![
                                              widget.indexSelecionado!],
                                          r'''$.id''',
                                        ).toString(),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEE7ED),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'rey4py4s' /* Transcription */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF2B282B),
                                              fontSize: 19.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: const BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              child: Image.asset(
                                                'assets/images/icon-expand.png',
                                                width: 24.0,
                                                height: 24.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    getJsonField(
                                      widget.audios![_model.indexSelecionado],
                                      r'''$.summary''',
                                    ).toString().maybeHandleOverflow(
                                          maxChars: 200,
                                          replacement: '…',
                                        ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF6A646B),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      FlutterFlowTimer(
                        initialTime: _model.timerStudySessionsInitialTimeMs,
                        getDisplayTime: (value) =>
                            StopWatchTimer.getDisplayTime(
                          value,
                          hours: false,
                          minute: false,
                          milliSecond: false,
                        ),
                        controller: _model.timerStudySessionsController,
                        updateStateInterval: const Duration(milliseconds: 1000),
                        onChanged: (value, displayTime, shouldUpdate) {
                          _model.timerStudySessionsMilliseconds = value;
                          _model.timerStudySessionsValue = displayTime;
                          if (shouldUpdate) safeSetState(() {});
                        },
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 1.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ].divide(const SizedBox(height: 24.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
