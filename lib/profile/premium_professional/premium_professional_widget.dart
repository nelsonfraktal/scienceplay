import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'premium_professional_model.dart';
export 'premium_professional_model.dart';

class PremiumProfessionalWidget extends StatefulWidget {
  const PremiumProfessionalWidget({super.key});

  @override
  State<PremiumProfessionalWidget> createState() =>
      _PremiumProfessionalWidgetState();
}

class _PremiumProfessionalWidgetState extends State<PremiumProfessionalWidget> {
  late PremiumProfessionalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PremiumProfessionalModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFFAFAFA),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Imagem_de_fundo.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 52.0, 0.0, 52.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 22.0, 24.0, 0.0),
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
                                if (_model.clicouEmAssinar) {
                                  _model.apiResultGetAccess =
                                      await WfBerearUserGroup.getAccessUserCall
                                          .call(
                                    token: currentAuthenticationToken,
                                  );

                                  if ((_model.apiResultGetAccess?.succeeded ??
                                      true)) {
                                    authManager.updateAuthUserData(
                                      authenticationToken:
                                          currentAuthenticationToken,
                                      refreshToken: currentAuthRefreshToken,
                                      tokenExpiration:
                                          currentAuthTokenExpiration,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        uid: currentUserData?.uid,
                                        displayName:
                                            currentUserData?.displayName,
                                        username: currentUserData?.username,
                                        createTime: currentUserData?.createTime,
                                        email: currentUserData?.email,
                                        image: currentUserData?.image,
                                        countryName:
                                            currentUserData?.countryName,
                                        countryCode:
                                            currentUserData?.countryCode,
                                        countryCodial:
                                            currentUserData?.countryCodial,
                                        preferenciaAudio:
                                            currentUserData?.preferenciaAudio,
                                        linguagemPreferida:
                                            currentUserData?.linguagemPreferida,
                                        notificationEmail:
                                            currentUserData?.notificationEmail,
                                        notificationNewContent: currentUserData
                                            ?.notificationNewContent,
                                        notificationContentSuggestion:
                                            currentUserData
                                                ?.notificationContentSuggestion,
                                        notificationPublicities: currentUserData
                                            ?.notificationPublicities,
                                        isFree: WfBerearUserGroup
                                            .getAccessUserCall
                                            .isFree(
                                          (_model.apiResultGetAccess
                                                  ?.jsonBody ??
                                              ''),
                                        ),
                                      ),
                                    );
                                  }
                                }

                                context.goNamed('Available_plans');

                                safeSetState(() {});
                              },
                              child: const Icon(
                                Icons.close_rounded,
                                color: Color(0xFFFBFCFD),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 37.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/Logo.svg',
                          width: 354.0,
                          height: 103.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 14.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'hwy6p9xr' /* Premium Professional */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFFFBFAFB),
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Check_Alt_(1).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '7m2o1mnt' /* Over 100 health & medicin cont... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFFFBFAFB),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Check_Alt_(1).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '7sh5eduh' /* Unlimited access to all paid c... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFFFBFAFB),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Check_Alt_(1).svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Flexible(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'ybc2n12f' /* Early access to new content */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFFFBFAFB),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Wrap(
                                      spacing: 8.0,
                                      runSpacing: 8.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.mensalSelecionado = true;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            constraints: const BoxConstraints(
                                              minWidth: 158.0,
                                              minHeight: 170.0,
                                              maxWidth: 158.0,
                                              maxHeight: 170.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0x00FFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: _model.mensalSelecionado
                                                    ? const Color(0xFFECD4E8)
                                                    : const Color(0xFF847B85),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Flexible(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'e8d1bugu' /* Monthly */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: _model.mensalSelecionado
                                                                            ? const Color(0xFFECD4E8)
                                                                            : Colors.white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                              if (_model
                                                                  .mensalSelecionado)
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Check_Alt.svg',
                                                                    width: 24.0,
                                                                    height:
                                                                        24.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        AutoSizeText(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'z0dqoc6x' /* $ 12.90 */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: _model
                                                                        .mensalSelecionado
                                                                    ? const Color(
                                                                        0xFFECD4E8)
                                                                    : Colors
                                                                        .white,
                                                                fontSize: 28.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0sy9ln58' /* Billed Monthly */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: _model
                                                                  .mensalSelecionado
                                                              ? const Color(
                                                                  0xFFECD4E8)
                                                              : Colors.white,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
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
                                            _model.mensalSelecionado = false;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            constraints: const BoxConstraints(
                                              minWidth: 158.0,
                                              minHeight: 170.0,
                                              maxWidth: 158.0,
                                              maxHeight: 170.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0x00FFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: !_model.mensalSelecionado
                                                    ? const Color(0xFFECD4E8)
                                                    : const Color(0xFF847B85),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'wfwy20eu' /* Yearly */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: !_model
                                                                              .mensalSelecionado
                                                                          ? const Color(
                                                                              0xFFECD4E8)
                                                                          : Colors
                                                                              .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                            if (!_model
                                                                .mensalSelecionado)
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Check_Alt.svg',
                                                                  width: 24.0,
                                                                  height: 24.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: AutoSizeText(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'z84byho9' /* $ 99.00 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: !_model
                                                                          .mensalSelecionado
                                                                      ? const Color(
                                                                          0xFFECD4E8)
                                                                      : Colors
                                                                          .white,
                                                                  fontSize:
                                                                      28.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xFF2B1334),
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  12.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    4.0,
                                                                    8.0,
                                                                    4.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'z67dpmdf' /* Save $ 33.80 */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: !_model
                                                                        .mensalSelecionado
                                                                    ? const Color(
                                                                        0xFFECD4E8)
                                                                    : Colors
                                                                        .white,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Gift.svg',
                                                            width: 16.0,
                                                            height: 16.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '81a4rrw5' /* Free 1 Week Trial */,
                                                          ),
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: !_model
                                                                        .mensalSelecionado
                                                                    ? const Color(
                                                                        0xFFECD4E8)
                                                                    : Colors
                                                                        .white,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.clicouEmAssinar = true;
                                      safeSetState(() {});
                                      if (_model.mensalSelecionado) {
                                        if (FFLocalizations.of(context)
                                                .languageCode ==
                                            'pt') {
                                          await launchURL(
                                              'https://pay.hotmart.com/Q94182288K?off=oy8qu31u');
                                        } else {
                                          await launchURL(
                                              'https://pay.hotmart.com/Q94182288K?off=4s9o3u7n');
                                        }
                                      } else {
                                        if (FFLocalizations.of(context)
                                                .languageCode ==
                                            'pt') {
                                          await launchURL(
                                              'https://pay.hotmart.com/Q94182288K?off=mpnuubsx');
                                        } else {
                                          await launchURL(
                                              'https://pay.hotmart.com/Q94182288K?off=vb4bmxzq');
                                        }
                                      }
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 56.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF7A3080),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ddpw8tyi' /* Subscribe */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: const Color(0xFFF9FBFD),
                                                  fontSize: 19.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          const Icon(
                                            Icons.chevron_right_outlined,
                                            color: Color(0xFFF9F7F7),
                                            size: 24.0,
                                          ),
                                        ].divide(const SizedBox(width: 8.0)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'wspe9abw' /* The subscription will automati... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF9D979E),
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
