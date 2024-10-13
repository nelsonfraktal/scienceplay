import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/componentes_globais/component_moedas_do_usuario/component_moedas_do_usuario_widget.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/library/delete_file/delete_file_widget.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'inside_my_files_model.dart';
export 'inside_my_files_model.dart';

class InsideMyFilesWidget extends StatefulWidget {
  const InsideMyFilesWidget({
    super.key,
    required this.contents,
    required this.name,
    required this.id,
  });

  final List<dynamic>? contents;
  final String? name;
  final String? id;

  @override
  State<InsideMyFilesWidget> createState() => _InsideMyFilesWidgetState();
}

class _InsideMyFilesWidgetState extends State<InsideMyFilesWidget> {
  late InsideMyFilesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsideMyFilesModel());

    _model.textFieldSearchTextController ??= TextEditingController();
    _model.textFieldSearchFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFFAFAFA),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
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
                                  valueOrDefault<String>(
                                    widget.name,
                                    'My files',
                                  ),
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
                              ].divide(const SizedBox(width: 8.0)),
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            wrapWithModel(
                              model: _model.componentMoedasDoUsuarioModel,
                              updateCallback: () => safeSetState(() {}),
                              child: const ComponentMoedasDoUsuarioWidget(),
                            ),
                          if ((widget.name !=
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'My favorites',
                                    ptText: 'Meus favoritos',
                                  )) &&
                              (widget.name !=
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'Listening',
                                    ptText: 'Ouvindo',
                                  )) &&
                              (widget.name !=
                                  FFLocalizations.of(context).getVariableText(
                                    enText: 'Completed',
                                    ptText: 'Completados',
                                  )))
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
                                          child: DeleteFileWidget(
                                            name: widget.name!,
                                            id: widget.id!,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(
                                    () => _model.fileRemoved = value));

                                if (_model.fileRemoved!) {
                                  FFAppState().clearQueryMyFilesCache();
                                  context.safePop();
                                }

                                safeSetState(() {});
                              },
                              child: Container(
                                width: 48.0,
                                height: 48.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFEEE7ED),
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 48.0,
                                    height: 48.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/trash-outline.svg',
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 25.0,
                                color: Color(0x0C000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color:
                                  (_model.textFieldSearchFocusNode?.hasFocus ??
                                          false)
                                      ? const Color(0xFFA669A9)
                                      : const Color(0x00000000),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                4.0, 4.0, 16.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: const Icon(
                                    Icons.search_sharp,
                                    color: Color(0xFFA669A9),
                                    size: 24.0,
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller:
                                        _model.textFieldSearchTextController,
                                    focusNode: _model.textFieldSearchFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textFieldSearchTextController',
                                      const Duration(milliseconds: 1000),
                                      () => safeSetState(() {}),
                                    ),
                                    onFieldSubmitted: (_) async {
                                      if (FFAppState()
                                              .historicoPesquisa
                                              .length ==
                                          6) {
                                        FFAppState()
                                            .removeAtIndexFromHistoricoPesquisa(
                                                0);
                                        safeSetState(() {});
                                        FFAppState().addToHistoricoPesquisa(
                                            _model.textFieldSearchTextController
                                                .text);
                                        safeSetState(() {});
                                        return;
                                      } else {
                                        FFAppState().addToHistoricoPesquisa(
                                            _model.textFieldSearchTextController
                                                .text);
                                        safeSetState(() {});
                                        return;
                                      }
                                    },
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      alignLabelWithHint: false,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'gvdxqjv8' /* Search for content */,
                                      ),
                                      hintStyle: GoogleFonts.getFont(
                                        'Poppins',
                                        color: const Color(0xFF9D979E),
                                        fontSize: 14.0,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 4.0, 0.0, 4.0),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: const Color(0xFF6A646B),
                                      fontSize: 14.0,
                                    ),
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model
                                        .textFieldSearchTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 4.0)),
                            ),
                          ),
                        ),
                      ),

                      // Coloquei para ocultar o ContainerTags por enquanto, porque esse filtro em português não tá funcionando bem
                      if (FFLocalizations.of(context).languageCode == 'en')
                        FutureBuilder<ApiCallResponse>(
                          future: FFAppState().queryGetSpecialtiesMyFiles(
                            requestFn: () =>
                                WfBerearGroup.getFiltersSpecialtiesCall.call(
                              idsContentsList: widget.contents
                                  ?.map((e) => getJsonField(
                                        e,
                                        r'''$.id''',
                                      ))
                                  .toList()
                                  .map((e) => e.toString())
                                  .toList(),
                              token: currentAuthenticationToken,
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
                            final containerTagsGetFiltersSpecialtiesResponse =
                                snapshot.data!;

                            return Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.specialtySelected = [];
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: _model.specialtySelected
                                                      .isNotEmpty
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .purpleAlternate,
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 8.0, 20.0, 8.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getVariableText(
                                                  enText: 'All',
                                                  ptText: 'Todos',
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: _model
                                                              .specialtySelected
                                                              .isNotEmpty
                                                          ? const Color(0xFF6A646B)
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final specialty = getJsonField(
                                              containerTagsGetFiltersSpecialtiesResponse
                                                  .jsonBody,
                                              r'''$.response.specialties''',
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
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (_model
                                                          .specialtySelected
                                                          .contains(specialtyItem
                                                              .toString())) {
                                                        _model
                                                            .removeFromSpecialtySelected(
                                                                specialtyItem
                                                                    .toString());
                                                        safeSetState(() {});
                                                      } else {
                                                        _model
                                                            .addToSpecialtySelected(
                                                                specialtyItem
                                                                    .toString());
                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: _model
                                                                .specialtySelected
                                                                .contains(
                                                                    specialtyItem
                                                                        .toString())
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .purpleAlternate
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    8.0,
                                                                    20.0,
                                                                    8.0),
                                                        child: Text(
                                                          specialtyItem
                                                              .toString(),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: _model
                                                                        .specialtySelected
                                                                        .contains(specialtyItem
                                                                            .toString())
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : const Color(
                                                                        0xFF6A646B),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }).divide(const SizedBox(width: 8.0)),
                                              ),
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 16.0)),
                              ),
                            );
                          },
                        ),
                      if (widget.contents != null &&
                          (widget.contents)!.isNotEmpty)
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: const BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final content = widget.contents!
                                  .where((e) =>
                                      (_model.textFieldSearchTextController
                                                      .text ==
                                                  ''
                                          ? true
                                          : (getJsonField(
                                              e,
                                              r'''$.title''',
                                            ).toString().toLowerCase().contains(
                                              _model
                                                  .textFieldSearchTextController
                                                  .text
                                                  .toLowerCase()))) &&
                                      (!(_model.specialtySelected.isNotEmpty)
                                          ? true
                                          : ((List<String> var1,
                                                  List<String> var2) {
                                              return var2.any((item) =>
                                                  var1.contains(item));
                                            }(
                                              (getJsonField(
                                                e,
                                                r'''$.specialties''',
                                                true,
                                              ) as List)
                                                  .map<String>(
                                                      (s) => s.toString())
                                                  .toList(),
                                              _model.specialtySelected
                                                  .toList()))))
                                  .toList();

                              return Wrap(
                                spacing: 8.0,
                                runSpacing: 24.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: List.generate(content.length,
                                    (contentIndex) {
                                  final contentItem = content[contentIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().conteudoSelecionado =
                                          contentItem;
                                      safeSetState(() {});
                                      if (!getJsonField(
                                            contentItem,
                                            r'''$.isFree''',
                                          ) &&
                                          currentUserData!.isFree) {
                                        context.pushNamed(
                                          'Inside_content_buy',
                                          queryParameters: {
                                            'content': serializeParam(
                                              contentItem,
                                              ParamType.JSON,
                                            ),
                                            'typeContent': serializeParam(
                                              TypeContent.Audio,
                                              ParamType.Enum,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else {
                                        context.pushNamed(
                                          'Inside_content',
                                          queryParameters: {
                                            'content': serializeParam(
                                              contentItem,
                                              ParamType.JSON,
                                            ),
                                            'typeContent': serializeParam(
                                              TypeContent.Audio,
                                              ParamType.Enum,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.418,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 183.0,
                                            height: 143.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.network(
                                                  getJsonField(
                                                    contentItem,
                                                    r'''$.cover_image''',
                                                  ).toString(),
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          const Color(0x007A3080),
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                        ],
                                                        stops: const [0.0, 1.0],
                                                        begin:
                                                            const AlignmentDirectional(
                                                                0.0, -1.0),
                                                        end:
                                                            const AlignmentDirectional(
                                                                0, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
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
                                                              if (!getJsonField(
                                                                    contentItem,
                                                                    r'''$.isFree''',
                                                                  ) &&
                                                                  currentUserData!
                                                                      .isFree)
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child:
                                                                      BackdropFilter(
                                                                    filter:
                                                                        ImageFilter
                                                                            .blur(
                                                                      sigmaX:
                                                                          2.0,
                                                                      sigmaY:
                                                                          2.0,
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          20.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0x4D000000),
                                                                        borderRadius:
                                                                            BorderRadius.circular(24.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '3ji0dydr' /* Premium */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: const Color(0xFFF0F2F4),
                                                                                      fontSize: 10.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/Crown_(1).svg',
                                                                                width: 10.0,
                                                                                height: 10.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 4.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),

                                                              // Apenas para quando premium for invisível, o coração não se alinhe para a esquerda
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '1xm349v6' /* a */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0x0014181B),
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (getJsonField(
                                                                    contentItem,
                                                                    r'''$.favorited''',
                                                                  )) {
                                                                    _model.apiResultRemoveFavoriteContent =
                                                                        await WfBerearGroup
                                                                            .removeFavoriteContentCall
                                                                            .call(
                                                                      contentId:
                                                                          getJsonField(
                                                                        contentItem,
                                                                        r'''$.id''',
                                                                      ).toString(),
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );

                                                                    if ((_model
                                                                            .apiResultRemoveFavoriteContent
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
                                                                      safeSetState(
                                                                          () {});
                                                                      FFAppState()
                                                                          .clearQueryGetSpecialtiesMyFilesCache();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .clearSnackBars();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'Content removed from favorites.',
                                                                              ptText: 'Conteúdo removido dos favoritos.',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          duration:
                                                                              const Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).success,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .clearSnackBars();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'Something is wrong, try again.',
                                                                              ptText: 'Algo deu errado, tente novamente.',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          duration:
                                                                              const Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                        ),
                                                                      );
                                                                    }
                                                                  } else {
                                                                    _model.apiResultAddFavoriteContent =
                                                                        await WfBerearGroup
                                                                            .addFavoriteContentCall
                                                                            .call(
                                                                      contentId:
                                                                          getJsonField(
                                                                        contentItem,
                                                                        r'''$.id''',
                                                                      ).toString(),
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );

                                                                    if ((_model
                                                                            .apiResultAddFavoriteContent
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
                                                                      safeSetState(
                                                                          () {});
                                                                      FFAppState()
                                                                          .clearQueryGetSpecialtiesMyFilesCache();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .clearSnackBars();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'Content added to favorites.',
                                                                              ptText: 'Conteúdo adicionado aos favoritos.',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          duration:
                                                                              const Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).success,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            FFLocalizations.of(context).getVariableText(
                                                                              enText: 'Something is wrong, try again.',
                                                                              ptText: 'Algo deu errado, tente novamente.',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          duration:
                                                                              const Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                        ),
                                                                      );
                                                                    }
                                                                  }

                                                                  context
                                                                      .goNamed(
                                                                    'Inside_my_files',
                                                                    queryParameters:
                                                                        {
                                                                      'contents':
                                                                          serializeParam(
                                                                        widget
                                                                            .contents,
                                                                        ParamType
                                                                            .JSON,
                                                                        isList:
                                                                            true,
                                                                      ),
                                                                      'name':
                                                                          serializeParam(
                                                                        widget
                                                                            .name,
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'id':
                                                                          serializeParam(
                                                                        widget
                                                                            .id,
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 24.0,
                                                                  height: 24.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0x66FFFFFF),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if (getJsonField(
                                                                        contentItem,
                                                                        r'''$.favorited''',
                                                                      ))
                                                                        const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color:
                                                                              Color(0xFFF6F9FB),
                                                                          size:
                                                                              12.0,
                                                                        ),
                                                                      if (!getJsonField(
                                                                        contentItem,
                                                                        r'''$.favorited''',
                                                                      ))
                                                                        const Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              Color(0xFFF6F9FB),
                                                                          size:
                                                                              12.0,
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                getJsonField(
                                                                  contentItem,
                                                                  r'''$.title''',
                                                                ).toString(),
                                                                maxLines: 4,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: const Color(
                                                                          0xFFECF0F4),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              if (getJsonField(
                                                                contentItem,
                                                                r'''$.completed''',
                                                              ))
                                                                LinearPercentIndicator(
                                                                  percent: 1.0,
                                                                  width: 162.0,
                                                                  lineHeight:
                                                                      3.0,
                                                                  animation:
                                                                      true,
                                                                  animateFromLastPercent:
                                                                      true,
                                                                  progressColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  barRadius: const Radius
                                                                      .circular(
                                                                          4.0),
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                ),
                                                            ].divide(const SizedBox(
                                                                height: 4.0)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/News.svg',
                                                          width: 12.0,
                                                          height: 12.0,
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
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: const Color(
                                                                    0xFF383438),
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 2.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          contentItem,
                                                          r'''$.year''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
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
                                                      const Icon(
                                                        Icons.circle,
                                                        color:
                                                            Color(0xFF6A646B),
                                                        size: 5.0,
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
                                                            .bodyMedium
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
                                                        const Icon(
                                                          Icons.circle,
                                                          color:
                                                              Color(0xFF6A646B),
                                                          size: 5.0,
                                                        ),
                                                      if (getJsonField(
                                                            contentItem,
                                                            r'''$.rating''',
                                                          ) !=
                                                          null)
                                                        Flexible(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              const Icon(
                                                                Icons.star,
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
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 2.0)),
                                                          ),
                                                        ),
                                                    ].divide(
                                                        const SizedBox(width: 5.0)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      if (!(widget.contents != null &&
                              (widget.contents)!.isNotEmpty) &&
                          ((widget.name == 'My favorites') ||
                              (widget.name == 'Meus favoritos')))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'v9j8so4p' /* Add a content as favorite to s... */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF6A646B),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      if (!(widget.contents != null &&
                              (widget.contents)!.isNotEmpty) &&
                          ((widget.name == 'Listening') ||
                              (widget.name == 'Ouvindo')))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '4ycorzpz' /* Start a content to see it here... */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF6A646B),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      if (!(widget.contents != null &&
                              (widget.contents)!.isNotEmpty) &&
                          ((widget.name == 'Completed') ||
                              (widget.name == 'Completados')))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'dhndwqis' /* Complete a content to see it h... */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF6A646B),
                                  letterSpacing: 0.0,
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
  }
}
