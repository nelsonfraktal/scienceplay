import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rate_quest_model.dart';
export 'rate_quest_model.dart';

class RateQuestWidget extends StatefulWidget {
  const RateQuestWidget({
    super.key,
    required this.book,
  });

  final dynamic book;

  @override
  State<RateQuestWidget> createState() => _RateQuestWidgetState();
}

class _RateQuestWidgetState extends State<RateQuestWidget> {
  late RateQuestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateQuestModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
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
                      'et3a2do8' /* Rate Quest */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(const SizedBox(width: 16.0)),
              ),
            ),
          ),
          FutureBuilder<ApiCallResponse>(
            future: WfBerearGroup.getUserRatingContentCall.call(
              idContent: getJsonField(
                widget.book,
                r'''$.id''',
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
              final containerBodyGetUserRatingContentResponse = snapshot.data!;

              return Container(
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
                          'pklvlljv' /* How would you rate this quest? */,
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
                              getJsonField(
                                widget.book,
                                r'''$.image''',
                              ).toString(),
                              width: 117.0,
                              height: 178.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText: getJsonField(
                                      widget.book,
                                      r'''$.title_en''',
                                    ).toString(),
                                    ptText: getJsonField(
                                      widget.book,
                                      r'''$.title_pt''',
                                    ).toString(),
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF2B282B),
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Text(
                                  getJsonField(
                                    widget.book,
                                    r'''$.author''',
                                  ).toString(),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: const Color(0xFF6A646B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                  ),
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
                        initialRating: _model.ratingBarValue ??=
                            WfBerearGroup.getUserRatingContentCall.rate(
                                      containerBodyGetUserRatingContentResponse
                                          .jsonBody,
                                    ) !=
                                    null
                                ? WfBerearGroup.getUserRatingContentCall.rate(
                                    containerBodyGetUserRatingContentResponse
                                        .jsonBody,
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
                            _model.apiResultAddRating =
                                await WfBerearGroup.addRatingToContentCall.call(
                              rate: _model.ratingBarValue?.round(),
                              idContent: getJsonField(
                                widget.book,
                                r'''$.id''',
                              ).toString(),
                              token: currentAuthenticationToken,
                            );

                            if ((_model.apiResultAddRating?.succeeded ??
                                true)) {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                      enText:
                                          'Thank you for your feedback! Your rating has been successfully submitted.',
                                      ptText:
                                          'Obrigado por sua avaliação! Ela foi registrada com sucesso.',
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
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                            }

                            safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'bb6mvg00' /* Submit */,
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
              );
            },
          ),
        ],
      ),
    );
  }
}
