import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'popup_logout_model.dart';
export 'popup_logout_model.dart';

class PopupLogoutWidget extends StatefulWidget {
  const PopupLogoutWidget({super.key});

  @override
  State<PopupLogoutWidget> createState() => _PopupLogoutWidgetState();
}

class _PopupLogoutWidgetState extends State<PopupLogoutWidget> {
  late PopupLogoutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupLogoutModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 364.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24.0),
            bottomRight: Radius.circular(24.0),
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'od18lpvp' /* Are you sure? */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'c10q7g18' /* Are you sure you want to log o... */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFF6A646B),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await Future.wait([
                          Future(() async {
                            FFAppState().clearQueryGetMyTracksCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGetRecommendedTracksCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGetPurchasedTracksCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryContentsWeLoveCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGlobalRankingCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryContentsTopFreeCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryContentsTopPremiumCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGetAllTrackInExploreCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryAreaHorseCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryMyFilesCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryMoedasDoUsuarioCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryUserBadgesCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryUserStreakCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryDailyQuestCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGetContentJustForYouCache();
                          }),
                          Future(() async {
                            FFAppState()
                                .clearQueryGetAllContentsInMyFilesCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGetSpecialtiesMyFilesCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGetNotesContentCache();
                          }),
                          Future(() async {
                            FFAppState().clearQueryGetAccessUserCache();
                          }),
                          Future(() async {
                            FFAppState()
                                .clearQueryGetBackWhereYouStoppedCache();
                          }),
                        ]);
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth('Welcome', context.mounted);
                      },
                      text: FFLocalizations.of(context).getText(
                        'n12dtph5' /* Logout */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 37.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(56.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      text: FFLocalizations.of(context).getText(
                        'xob0o7d8' /* Cancel */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 37.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(56.0),
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
