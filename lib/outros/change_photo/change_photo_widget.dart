import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'change_photo_model.dart';
export 'change_photo_model.dart';

class ChangePhotoWidget extends StatefulWidget {
  const ChangePhotoWidget({super.key});

  @override
  State<ChangePhotoWidget> createState() => _ChangePhotoWidgetState();
}

class _ChangePhotoWidgetState extends State<ChangePhotoWidget> {
  late ChangePhotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePhotoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        height: 320.0,
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
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: wrapWithModel(
                      model: _model.componentVoltarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const ComponentVoltarWidget(),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '3kk50bup' /* Photo */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    final selectedMedia = await selectMedia(
                      maxWidth: 300.00,
                      maxHeight: 300.00,
                      includeDimensions: true,
                      multiImage: false,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      safeSetState(() => _model.isDataUploading1 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();
                      } finally {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        _model.isDataUploading1 = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile1 =
                              selectedUploadedFiles.first;
                        });
                        showUploadMessage(context, 'Success!');
                      } else {
                        safeSetState(() {});
                        showUploadMessage(context, 'Failed to upload data');
                        return;
                      }
                    }

                    if ((_model.uploadedLocalFile2.bytes?.isNotEmpty ??
                            false)) {
                      _model.apiResultgwoCopy =
                          await WfGroup.updateProfileImageCall.call(
                        image:
                            functions.imageToBase64(_model.uploadedLocalFile2),
                        uid: currentUserData?.uid,
                      );

                      if ((_model.apiResultgwoCopy?.succeeded ?? true)) {
                        authManager.updateAuthUserData(
                          authenticationToken: currentAuthenticationToken,
                          authUid: currentUserData?.uid,
                          userData: UserStruct(
                            image: WfGroup.updateProfileImageCall.profileImage(
                              (_model.apiResultgwoCopy?.jsonBody ?? ''),
                            ),
                            uid: currentUserData?.uid,
                            displayName: currentUserData?.displayName,
                            username: currentUserData?.username,
                            createTime: currentUserData?.createTime,
                            email: currentUserData?.email,
                            countryName: currentUserData?.countryName,
                            countryCode: currentUserData?.countryCode,
                            countryCodial: currentUserData?.countryCodial,
                            preferenciaAudio: currentUserData?.preferenciaAudio,
                            linguagemPreferida:
                                currentUserData?.linguagemPreferida,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Photo edited successfully.',
                                ptText: 'Foto editada com sucesso.',
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
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Something is wrong, try again.',
                                ptText: 'Algo deu errado, tente novamente.',
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
                            backgroundColor: FlutterFlowTheme.of(context).error,
                          ),
                        );
                        safeSetState(() {
                          _model.isDataUploading2 = false;
                          _model.uploadedLocalFile2 =
                              FFUploadedFile(bytes: Uint8List.fromList([]));
                        });
                      }

                      Navigator.pop(context);
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x19000000),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Camera.svg',
                              width: 24.0,
                              height: 24.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'ks3b2wvn' /* Camera */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    final selectedMedia = await selectMedia(
                      maxWidth: 300.00,
                      maxHeight: 300.00,
                      includeDimensions: true,
                      mediaSource: MediaSource.photoGallery,
                      multiImage: false,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      safeSetState(() => _model.isDataUploading2 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();
                      } finally {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        _model.isDataUploading2 = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile2 =
                              selectedUploadedFiles.first;
                        });
                        showUploadMessage(context, 'Success!');
                      } else {
                        safeSetState(() {});
                        showUploadMessage(context, 'Failed to upload data');
                        return;
                      }
                    }

                    if ((_model.uploadedLocalFile2.bytes?.isNotEmpty ??
                            false)) {
                      _model.apiResultgwo =
                          await WfGroup.updateProfileImageCall.call(
                        image:
                            functions.imageToBase64(_model.uploadedLocalFile2),
                        uid: currentUserData?.uid,
                      );

                      if ((_model.apiResultgwo?.succeeded ?? true)) {
                        authManager.updateAuthUserData(
                          authenticationToken: currentAuthenticationToken,
                          authUid: currentUserData?.uid,
                          userData: UserStruct(
                            image: WfGroup.updateProfileImageCall.profileImage(
                              (_model.apiResultgwo?.jsonBody ?? ''),
                            ),
                            uid: currentUserData?.uid,
                            displayName: currentUserData?.displayName,
                            username: currentUserData?.username,
                            createTime: currentUserData?.createTime,
                            email: currentUserData?.email,
                            countryName: currentUserData?.countryName,
                            countryCode: currentUserData?.countryCode,
                            countryCodial: currentUserData?.countryCodial,
                            preferenciaAudio: currentUserData?.preferenciaAudio,
                            linguagemPreferida:
                                currentUserData?.linguagemPreferida,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Photo edited successfully.',
                                ptText: 'Foto editada com sucesso.',
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
                                enText: 'Something is wrong, try again.',
                                ptText: 'Algo deu errado, tente novamente.',
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
                            backgroundColor: FlutterFlowTheme.of(context).error,
                          ),
                        );
                        safeSetState(() {
                          _model.isDataUploading2 = false;
                          _model.uploadedLocalFile2 =
                              FFUploadedFile(bytes: Uint8List.fromList([]));
                        });
                      }

                      Navigator.pop(context);
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x19000000),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Photo.svg',
                              width: 24.0,
                              height: 24.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '1680vih0' /* Gallery */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    var confirmDialogResponse = await showDialog<bool>(
                          context: context,
                          builder: (alertDialogContext) {
                            return WebViewAware(
                              child: AlertDialog(
                                title: Text(
                                    FFLocalizations.of(context).getVariableText(
                                  enText: 'Are you sure?',
                                  ptText: 'Tem certeza?',
                                )),
                                content: Text(
                                    FFLocalizations.of(context).getVariableText(
                                  enText: 'This action is irreversible.',
                                  ptText: 'Esta ação é irreversível.',
                                )),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'Cancel',
                                      ptText: 'Cancelar',
                                    )),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text(FFLocalizations.of(context)
                                        .getVariableText(
                                      enText: 'Remove photo',
                                      ptText: 'Remover foto',
                                    )),
                                  ),
                                ],
                              ),
                            );
                          },
                        ) ??
                        false;
                    if (confirmDialogResponse) {
                      authManager.updateAuthUserData(
                        authenticationToken: currentAuthenticationToken,
                        refreshToken: currentAuthRefreshToken,
                        tokenExpiration: currentAuthTokenExpiration,
                        authUid: currentUserUid,
                        userData: UserStruct(
                          uid: currentUserData?.uid,
                          displayName: currentUserData?.displayName,
                          username: currentUserData?.username,
                          createTime: currentUserData?.createTime,
                          email: currentUserData?.email,
                          countryName: currentUserData?.countryName,
                          countryCode: currentUserData?.countryCode,
                          countryCodial: currentUserData?.countryCodial,
                          preferenciaAudio: currentUserData?.preferenciaAudio,
                          linguagemPreferida:
                              currentUserData?.linguagemPreferida,
                          notificationEmail: currentUserData?.notificationEmail,
                          notificationNewContent:
                              currentUserData?.notificationNewContent,
                          notificationContentSuggestion:
                              currentUserData?.notificationContentSuggestion,
                          notificationPublicities:
                              currentUserData?.notificationPublicities,
                          image:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/science-play-12-min-e5r7cu/assets/n0y1u43e3ipa/profile-default.jpg',
                        ),
                      );
                      _model.apiResultUpdatePhoto =
                          await ObjGroup.updatePhotoCall.call(
                        userId: currentUserUid,
                        image:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/science-play-12-min-e5r7cu/assets/n0y1u43e3ipa/profile-default.jpg',
                      );

                      if ((_model.apiResultUpdatePhoto?.succeeded ?? true)) {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              FFLocalizations.of(context).getVariableText(
                                enText: 'Photo removed.',
                                ptText: 'Foto removida.',
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
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Color(0x19000000),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Trash.svg',
                              width: 24.0,
                              height: 24.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'b85bi2d9' /* Remove photo */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF80302F),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
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
