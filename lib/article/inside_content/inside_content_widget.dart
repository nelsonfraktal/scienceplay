import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/components/component_rate_content_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/tracks/components/more_settings_audio/more_settings_audio_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'inside_content_model.dart';
export 'inside_content_model.dart';

class InsideContentWidget extends StatefulWidget {
  const InsideContentWidget({
    super.key,
    required this.content,
    required this.typeContent,
  });

  final dynamic content;
  final TypeContent? typeContent;

  @override
  State<InsideContentWidget> createState() => _InsideContentWidgetState();
}

class _InsideContentWidgetState extends State<InsideContentWidget> {
  late InsideContentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideContentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: WfBerearGroup.getContentByIdCall.call(
        idContent: getJsonField(
          widget.content,
          r'''$.id''',
        ).toString(),
        token: currentAuthenticationToken,
        language: currentUserData?.linguagemPreferida,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 30.0,
                height: 30.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final insideContentGetContentByIdResponse = snapshot.data!;

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
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 24.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              wrapWithModel(
                                model: _model.componentVoltarModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const ComponentVoltarWidget(),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (getJsonField(
                                    FFAppState().conteudoSelecionado,
                                    r'''$.favorited''',
                                  ))
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, -1.0),
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
                                              widget.content,
                                              r'''$.id''',
                                            ).toString(),
                                            token: currentAuthenticationToken,
                                          );

                                          if ((_model
                                                  .apiResultRemoveFavoriteContent
                                                  ?.succeeded ??
                                              true)) {
                                            await actions.setBoolValueInJson(
                                              FFAppState().conteudoSelecionado,
                                              'favorited',
                                              false,
                                            );
                                            await action_blocks
                                                .clearQueryCacheContent(
                                                    context);
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
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
                                      alignment:
                                          const AlignmentDirectional(-1.0, -1.0),
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
                                              widget.content,
                                              r'''$.id''',
                                            ).toString(),
                                            token: currentAuthenticationToken,
                                          );

                                          if ((_model
                                                  .apiResultAddFavoriteContent
                                                  ?.succeeded ??
                                              true)) {
                                            await actions.setBoolValueInJson(
                                              FFAppState().conteudoSelecionado,
                                              'favorited',
                                              true,
                                            );
                                            await action_blocks
                                                .clearQueryCacheContent(
                                                    context);
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 4000),
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
                                        Icons.keyboard_control,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().clipboard =
                                            'scienceplayapp://scienceplayapp.com${GoRouterState.of(context).uri.toString()}';
                                        safeSetState(() {});
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
                                                      MoreSettingsAudioWidget(
                                                    id: getJsonField(
                                                      widget.content,
                                                      r'''$.id''',
                                                    ).toString(),
                                                    thumb: getJsonField(
                                                      widget.content,
                                                      r'''$.cover_image''',
                                                    ).toString(),
                                                    title: getJsonField(
                                                      widget.content,
                                                      r'''$.title''',
                                                    ).toString(),
                                                    journal: getJsonField(
                                                      widget.content,
                                                      r'''$.journal''',
                                                    ).toString(),
                                                    urlShare: getJsonField(
                                                      widget.content,
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                getJsonField(
                                  widget.content,
                                  r'''$.cover_image''',
                                ).toString(),
                                width: MediaQuery.sizeOf(context).width * 0.8,
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
                                    widget.content,
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
                                    widget.content,
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
                                if (WfBerearGroup.getContentByIdCall.writers(
                                          insideContentGetContentByIdResponse
                                              .jsonBody,
                                        ) !=
                                        null &&
                                    (WfBerearGroup.getContentByIdCall.writers(
                                      insideContentGetContentByIdResponse
                                          .jsonBody,
                                    ))!
                                        .isNotEmpty)
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if ((String var1) {
                                        return var1.contains('empty:');
                                      }(valueOrDefault<String>(
                                        getJsonField(
                                          WfBerearGroup.getContentByIdCall
                                              .content(
                                            insideContentGetContentByIdResponse
                                                .jsonBody,
                                          ),
                                          r'''$.writers[0].photo''',
                                        )?.toString(),
                                        'https://8fc8919f323c3ba50ed44a35ad787df6.cdn.bubble.io/f1716558614573x832312925347787000/account_circle_48dp.png?_gl=1*cdm9gw*_gcl_au*MjA4MTAwMDE2MC4xNzE3NDEwMDU4*_ga*MTU3ODcyMjkzMi4xNzE3NDEwMDU4*_ga_BFPVR2DEE2*MTcyMzgxMjk2MC41Ny4xLjE3MjM4MTkxMTcuNTQuMC4w',
                                      )))
                                        Container(
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
                                              }(valueOrDefault<String>(
                                                getJsonField(
                                                  WfBerearGroup
                                                      .getContentByIdCall
                                                      .content(
                                                    insideContentGetContentByIdResponse
                                                        .jsonBody,
                                                  ),
                                                  r'''$.writers[0].photo''',
                                                )?.toString(),
                                                'https://8fc8919f323c3ba50ed44a35ad787df6.cdn.bubble.io/f1716558614573x832312925347787000/account_circle_48dp.png?_gl=1*cdm9gw*_gcl_au*MjA4MTAwMDE2MC4xNzE3NDEwMDU4*_ga*MTU3ODcyMjkzMi4xNzE3NDEwMDU4*_ga_BFPVR2DEE2*MTcyMzgxMjk2MC41Ny4xLjE3MjM4MTkxMTcuNTQuMC4w',
                                              )),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                      if (!((String var1) {
                                        return var1.contains('empty:');
                                      }(valueOrDefault<String>(
                                        getJsonField(
                                          WfBerearGroup.getContentByIdCall
                                              .content(
                                            insideContentGetContentByIdResponse
                                                .jsonBody,
                                          ),
                                          r'''$.writers[0].photo''',
                                        )?.toString(),
                                        'https://8fc8919f323c3ba50ed44a35ad787df6.cdn.bubble.io/f1716558614573x832312925347787000/account_circle_48dp.png?_gl=1*cdm9gw*_gcl_au*MjA4MTAwMDE2MC4xNzE3NDEwMDU4*_ga*MTU3ODcyMjkzMi4xNzE3NDEwMDU4*_ga_BFPVR2DEE2*MTcyMzgxMjk2MC41Ny4xLjE3MjM4MTkxMTcuNTQuMC4w',
                                      ))))
                                        Container(
                                          width: 24.0,
                                          height: 24.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              getJsonField(
                                                WfBerearGroup.getContentByIdCall
                                                    .content(
                                                  insideContentGetContentByIdResponse
                                                      .jsonBody,
                                                ),
                                                r'''$.writers[0].photo''',
                                              )?.toString(),
                                              'https://8fc8919f323c3ba50ed44a35ad787df6.cdn.bubble.io/f1716558614573x832312925347787000/account_circle_48dp.png?_gl=1*cdm9gw*_gcl_au*MjA4MTAwMDE2MC4xNzE3NDEwMDU4*_ga*MTU3ODcyMjkzMi4xNzE3NDEwMDU4*_ga_BFPVR2DEE2*MTcyMzgxMjk2MC41Ny4xLjE3MjM4MTkxMTcuNTQuMC4w',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      Text(
                                        '${FFLocalizations.of(context).getVariableText(
                                          enText: 'Written by ',
                                          ptText: 'Escrito por ',
                                        )}${getJsonField(
                                          WfBerearGroup.getContentByIdCall
                                              .content(
                                            insideContentGetContentByIdResponse
                                                .jsonBody,
                                          ),
                                          r'''$.writers[0].name''',
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
                                                  WfBerearGroup
                                                      .getContentByIdCall
                                                      .content(
                                                    insideContentGetContentByIdResponse
                                                        .jsonBody,
                                                  ),
                                                  r'''$.writers[0]''',
                                                ),
                                                ParamType.JSON,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (getJsonField(
                                          widget.content,
                                          r'''$.rating''',
                                        ) !=
                                        null)
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
                                                        widget.content,
                                                        r'''$.id''',
                                                      ).toString(),
                                                      thumbContent:
                                                          getJsonField(
                                                        widget.content,
                                                        r'''$.cover_image''',
                                                      ).toString(),
                                                      nameContent: getJsonField(
                                                        widget.content,
                                                        r'''$.title''',
                                                      ).toString(),
                                                      journalContent:
                                                          getJsonField(
                                                        widget.content,
                                                        r'''$.journal''',
                                                      ).toString(),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
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
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 4.0, 12.0, 4.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.star_border_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 12.0,
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    getJsonField(
                                                              widget.content,
                                                              r'''$.rating''',
                                                            ) !=
                                                            null
                                                        ? getJsonField(
                                                            widget.content,
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                    if (getJsonField(
                                          widget.content,
                                          r'''$.specialties''',
                                        ) !=
                                        null)
                                      Icon(
                                        Icons.circle,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 4.0,
                                      ),
                                    if ((String var1) {
                                      return var1 != null;
                                    }(getJsonField(
                                      WfBerearGroup.getContentByIdCall.content(
                                        insideContentGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.specialties[0].name''',
                                    ).toString()))
                                      Builder(
                                        builder: (context) {
                                          final specialty = getJsonField(
                                            WfBerearGroup.getContentByIdCall
                                                .content(
                                              insideContentGetContentByIdResponse
                                                  .jsonBody,
                                            ),
                                            r'''$.specialties''',
                                          ).toList();

                                          return SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  specialty.length,
                                                  (specialtyIndex) {
                                                final specialtyItem =
                                                    specialty[specialtyIndex];
                                                return Visibility(
                                                  visible:
                                                      specialtyItem != null,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 25.0,
                                                          color:
                                                              Color(0x0D000000),
                                                          offset: Offset(
                                                            0.0,
                                                            0.0,
                                                          ),
                                                          spreadRadius: 0.0,
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24.0),
                                                      shape: BoxShape.rectangle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  4.0,
                                                                  12.0,
                                                                  4.0),
                                                      child: Text(
                                                        getJsonField(
                                                          specialtyItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodySmall
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: const Color(
                                                                  0xFF6A646B),
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }).divide(
                                                const SizedBox(width: 8.0),
                                                filterFn: (specialtyIndex) {
                                                  final specialtyItem =
                                                      specialty[specialtyIndex];
                                                  return specialtyItem != null;
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if ((widget.typeContent ==
                                        TypeContent.Article) ||
                                    (widget.typeContent == TypeContent.Book))
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'Inside_file',
                                        queryParameters: {
                                          'title': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.english_title''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'summary': serializeParam(
                                            getJsonField(
                                              WfBerearGroup.getContentByIdCall
                                                  .content(
                                                insideContentGetContentByIdResponse
                                                    .jsonBody,
                                              ),
                                              r'''$.english_summary''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '39ul4322' /* Start */,
                                    ),
                                    icon: const Icon(
                                      Icons.article_outlined,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 162.0,
                                      height: 56.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 16.0, 24.0, 16.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF7A3080),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 19.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(56.0),
                                    ),
                                  ),
                                if (widget.typeContent == TypeContent.Audio)
                                  FFButtonWidget(
                                    onPressed: () async {
                                      FFAppState().clipboard =
                                          'scienceplayapp://scienceplayapp.com${GoRouterState.of(context).uri.toString()}';
                                      safeSetState(() {});

                                      context.pushNamed(
                                        'Inside_audio_simple',
                                        queryParameters: {
                                          'hasNext': serializeParam(
                                            false,
                                            ParamType.bool,
                                          ),
                                          'summary': serializeParam(
                                            getJsonField(
                                              WfBerearGroup.getContentByIdCall
                                                  .content(
                                                insideContentGetContentByIdResponse
                                                    .jsonBody,
                                              ),
                                              r'''$.summary''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'about': serializeParam(
                                            getJsonField(
                                              WfBerearGroup.getContentByIdCall
                                                  .content(
                                                insideContentGetContentByIdResponse
                                                    .jsonBody,
                                              ),
                                              r'''$.about''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'audio': serializeParam(
                                            getJsonField(
                                              WfBerearGroup.getContentByIdCall
                                                  .content(
                                                insideContentGetContentByIdResponse
                                                    .jsonBody,
                                              ),
                                              r'''$.audio''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'writers': serializeParam(
                                            getJsonField(
                                              WfBerearGroup.getContentByIdCall
                                                  .content(
                                                insideContentGetContentByIdResponse
                                                    .jsonBody,
                                              ),
                                              r'''$.writers''',
                                              true,
                                            ),
                                            ParamType.JSON,
                                            isList: true,
                                          ),
                                          'specialties': serializeParam(
                                            getJsonField(
                                              WfBerearGroup.getContentByIdCall
                                                  .content(
                                                insideContentGetContentByIdResponse
                                                    .jsonBody,
                                              ),
                                              r'''$.specialties''',
                                              true,
                                            ),
                                            ParamType.JSON,
                                            isList: true,
                                          ),
                                          'id': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.id''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'title': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.title''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'journal': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.journal''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'coverImage': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.cover_image''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'rating': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.rating''',
                                            ),
                                            ParamType.double,
                                          ),
                                          'year': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.year''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'favorited': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.favorited''',
                                            ),
                                            ParamType.bool,
                                          ),
                                          'timeAudioSeconds': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.timeAudioSeconds''',
                                            ),
                                            ParamType.int,
                                          ),
                                          'credits': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.credits''',
                                            ),
                                            ParamType.int,
                                          ),
                                          'isFree': serializeParam(
                                            getJsonField(
                                              widget.content,
                                              r'''$.isFree''',
                                            ),
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'Start',
                                      ptText: 'Começar',
                                    ),
                                    icon: const Icon(
                                      Icons.play_circle_rounded,
                                      size: 24.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 162.0,
                                      height: 56.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 16.0, 24.0, 16.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF7A3080),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 19.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(56.0),
                                    ),
                                  ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'Inside_audio_simple',
                                queryParameters: {
                                  'hasNext': serializeParam(
                                    false,
                                    ParamType.bool,
                                  ),
                                  'summary': serializeParam(
                                    getJsonField(
                                      WfBerearGroup.getContentByIdCall.content(
                                        insideContentGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.summary''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'about': serializeParam(
                                    getJsonField(
                                      WfBerearGroup.getContentByIdCall.content(
                                        insideContentGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.about''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'audio': serializeParam(
                                    getJsonField(
                                      WfBerearGroup.getContentByIdCall.content(
                                        insideContentGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.audio''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'writers': serializeParam(
                                    getJsonField(
                                      WfBerearGroup.getContentByIdCall.content(
                                        insideContentGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.writers''',
                                      true,
                                    ),
                                    ParamType.JSON,
                                    isList: true,
                                  ),
                                  'specialties': serializeParam(
                                    getJsonField(
                                      WfBerearGroup.getContentByIdCall.content(
                                        insideContentGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.specialties''',
                                      true,
                                    ),
                                    ParamType.JSON,
                                    isList: true,
                                  ),
                                  'id': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.id''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'title': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.title''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'journal': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.journal''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'coverImage': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.cover_image''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'rating': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.rating''',
                                    ),
                                    ParamType.double,
                                  ),
                                  'year': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.year''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'favorited': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.favorited''',
                                    ),
                                    ParamType.bool,
                                  ),
                                  'timeAudioSeconds': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.timeAudioSeconds''',
                                    ),
                                    ParamType.int,
                                  ),
                                  'credits': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.credits''',
                                    ),
                                    ParamType.int,
                                  ),
                                  'isFree': serializeParam(
                                    getJsonField(
                                      widget.content,
                                      r'''$.isFree''',
                                    ),
                                    ParamType.bool,
                                  ),
                                }.withoutNulls,
                              );
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
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'About this content',
                                        ptText: 'Sobre este conteúdo',
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
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '53pqkj00' /* Batista S, Saldanha A - Neuros... */,
                                        ),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF6A646B),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    if (getJsonField(
                                          WfBerearGroup.getContentByIdCall
                                              .content(
                                            insideContentGetContentByIdResponse
                                                .jsonBody,
                                          ),
                                          r'''$.about''',
                                        ) !=
                                        null)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            WfBerearGroup.getContentByIdCall
                                                .content(
                                              insideContentGetContentByIdResponse
                                                  .jsonBody,
                                            ),
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
                                                color: const Color(0xFF514C52),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    if (getJsonField(
                                          WfBerearGroup.getContentByIdCall
                                              .content(
                                            insideContentGetContentByIdResponse
                                                .jsonBody,
                                          ),
                                          r'''$.about''',
                                        ) ==
                                        null)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                                enText:
                                                    'Failed to load this information.',
                                                ptText:
                                                    'Falha ao carregar essa informação.',
                                              )
                                              .maybeHandleOverflow(
                                                maxChars: 200,
                                                replacement: '…',
                                              ),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFF514C52),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '3fbh8885' /* Go to content */,
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
                        ].divide(const SizedBox(height: 24.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
