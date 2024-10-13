import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'my_wallet_model.dart';
export 'my_wallet_model.dart';

class MyWalletWidget extends StatefulWidget {
  const MyWalletWidget({super.key});

  @override
  State<MyWalletWidget> createState() => _MyWalletWidgetState();
}

class _MyWalletWidgetState extends State<MyWalletWidget> {
  late MyWalletModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyWalletModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: FFAppState().queryGetAccessUser(
        requestFn: () => WfBerearUserGroup.getAccessUserCall.call(
          token: currentAuthenticationToken,
        ),
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
        final myWalletGetAccessUserResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFFAFAFA),
                ),
                child: RefreshIndicator(
                  onRefresh: () async {
                    _model.apiResultGetAccess =
                        await WfBerearUserGroup.getAccessUserCall.call(
                      token: currentAuthenticationToken,
                    );

                    if ((_model.apiResultGetAccess?.succeeded ?? true)) {
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
                          image: currentUserData?.image,
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
                          isFree: WfBerearUserGroup.getAccessUserCall.isFree(
                            (_model.apiResultGetAccess?.jsonBody ?? ''),
                          ),
                        ),
                      );
                    }
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 72.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Row(
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
                                    'dt7c3xvy' /* My subscription */,
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF383438),
                                        fontSize: 19.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ].divide(const SizedBox(width: 8.0)),
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 32.0, 24.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: ObjGroup.getUserUIDCall.call(
                                constraints:
                                    '[{\"key\": \"_id\", \"constraint_type\": \"equals\", \"value\": \"$currentUserUid\"}]',
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 30.0,
                                      height: 30.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final containerCoinsGetUserUIDResponse =
                                    snapshot.data!;

                                return Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 25.0,
                                              color: Color(0x0C000000),
                                              offset: Offset(
                                                0.0,
                                                0.0,
                                              ),
                                            )
                                          ],
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF618F71),
                                              Color(0xFF325E42)
                                            ],
                                            stops: [0.0, 1.0],
                                            begin: AlignmentDirectional(
                                                -0.34, 1.0),
                                            end: AlignmentDirectional(
                                                0.34, -1.0),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'kb2wnxj8' /* Available Credits */,
                                                                ),
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFFE3F4E2),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Creditos_science_play.svg',
                                                                      width:
                                                                          35.0,
                                                                      height:
                                                                          35.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        ObjGroup
                                                                            .getUserUIDCall
                                                                            .credits(
                                                                              containerCoinsGetUserUIDResponse.jsonBody,
                                                                            )
                                                                            ?.toString(),
                                                                        '0',
                                                                      ),
                                                                      minFontSize:
                                                                          14.0,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                32.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'ma385sfj' /* Earned XP */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFFE3F4E2),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  ObjGroup
                                                                      .getUserUIDCall
                                                                      .experiencia(
                                                                        containerCoinsGetUserUIDResponse
                                                                            .jsonBody,
                                                                      )
                                                                      ?.toString(),
                                                                  '0',
                                                                ),
                                                                minFontSize:
                                                                    14.0,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          32.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 5.0)),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 14.0)),
                                                      ),
                                                    ],
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Money.svg',
                                                      width: 65.0,
                                                      height: 65.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'f1hvy4e4' /* Credits can be used to access ... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFFE3F4E2),
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 8.0, 24.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (Navigator.of(context).canPop()) {
                                context.pop();
                              }
                              context.pushNamed('Available_plans');
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF3F2F3),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 20.0, 12.0, 20.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '60easu9k' /* See available plans */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    const Icon(
                                      Icons.chevron_right_sharp,
                                      color: Color(0xFFB7B2B8),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 8.0, 24.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF3F2F3),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 20.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'qano3ly2' /* Current plan */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    currentUserData!.isFree
                                        ? FFLocalizations.of(context)
                                            .getVariableText(
                                            enText: 'Science Play Free',
                                            ptText: 'Science Play Gratuito',
                                          )
                                        : 'Science Play Premium',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        if (!currentUserData!.isFree)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 8.0, 24.0, 256.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (WfBerearUserGroup.getAccessUserCall
                                            .dateRenew(
                                          myWalletGetAccessUserResponse
                                              .jsonBody,
                                        ) !=
                                        null &&
                                    WfBerearUserGroup.getAccessUserCall
                                            .dateRenew(
                                          myWalletGetAccessUserResponse
                                              .jsonBody,
                                        ) !=
                                        '')
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, -1.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('My_achievements');
                                      },
                                      child: Text(
                                        '${FFLocalizations.of(context).getVariableText(
                                          enText: 'Renewal date: ',
                                          ptText: 'Data de renovação: ',
                                        )}${WfBerearUserGroup.getAccessUserCall.dateRenew(
                                          myWalletGetAccessUserResponse
                                              .jsonBody,
                                        )}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF6A646B),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, -1.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                        enText: 'Are you sure?',
                                                        ptText: 'Tem certeza?',
                                                      )),
                                                      content: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                        enText:
                                                            'Do you want to change your plan to free? Your subscription will be cancelled.',
                                                        ptText:
                                                            'Quer alterar seu plano para o gratuito? Sua assinatura será cancelada.',
                                                      )),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                            enText: 'No',
                                                            ptText: 'Não',
                                                          )),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                            enText:
                                                                'Yes, I\'m sure',
                                                            ptText:
                                                                'Sim, alterar',
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ) ??
                                              false;
                                      if (confirmDialogResponse) {
                                        _model.apiResultCancelamento =
                                            await WfBerearGroup
                                                .solicitarCancelamentoAssinaturaCall
                                                .call(
                                          token: currentAuthenticationToken,
                                        );

                                        if ((_model.apiResultCancelamento
                                                ?.succeeded ??
                                            true)) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                WfBerearGroup
                                                    .solicitarCancelamentoAssinaturaCall
                                                    .message(
                                                  (_model.apiResultCancelamento
                                                          ?.jsonBody ??
                                                      ''),
                                                )!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
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
                                                      'Something is wrong, please try again.',
                                                  ptText:
                                                      'Algo de errado aconteceu, tente novamente.',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
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
                                                      .secondary,
                                            ),
                                          );
                                        }
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'wmemjsma' /* Cancel subscription */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
