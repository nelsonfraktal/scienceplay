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
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'inside_audio_simple_model.dart';
export 'inside_audio_simple_model.dart';

class InsideAudioSimpleWidget extends StatefulWidget {
  const InsideAudioSimpleWidget({
    super.key,
    bool? hasNext,
    required this.summary,
    required this.about,
    required this.audio,
    required this.writers,
    required this.specialties,
    required this.id,
    required this.title,
    required this.journal,
    required this.coverImage,
    required this.rating,
    required this.year,
    required this.favorited,
    required this.timeAudioSeconds,
    required this.credits,
    required this.isFree,
  }) : hasNext = hasNext ?? false;

  final bool hasNext;
  final String? summary;
  final String? about;
  final String? audio;
  final List<dynamic>? writers;
  final List<dynamic>? specialties;
  final String? id;
  final String? title;
  final String? journal;
  final String? coverImage;
  final double? rating;
  final String? year;
  final bool? favorited;
  final int? timeAudioSeconds;
  final int? credits;
  final bool? isFree;

  @override
  State<InsideAudioSimpleWidget> createState() =>
      _InsideAudioSimpleWidgetState();
}

class _InsideAudioSimpleWidgetState extends State<InsideAudioSimpleWidget> {
  late InsideAudioSimpleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideAudioSimpleModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!widget.isFree! && currentUserData!.isFree) {
        context.pushNamed('For_you');
      } else {
        _model.apiResultAddStartedContent =
            await WfBerearGroup.addStartedContentCall.call(
          token: currentAuthenticationToken,
          idContent: widget.id,
        );

        if ((_model.apiResultAddStartedContent?.succeeded ?? true)) {
          _model.timerStudySessionsController.onStartTimer();
        }
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
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.apiResultRegisterStudySession =
                              await WfBerearGroup.registerStudySessionCall.call(
                            seconds: valueOrDefault<int>(
                              _model.timerStudySessionsMilliseconds ~/ 1000,
                              0,
                            ),
                            idContent: widget.id,
                            token: currentAuthenticationToken,
                          );

                          if ((_model
                                  .apiResultRegisterStudySession?.succeeded ??
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
                            FFAppState().conteudoSelecionado,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  _model.apiResultRemoveFavoriteContent =
                                      await WfBerearGroup
                                          .removeFavoriteContentCall
                                          .call(
                                    contentId: widget.id,
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultRemoveFavoriteContent
                                          ?.succeeded ??
                                      true)) {
                                    await actions.setBoolValueInJson(
                                      FFAppState().conteudoSelecionado,
                                      'favorited',
                                      false,
                                    );
                                    await action_blocks
                                        .clearQueryCacheContent(context);
                                    safeSetState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            enText:
                                                'Content removed from favorites.',
                                            ptText:
                                                'Conteúdo removido dos favoritos.',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            enText:
                                                'Something is wrong, try again.',
                                            ptText:
                                                'Algo deu errado, tente novamente.',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
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
                            FFAppState().conteudoSelecionado,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  _model.apiResultAddFavoriteContent =
                                      await WfBerearGroup.addFavoriteContentCall
                                          .call(
                                    contentId: widget.id,
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultAddFavoriteContent
                                          ?.succeeded ??
                                      true)) {
                                    await actions.setBoolValueInJson(
                                      FFAppState().conteudoSelecionado,
                                      'favorited',
                                      true,
                                    );
                                    await action_blocks
                                        .clearQueryCacheContent(context);
                                    safeSetState(() {});
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            enText:
                                                'Content added to favorites.',
                                            ptText:
                                                'Conteúdo adicionado aos favoritos.',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            enText:
                                                'Something is wrong, try again.',
                                            ptText:
                                                'Algo deu errado, tente novamente.',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
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
                                Icons.keyboard_control_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                FFAppState().clipboard =
                                    'scienceplayapp://scienceplayapp.com${GoRouterState.of(context).uri.toString()}';
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
                                          child: MoreSettingsAudioWidget(
                                            id: widget.id!,
                                            thumb: widget.coverImage!,
                                            title: widget.title!,
                                            journal: widget.journal!,
                                            urlShare: getJsonField(
                                              FFAppState().conteudoSelecionado,
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
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            widget.coverImage!,
                            width: 282.0,
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
                              valueOrDefault<String>(
                                widget.title,
                                'Título',
                              ),
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
                              valueOrDefault<String>(
                                widget.journal,
                                'Journal',
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            if (widget.writers != null &&
                                (widget.writers)!.isNotEmpty)
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if ((String var1) {
                                    return var1.contains('empty:');
                                  }(getJsonField(
                                    widget.writers!.first,
                                    r'''$.photo''',
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
                                              widget.writers!.first,
                                              r'''$.photo''',
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
                                    widget.writers!.first,
                                    r'''$.photo''',
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
                                            widget.writers!.first,
                                            r'''$.photo''',
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
                                      widget.writers?.first,
                                      r'''$.name''',
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
                                            widget.writers?.first,
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
                                                  idContent: widget.id!,
                                                  thumbContent:
                                                      widget.coverImage!,
                                                  nameContent: widget.title,
                                                  journalContent:
                                                      widget.journal!,
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
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 25.0,
                                            color: Color(0x0D000000),
                                            offset: Offset(
                                              0.0,
                                              0.0,
                                            ),
                                            spreadRadius: 0.0,
                                          )
                                        ],
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
                                                widget.rating != null
                                                    ? widget.rating?.toString()
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
                                        widget.specialties?.first,
                                        r'''$.name''',
                                      ) !=
                                      null)
                                    Builder(
                                      builder: (context) {
                                        final specialties =
                                            widget.specialties!.toList();

                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children:
                                              List.generate(specialties.length,
                                                  (specialtiesIndex) {
                                            final specialtiesItem =
                                                specialties[specialtiesIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 25.0,
                                                    color: Color(0x0D000000),
                                                    offset: Offset(
                                                      0.0,
                                                      0.0,
                                                    ),
                                                    spreadRadius: 0.0,
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 2.0, 12.0, 2.0),
                                                child: Text(
                                                  getJsonField(
                                                    specialtiesItem,
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
                          child: custom_widgets.SimpleAudioPlayer(
                            width: double.infinity,
                            height: 236.0,
                            audioUrl: widget.audio!,
                            title: widget.title!,
                            journal: widget.journal!,
                            coverImage: widget.coverImage!,
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
                                          idContent: widget.id!,
                                          time: FFAppState().currentDuration,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            callbackShare: () async {
                              if (FFAppState().trackSendoTocada) {
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

                                  if ((_model.apiResultGetUrlTrackMore
                                          ?.succeeded ??
                                      true)) {
                                    await actions.setStringValueInJson(
                                      FFAppState().playlistSelecionada,
                                      'tinyUrl',
                                      getJsonField(
                                        (_model.apiResultGetUrlTrackMore
                                                ?.jsonBody ??
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
                                    await Share.share(
                                      FFLocalizations.of(context)
                                          .getVariableText(
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
                                  FFAppState().conteudoSelecionado,
                                  r'''$.tinyUrl''',
                                ).toString().isEmpty)) {
                                  await Share.share(
                                    getJsonField(
                                      FFAppState().conteudoSelecionado,
                                      r'''$.tinyUrl''',
                                    ).toString(),
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
                                        (_model.apiResultGetUrlShare
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.url''',
                                      ).toString(),
                                    );
                                    await Share.share(
                                      getJsonField(
                                        (_model.apiResultGetUrlShare
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.url''',
                                      ).toString(),
                                      sharePositionOrigin:
                                          getWidgetBoundingBox(context),
                                    );
                                  } else {
                                    await Share.share(
                                      FFLocalizations.of(context)
                                          .getVariableText(
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
                            callbackAudioFinish: () async {
                              _model.apiResultContentCompleted =
                                  await WfBerearGroup.addContentCompletedCall
                                      .call(
                                idContent: widget.id,
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
                                    duration: const Duration(milliseconds: 3000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                              _model.timerStudySessionsController.onStopTimer();

                              safeSetState(() {});
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
                                      about: widget.about,
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
                                    '8rypitpu' /* About this content */,
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
                                  valueOrDefault<String>(
                                    widget.about,
                                    '...',
                                  ).maybeHandleOverflow(
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
                                      'fx0238ut' /* See more */,
                                    ),
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF7A3080),
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
                      }(widget.summary!))
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
                                        transcription: widget.summary!,
                                        title: widget.title!,
                                        journal: widget.journal!,
                                        idContent: widget.id!,
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
                                          'ht4dj3ug' /* Transcription */,
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
                                    valueOrDefault<String>(
                                      widget.summary,
                                      '...',
                                    ).maybeHandleOverflow(
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
              ].addToStart(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
