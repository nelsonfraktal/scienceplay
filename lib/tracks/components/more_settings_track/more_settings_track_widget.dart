import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/tracks/components/rate_track/rate_track_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'more_settings_track_model.dart';
export 'more_settings_track_model.dart';

class MoreSettingsTrackWidget extends StatefulWidget {
  const MoreSettingsTrackWidget({
    super.key,
    required this.track,
    bool? ocultarRateTrack,
  }) : ocultarRateTrack = ocultarRateTrack ?? false;

  final dynamic track;
  final bool ocultarRateTrack;

  @override
  State<MoreSettingsTrackWidget> createState() =>
      _MoreSettingsTrackWidgetState();
}

class _MoreSettingsTrackWidgetState extends State<MoreSettingsTrackWidget> {
  late MoreSettingsTrackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreSettingsTrackModel());
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
                        if (!(getJsonField(
                          widget.track,
                          r'''$.tinyUrl''',
                        ).toString().isEmpty)) {
                          await Clipboard.setData(ClipboardData(
                              text: getJsonField(
                            widget.track,
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
                              widget.track,
                              r'''$.id_track''',
                            ).toString()}',
                            idTrack: getJsonField(
                              widget.track,
                              r'''$.id_track''',
                            ).toString(),
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultGetUrlTrack?.succeeded ??
                              true)) {
                            await actions.setStringValueInJson(
                              FFAppState().conteudoSelecionado,
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
                                  's4c9z7ai' /* Copy link */,
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
                    Container(
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
                                'ew7ut33x' /* X */,
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
                    Container(
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
                              child: Image.network(
                                'https://seeklogo.com/images/F/facebook-icon-circle-logo-09F32F61FF-seeklogo.com.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'vc7c011h' /* Facebook */,
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
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (!(getJsonField(
                            widget.track,
                            r'''$.tinyUrl''',
                          ).toString().isEmpty)) {
                            await Share.share(
                              getJsonField(
                                widget.track,
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
                                widget.track,
                                r'''$.id_track''',
                              ).toString()}',
                              idTrack: getJsonField(
                                widget.track,
                                r'''$.id_track''',
                              ).toString(),
                              token: currentAuthenticationToken,
                            );

                            if ((_model.apiResultGetUrlTrackMore?.succeeded ??
                                true)) {
                              await actions.setStringValueInJson(
                                FFAppState().conteudoSelecionado,
                                'tinyUrl',
                                getJsonField(
                                  (_model.apiResultGetUrlTrack?.jsonBody ?? ''),
                                  r'''$.url''',
                                ).toString(),
                              );
                              await Share.share(
                                getJsonField(
                                  (_model.apiResultGetUrlTrackMore?.jsonBody ??
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
                                    'm6frmxtz' /* More */,
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
                      widget.track,
                      r'''$.myTrack''',
                    )) {
                      _model.apiResultRemoveFavoritedTrack =
                          await WfBerearGroup.removeFavoriteTrackCall.call(
                        trackId: getJsonField(
                          widget.track,
                          r'''$.id_track''',
                        ).toString(),
                        token: currentAuthenticationToken,
                      );

                      if ((_model.apiResultRemoveFavoritedTrack?.succeeded ??
                          true)) {
                        await actions.setBoolValueInJson(
                          widget.track!,
                          'myTrack',
                          false,
                        );
                        FFAppState().clearQueryGetMyTracksCache();
                        FFAppState().clearQueryGetRecommendedTracksCache();
                        FFAppState().clearQueryGetPurchasedTracksCache();
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Removed from My Tracks.',
                                ptText: 'Removida de Minhas Playlists.',
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
                    } else {
                      _model.apiResultAddFavoriteTrack =
                          await WfBerearGroup.addFavoriteTrackCall.call(
                        trackId: getJsonField(
                          widget.track,
                          r'''$.id_track''',
                        ).toString(),
                        token: currentAuthenticationToken,
                      );

                      if ((_model.apiResultAddFavoriteTrack?.succeeded ??
                          true)) {
                        await actions.setBoolValueInJson(
                          widget.track!,
                          'myTrack',
                          true,
                        );
                        FFAppState().clearQueryGetMyTracksCache();
                        FFAppState().clearQueryGetRecommendedTracksCache();
                        FFAppState().clearQueryGetPurchasedTracksCache();
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Added to My Tracks.',
                                ptText: 'Adicionada em Minhas Playlists.',
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
                            Icons.play_circle_outline_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          if (getJsonField(
                            widget.track,
                            r'''$.myTrack''',
                          ))
                            Text(
                              FFLocalizations.of(context).getText(
                                '1vet5s25' /* Remove from My Tracks */,
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
                            widget.track,
                            r'''$.myTrack''',
                          ))
                            Text(
                              FFLocalizations.of(context).getText(
                                'hn6xdmfr' /* Add to My Tracks */,
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
                if (!widget.ocultarRateTrack)
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
                              child: RateTrackWidget(
                                track: widget.track!,
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
                                '0inehgob' /* Rate this track */,
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
                              'cegvww63' /* Go to author profile */,
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
                              (_model.apiResultGetUrlTrackMoreCopy?.jsonBody ??
                                  ''),
                              r'''$.url''',
                            ).toString(),
                          );
                          await Share.share(
                            getJsonField(
                              (_model.apiResultGetUrlTrackMoreCopy?.jsonBody ??
                                  ''),
                              r'''$.url''',
                            ).toString(),
                            sharePositionOrigin: getWidgetBoundingBox(context),
                          );
                        } else {
                          await Share.share(
                            FFLocalizations.of(context).getVariableText(
                              enText:
                                  'Try the Science Play app now: https://www.scienceplay.app/',
                              ptText:
                                  'Conheça o app da Science Play: https://www.scienceplay.app/',
                            ),
                            sharePositionOrigin: getWidgetBoundingBox(context),
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
                            Icon(
                              Icons.share_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'ae6wzu2n' /* Share */,
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
                              '0jjakb93' /* Report */,
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
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
