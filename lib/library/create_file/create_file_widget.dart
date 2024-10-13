import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'create_file_model.dart';
export 'create_file_model.dart';

class CreateFileWidget extends StatefulWidget {
  const CreateFileWidget({super.key});

  @override
  State<CreateFileWidget> createState() => _CreateFileWidgetState();
}

class _CreateFileWidgetState extends State<CreateFileWidget> {
  late CreateFileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateFileModel());

    _model.textFieldSearchTextController1 ??= TextEditingController();
    _model.textFieldSearchFocusNode1 ??= FocusNode();

    _model.textFieldSearchTextController2 ??= TextEditingController();
    _model.textFieldSearchFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (_model.selectedContents.isNotEmpty) {
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return WebViewAware(
                                    child: AlertDialog(
                                      title: const Text('You sure?'),
                                      content: const Text(
                                          'If you close, you will lose your new file'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: const Text('Confirm'),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            Navigator.pop(context);
                          }
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      child: wrapWithModel(
                        model: _model.componentVoltarBaixoModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ComponentVoltarBaixoWidget(
                          customAction: () async {},
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'yix9cw31' /* Create file */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF2B282B),
                              fontSize: 19.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 25.0,
                        color: Color(0x0E000000),
                        offset: Offset(
                          0.0,
                          0.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: TextFormField(
                      controller: _model.textFieldSearchTextController1,
                      focusNode: _model.textFieldSearchFocusNode1,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textFieldSearchTextController1',
                        const Duration(milliseconds: 1000),
                        () => safeSetState(() {}),
                      ),
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF9D979E),
                                  letterSpacing: 0.0,
                                ),
                        hintText: FFLocalizations.of(context).getText(
                          'c7i9vyrq' /* File´s name */,
                        ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF6A646B),
                            letterSpacing: 0.0,
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primary,
                      validator: _model.textFieldSearchTextController1Validator
                          .asValidator(context),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 25.0,
                          color: Color(0x0E000000),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.search_sharp,
                            color: Color(0xFFA669A9),
                            size: 24.0,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                4.0, 8.0, 16.0, 8.0),
                            child: TextFormField(
                              controller: _model.textFieldSearchTextController2,
                              focusNode: _model.textFieldSearchFocusNode2,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textFieldSearchTextController2',
                                const Duration(milliseconds: 1000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF9D979E),
                                      letterSpacing: 0.0,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'z2u6gcua' /* Search for contents here... */,
                                ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF9D979E),
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF6A646B),
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model
                                  .textFieldSearchTextController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FutureBuilder<ApiCallResponse>(
                  future: FFAppState().queryGetAllContentsInMyFiles(
                    requestFn: () => WfBerearGroup.getAllContentsCall.call(
                      token: currentAuthenticationToken,
                      language: currentUserData?.linguagemPreferida,
                    ),
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
                    final containerCellContentsGetAllContentsResponse =
                        snapshot.data!;

                    return Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Builder(
                        builder: (context) {
                          final content = WfBerearGroup.getAllContentsCall
                                  .contents(
                                    containerCellContentsGetAllContentsResponse
                                        .jsonBody,
                                  )
                                  ?.where((e) => _model.textFieldSearchTextController2
                                                  .text ==
                                              ''
                                      ? true
                                      : (getJsonField(
                                          e,
                                          r'''$.title''',
                                        ).toString().toLowerCase().contains(
                                          _model.textFieldSearchTextController2
                                              .text
                                              .toLowerCase())))
                                  .toList()
                                  .toList() ??
                              [];

                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children:
                                  List.generate(content.length, (contentIndex) {
                                final contentItem = content[contentIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (_model.selectedContents
                                        .contains(getJsonField(
                                      contentItem,
                                      r'''$.id''',
                                    ).toString())) {
                                      _model.removeFromSelectedContents(
                                          getJsonField(
                                        contentItem,
                                        r'''$.id''',
                                      ).toString());
                                      safeSetState(() {});
                                    } else {
                                      _model.addToSelectedContents(getJsonField(
                                        contentItem,
                                        r'''$.id''',
                                      ).toString());
                                      safeSetState(() {});
                                    }
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: const BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        if (_model.selectedContents
                                            .contains(getJsonField(
                                          contentItem,
                                          r'''$.id''',
                                        ).toString()))
                                          Icon(
                                            Icons.check_box,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 24.0,
                                          ),
                                        if (!_model.selectedContents
                                            .contains(getJsonField(
                                          contentItem,
                                          r'''$.id''',
                                        ).toString()))
                                          const Icon(
                                            Icons.check_box_outline_blank,
                                            color: Color(0xFF9D979E),
                                            size: 24.0,
                                          ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            getJsonField(
                                              contentItem,
                                              r'''$.cover_image''',
                                            ).toString(),
                                            width: 87.0,
                                            height: 104.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Flexible(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFFEAE9EB),
                                                        width: 0.5,
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
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'xud57st8' /* Audio */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF6A646B),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/sound-black.png',
                                                              width: 10.0,
                                                              height: 10.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 4.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  if (!getJsonField(
                                                        contentItem,
                                                        r'''$.isFree''',
                                                      ) &&
                                                      currentUserData!.isFree)
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: BackdropFilter(
                                                        filter:
                                                            ImageFilter.blur(
                                                          sigmaX: 2.0,
                                                          sigmaY: 2.0,
                                                        ),
                                                        child: Container(
                                                          height: 20.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0x4D000000),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'rqkitxb8' /* Premium */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              const Color(0xFFF0F2F4),
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Crown_(1).svg',
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 4.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ].divide(const SizedBox(width: 4.0)),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      getJsonField(
                                                        contentItem,
                                                        r'''$.title''',
                                                      ).toString(),
                                                      maxLines: 4,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: const Color(
                                                                0xFF383438),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/News.svg',
                                                            width: 10.0,
                                                            height: 10.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Text(
                                                            getJsonField(
                                                              contentItem,
                                                              r'''$.journal''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF6A646B),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          getJsonField(
                                                            contentItem,
                                                            r'''$.year''',
                                                          ).toString(),
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
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4l2uznil' /* • */,
                                                          ),
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
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                        Text(
                                                          functions
                                                              .secondsToTimeV2(
                                                                  getJsonField(
                                                            contentItem,
                                                            r'''$.timeAudioSeconds''',
                                                          )),
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
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                        if (getJsonField(
                                                              contentItem,
                                                              r'''$.rating''',
                                                            ) !=
                                                            null)
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'pbtznrn6' /* • */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: const Color(
                                                                      0xFF6A646B),
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        if (getJsonField(
                                                              contentItem,
                                                              r'''$.rating''',
                                                            ) !=
                                                            null)
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              const Icon(
                                                                Icons
                                                                    .star_rounded,
                                                                color: Color(
                                                                    0xFFFFB45E),
                                                                size: 12.0,
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  contentItem,
                                                                  r'''$.rating''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFF6A646B),
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 2.0)),
                                                          ),
                                                      ].divide(
                                                          const SizedBox(width: 4.0)),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 4.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
                                          ),
                                        ),
                                        Container(
                                          height: 104.0,
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (getJsonField(
                                                  contentItem,
                                                  r'''$.favorited''',
                                                )) {
                                                  _model.apiResultRemoveFavoriteContentFromLoved =
                                                      await WfBerearGroup
                                                          .removeFavoriteContentCall
                                                          .call(
                                                    contentId: getJsonField(
                                                      contentItem,
                                                      r'''$.id''',
                                                    ).toString(),
                                                    token:
                                                        currentAuthenticationToken,
                                                  );

                                                  if ((_model
                                                          .apiResultRemoveFavoriteContentFromLoved
                                                          ?.succeeded ??
                                                      true)) {
                                                    await actions
                                                        .setBoolValueInJson(
                                                      contentItem,
                                                      'favorited',
                                                      false,
                                                    );
                                                    await action_blocks
                                                        .clearQueryCacheContent(
                                                            context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Content removed to favorites.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                      ),
                                                    );
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            enText:
                                                                'Something is wrong, try again.',
                                                            ptText:
                                                                'Algo deu errado, tente novamente.',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                      ),
                                                    );
                                                  }
                                                } else {
                                                  _model.apiResultAddFavoriteContentFromLoved =
                                                      await WfBerearGroup
                                                          .addFavoriteContentCall
                                                          .call(
                                                    contentId: getJsonField(
                                                      contentItem,
                                                      r'''$.id''',
                                                    ).toString(),
                                                    token:
                                                        currentAuthenticationToken,
                                                  );

                                                  if ((_model
                                                          .apiResultAddFavoriteContentFromLoved
                                                          ?.succeeded ??
                                                      true)) {
                                                    await actions
                                                        .setBoolValueInJson(
                                                      contentItem,
                                                      'favorited',
                                                      true,
                                                    );
                                                    await action_blocks
                                                        .clearQueryCacheContent(
                                                            context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Content added to favorites.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                      ),
                                                    );
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            enText:
                                                                'Something is wrong, try again.',
                                                            ptText:
                                                                'Algo deu errado, tente novamente.',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .warning,
                                                      ),
                                                    );
                                                  }
                                                }

                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                width: 24.0,
                                                height: 24.0,
                                                decoration: BoxDecoration(
                                                  color: const Color(0x66919191),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    if (!getJsonField(
                                                      contentItem,
                                                      r'''$.favorited''',
                                                    ))
                                                      Icon(
                                                        Icons
                                                            .favorite_border_rounded,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 12.0,
                                                      ),
                                                    if (getJsonField(
                                                      contentItem,
                                                      r'''$.favorited''',
                                                    ))
                                                      Icon(
                                                        Icons.favorite,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 12.0,
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ),
                                );
                              }).divide(const SizedBox(height: 24.0)),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                FFButtonWidget(
                  onPressed: (!(_model.selectedContents.isNotEmpty) ||
                          (_model.textFieldSearchTextController1.text == ''))
                      ? null
                      : () async {
                          if ((_model.textFieldSearchTextController1.text ==
                                  'Ouvindo') ||
                              (_model.textFieldSearchTextController1.text ==
                                  'Meus favoritos') ||
                              (_model.textFieldSearchTextController1.text ==
                                  'Completados') ||
                              (_model.textFieldSearchTextController1.text ==
                                  'Listening') ||
                              (_model.textFieldSearchTextController1.text ==
                                  'My favorites') ||
                              (_model.textFieldSearchTextController1.text ==
                                  'Completed')) {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  FFLocalizations.of(context).getVariableText(
                                    enText:
                                        'Sorry, you can\'t create a file with this name.',
                                    ptText:
                                        'Desculpe, você não pode criar uma pasta com esse nome.',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                          } else {
                            _model.apiResultCreateFile =
                                await WfBerearGroup.createFileCall.call(
                              name: _model.textFieldSearchTextController1.text,
                              listOfContentsList: _model.selectedContents,
                              token: currentAuthenticationToken,
                            );

                            if ((_model.apiResultCreateFile?.succeeded ??
                                true)) {
                              if (getJsonField(
                                    (_model.apiResultCreateFile?.jsonBody ??
                                        ''),
                                    r'''$.response.erro''',
                                  ) !=
                                  null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return WebViewAware(
                                      child: AlertDialog(
                                        title: Text(FFLocalizations.of(context)
                                            .getVariableText(
                                          enText: 'Something is wrong.',
                                          ptText: 'Algo deu errado.',
                                        )),
                                        content: Text(
                                            FFLocalizations.of(context)
                                                .getVariableText(
                                          enText:
                                              'You already have a file with this name, try again with another name.',
                                          ptText:
                                              'Você já tem uma pasta com esse nome, tente novamente com outro nome.',
                                        )),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              } else {
                                FFAppState().clearQueryMyFilesCache();
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      FFLocalizations.of(context)
                                          .getVariableText(
                                        enText: 'File created successfully.',
                                        ptText: 'Pasta criada com sucesso.',
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
                                        FlutterFlowTheme.of(context).success,
                                  ),
                                );
                              }
                            }
                          }

                          safeSetState(() {});
                        },
                  text: FFLocalizations.of(context).getText(
                    '99sa3bep' /* Done */,
                  ),
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 55.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 19.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(56.0),
                    disabledColor: const Color(0xFFB7B2B8),
                    disabledTextColor: const Color(0xFFEAE9EB),
                  ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ),
        ],
      ),
    );
  }
}
