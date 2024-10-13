import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tracks/components/more_settings_audio/more_settings_audio_widget.dart';
import '/tracks/components/see_more_about/see_more_about_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'inside_content_buy_model.dart';
export 'inside_content_buy_model.dart';

class InsideContentBuyWidget extends StatefulWidget {
  const InsideContentBuyWidget({
    super.key,
    required this.content,
    required this.typeContent,
  });

  final dynamic content;
  final TypeContent? typeContent;

  @override
  State<InsideContentBuyWidget> createState() => _InsideContentBuyWidgetState();
}

class _InsideContentBuyWidgetState extends State<InsideContentBuyWidget> {
  late InsideContentBuyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideContentBuyModel());
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
        final insideContentBuyGetContentByIdResponse = snapshot.data!;

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
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: wrapWithModel(
                                  model: _model.componentVoltarBaixoModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ComponentVoltarBaixoWidget(
                                    customAction: () async {},
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
                                                    ocultarRateContent: true,
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
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                              insideContentBuyGetContentByIdResponse
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
                                          insideContentBuyGetContentByIdResponse
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
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
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
                                          context.pushNamed('About_author');
                                        },
                                      ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
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
                                                getJsonField(
                                                          widget.content,
                                                          r'''$.rating''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        widget.content,
                                                        r'''$.rating''',
                                                      ).toString()
                                                    : 'Rate this audio',
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
                                    if ((String var1) {
                                      return var1 != null;
                                    }(getJsonField(
                                      WfBerearGroup.getContentByIdCall.content(
                                        insideContentBuyGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.specialties[0].name''',
                                    ).toString()))
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
                                        insideContentBuyGetContentByIdResponse
                                            .jsonBody,
                                      ),
                                      r'''$.specialties[0].name''',
                                    ).toString()))
                                      Builder(
                                        builder: (context) {
                                          final specialty = getJsonField(
                                            WfBerearGroup.getContentByIdCall
                                                .content(
                                              insideContentBuyGetContentByIdResponse
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
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Available_plans');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(56.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 16.0, 24.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Crown_(1).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'r4qxf61r' /* Be Premium */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 19.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
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
                                    child: GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: SeeMoreAboutWidget(
                                          about: getJsonField(
                                            WfBerearGroup.getContentByIdCall
                                                .content(
                                              insideContentBuyGetContentByIdResponse
                                                  .jsonBody,
                                            ),
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
                                          'iy196syo' /* Batista S, Saldanha A - Neuros... */,
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          WfBerearGroup.getContentByIdCall
                                              .content(
                                            insideContentBuyGetContentByIdResponse
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
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '3rgzmh7v' /* See more */,
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
