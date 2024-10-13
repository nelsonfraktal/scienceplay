import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'change_language_model.dart';
export 'change_language_model.dart';

class ChangeLanguageWidget extends StatefulWidget {
  const ChangeLanguageWidget({super.key});

  @override
  State<ChangeLanguageWidget> createState() => _ChangeLanguageWidgetState();
}

class _ChangeLanguageWidgetState extends State<ChangeLanguageWidget> {
  late ChangeLanguageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeLanguageModel());
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
        height: 290.0,
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '9nlv6375' /* Change language settings */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController ??=
                    FormFieldController<String>(
                  _model.dropDownValue ??=
                      FFLocalizations.of(context).languageCode,
                ),
                options: List<String>.from(['pt', 'en']),
                optionLabels: [
                  FFLocalizations.of(context).getText(
                    'ja6j3ht6' /* Portuguese */,
                  ),
                  FFLocalizations.of(context).getText(
                    'siz0e7nd' /* English */,
                  )
                ],
                onChanged: (val) =>
                    safeSetState(() => _model.dropDownValue = val),
                width: 300.0,
                height: 56.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                hintText: FFLocalizations.of(context).getText(
                  'y8fxf0dk' /* Please select... */,
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          setAppLanguage(context, _model.dropDownValue!);
                          _model.apiResultUpdateUserLanguage =
                              await WfBerearUserGroup.updateUserLanguageCall
                                  .call(
                            language: _model.dropDownValue,
                            token: currentAuthenticationToken,
                          );

                          if ((_model.apiResultUpdateUserLanguage?.succeeded ??
                              true)) {
                            authManager.updateAuthUserData(
                              authenticationToken: currentAuthenticationToken,
                              refreshToken: currentAuthRefreshToken,
                              tokenExpiration: currentAuthTokenExpiration,
                              authUid: currentUserUid,
                              userData: UserStruct(
                                uid: currentUserUid,
                                displayName: currentUserData?.displayName,
                                username: currentUserData?.username,
                                email: currentUserData?.email,
                                image: currentUserData?.image,
                                countryName: currentUserData?.countryName,
                                countryCode: currentUserData?.countryCode,
                                countryCodial: currentUserData?.countryCodial,
                                linguagemPreferida: _model.dropDownValue == 'pt'
                                    ? 'Português'
                                    : 'English',
                                preferenciaAudio:
                                    currentUserData?.preferenciaAudio,
                                createTime: currentUserData?.createTime,
                                notificationEmail:
                                    currentUserData?.notificationEmail,
                                notificationNewContent:
                                    currentUserData?.notificationNewContent,
                                notificationContentSuggestion: currentUserData
                                    ?.notificationContentSuggestion,
                                notificationPublicities:
                                    currentUserData?.notificationPublicities,
                                isFree: currentUserData?.isFree,
                              ),
                            );
                          }
                          Navigator.pop(context);
                          await action_blocks.clearQueryCacheContent(context);
                          await action_blocks.clearQueryCacheTracks(context);
                          FFAppState().clearQueryGetAuthorsCache();
                          FFAppState().clearQueryGetSpecialtiesMyFilesCache();
                          FFAppState().clearQueryUserBadgesCache();

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'rpr9vew1' /* Continue */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              1.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                            color: Color(0x007A3080),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(56.0),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: FFLocalizations.of(context).getText(
                          'g20j6223' /* Cancel */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 37.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x007A3080),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF7A3080),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
