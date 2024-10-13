import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'rate_track_model.dart';
export 'rate_track_model.dart';

class RateTrackWidget extends StatefulWidget {
  const RateTrackWidget({
    super.key,
    required this.track,
  });

  final dynamic track;

  @override
  State<RateTrackWidget> createState() => _RateTrackWidgetState();
}

class _RateTrackWidgetState extends State<RateTrackWidget> {
  late RateTrackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateTrackModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: WfBerearGroup.getUserRatingTrackCall.call(
        idTrack: getJsonField(
          widget.track,
          r'''$.id_track''',
        ).toString(),
        token: currentAuthenticationToken,
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
        final containerGetUserRatingTrackResponse = snapshot.data!;

        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.componentVoltarBaixoModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ComponentVoltarBaixoWidget(
                          customAction: () async {},
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'f3kg7nle' /* Rate content */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: const BoxDecoration(),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'pu6lg6d8' /* How would you rate this conten... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF514C52),
                              letterSpacing: 0.0,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              functions.containsHttps(getJsonField(
                                widget.track,
                                r'''$.image''',
                              ).toString())
                                  ? getJsonField(
                                      widget.track,
                                      r'''$.image''',
                                    ).toString()
                                  : 'https:${getJsonField(
                                      widget.track,
                                      r'''$.image''',
                                    ).toString()}',
                              width: 152.0,
                              height: 135.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  getJsonField(
                                    widget.track,
                                    r'''$.title_track''',
                                  ).toString(),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF2B282B),
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        getJsonField(
                                          widget.track,
                                          r'''$.create_track''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF6A646B),
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.circle,
                                      color: Color(0xFF6A646B),
                                      size: 5.0,
                                    ),
                                    Flexible(
                                      child: Text(
                                        functions.secondsToTimeV2(getJsonField(
                                          widget.track,
                                          r'''$.segundos''',
                                        )),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF6A646B),
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    if (getJsonField(
                                          widget.track,
                                          r'''$.rating''',
                                        ) !=
                                        null)
                                      const Icon(
                                        Icons.circle,
                                        color: Color(0xFF6A646B),
                                        size: 5.0,
                                      ),
                                    if (getJsonField(
                                          widget.track,
                                          r'''$.rating''',
                                        ) !=
                                        null)
                                      Flexible(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Color(0xFFFFB45E),
                                              size: 12.0,
                                            ),
                                            Flexible(
                                              child: Text(
                                                getJsonField(
                                                  widget.track,
                                                  r'''$.rating''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                          ].divide(const SizedBox(width: 2.0)),
                                        ),
                                      ),
                                  ].divide(const SizedBox(width: 4.0)),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ].divide(const SizedBox(width: 16.0)),
                      ),
                      RatingBar.builder(
                        onRatingUpdate: (newValue) => safeSetState(
                            () => _model.ratingBarValue = newValue),
                        itemBuilder: (context, index) => const Icon(
                          Icons.star_rounded,
                          color: Color(0xFFF4B76D),
                        ),
                        direction: Axis.horizontal,
                        initialRating: _model.ratingBarValue ??= WfBerearGroup
                                    .getUserRatingTrackCall
                                    .rate(
                                  containerGetUserRatingTrackResponse.jsonBody,
                                ) !=
                                null
                            ? WfBerearGroup.getUserRatingTrackCall.rate(
                                containerGetUserRatingTrackResponse.jsonBody,
                              )!
                            : 0.0,
                        unratedColor: const Color(0xFFD1CDD1),
                        itemCount: 5,
                        itemSize: 48.0,
                        glowColor: const Color(0xFFF4B76D),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.apiResultAddRateToTrack =
                                await WfBerearGroup.addRatingToTrackCall.call(
                              rate: _model.ratingBarValue?.round(),
                              idTrack: getJsonField(
                                widget.track,
                                r'''$.id_track''',
                              ).toString(),
                              token: currentAuthenticationToken,
                            );

                            if ((_model.apiResultAddRateToTrack?.succeeded ??
                                true)) {
                              await action_blocks
                                  .clearQueryCacheContent(context);
                              safeSetState(() {});
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText:
                                          'Thank you for your feedback! Your rating has been successfully submitted.',
                                      ptText:
                                          'Obrigado por sua avaliação! Ela foi enviada com sucesso.',
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
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText:
                                          'Something is wrong, please try again.',
                                      ptText:
                                          'Algo de errado aconteceu, tente novamente.',
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
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                            }

                            safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            '3wkcq29a' /* Submit */,
                          ),
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 55.0,
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
                      ),
                    ].divide(const SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
