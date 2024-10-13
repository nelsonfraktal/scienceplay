import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/components/select_country_region_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'signup_model.dart';
export 'signup_model.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  late SignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupModel());

    _model.textFieldFullNameTextController ??= TextEditingController();
    _model.textFieldFullNameFocusNode ??= FocusNode();
    _model.textFieldFullNameFocusNode!.addListener(() => safeSetState(() {}));
    _model.textFieldNicknameTextController ??= TextEditingController();
    _model.textFieldNicknameFocusNode ??= FocusNode();
    _model.textFieldNicknameFocusNode!.addListener(() => safeSetState(() {}));
    _model.textFieldEmailTextController ??= TextEditingController();
    _model.textFieldEmailFocusNode ??= FocusNode();
    _model.textFieldEmailFocusNode!.addListener(() => safeSetState(() {}));
    _model.textFieldPasswordTextController ??= TextEditingController();
    _model.textFieldPasswordFocusNode ??= FocusNode();
    _model.textFieldPasswordFocusNode!.addListener(() => safeSetState(() {}));
    _model.textFieldConfirmPasswordTextController ??= TextEditingController();
    _model.textFieldConfirmPasswordFocusNode ??= FocusNode();
    _model.textFieldConfirmPasswordFocusNode!
        .addListener(() => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 34.0),
                          child: wrapWithModel(
                            model: _model.componentVoltarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const ComponentVoltarWidget(),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 48.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '660t1k7n' /* Create an account and let’s go... */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF383438),
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 56.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10.0,
                                        color: Color(0x1900001A),
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: (_model.textFieldFullNameFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      width: (_model.textFieldFullNameFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? 0.5
                                          : 0.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model
                                          .textFieldFullNameTextController,
                                      focusNode:
                                          _model.textFieldFullNameFocusNode,
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'h0pjsawg' /* Full name */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 4.0, 16.0, 4.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldFullNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 56.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10.0,
                                        color: Color(0x1900001A),
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: (_model.textFieldNicknameFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      width: (_model.textFieldNicknameFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? 0.5
                                          : 0.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model
                                          .textFieldNicknameTextController,
                                      focusNode:
                                          _model.textFieldNicknameFocusNode,
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'gswwbaxu' /* Nickname */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 4.0, 16.0, 4.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldNicknameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: InkWell(
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
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const SelectCountryRegionWidget(),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 56.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 10.0,
                                          color: Color(0x1900001A),
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (FFAppState().countryName == '')
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '4ythqv67' /* Country/Region */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              const Color(0xFF9D979E),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().countryName != '')
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  '${FFAppState().countryName} (${FFAppState().countryDialCode})',
                                                  'Country/Region',
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 56.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10.0,
                                        color: Color(0x1900001A),
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: (_model.textFieldEmailFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      width: (_model.textFieldEmailFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? 0.5
                                          : 0.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.textFieldEmailTextController,
                                      focusNode: _model.textFieldEmailFocusNode,
                                      autofocus: true,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'mi3ex0zz' /* E-mail */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 4.0, 16.0, 4.0),
                                        prefixIcon: const Icon(
                                          Icons.mail_outline,
                                          color: Color(0xFF847B85),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldEmailTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 56.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10.0,
                                        color: Color(0x1900001A),
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: (_model.textFieldPasswordFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? FlutterFlowTheme.of(context).primary
                                          : const Color(0x00000000),
                                      width: (_model.textFieldPasswordFocusNode
                                                  ?.hasFocus ??
                                              false)
                                          ? 0.5
                                          : 0.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model
                                          .textFieldPasswordTextController,
                                      focusNode:
                                          _model.textFieldPasswordFocusNode,
                                      autofocus: true,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      textInputAction: TextInputAction.next,
                                      obscureText:
                                          !_model.textFieldPasswordVisibility,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '4ymnogpw' /* Password */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 4.0, 16.0, 4.0),
                                        prefixIcon: const Icon(
                                          Icons.lock_outline,
                                          color: Color(0xFF847B85),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => safeSetState(
                                            () => _model
                                                    .textFieldPasswordVisibility =
                                                !_model
                                                    .textFieldPasswordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.textFieldPasswordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: const Color(0xFF9D979E),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldPasswordTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 56.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 10.0,
                                        color: Color(0x1900001A),
                                        offset: Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color:
                                          (_model.textFieldConfirmPasswordFocusNode
                                                      ?.hasFocus ??
                                                  false)
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : const Color(0x00000000),
                                      width:
                                          (_model.textFieldConfirmPasswordFocusNode
                                                      ?.hasFocus ??
                                                  false)
                                              ? 0.5
                                              : 0.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model
                                          .textFieldConfirmPasswordTextController,
                                      focusNode: _model
                                          .textFieldConfirmPasswordFocusNode,
                                      autofocus: true,
                                      textInputAction: TextInputAction.done,
                                      obscureText: !_model
                                          .textFieldConfirmPasswordVisibility,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        alignLabelWithHint: false,
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '439nk8oj' /* Confirm your password */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF9D979E),
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                16.0, 4.0, 16.0, 4.0),
                                        prefixIcon: const Icon(
                                          Icons.lock_outline,
                                          color: Color(0xFF847B85),
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => safeSetState(
                                            () => _model
                                                    .textFieldConfirmPasswordVisibility =
                                                !_model
                                                    .textFieldConfirmPasswordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.textFieldConfirmPasswordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: const Color(0xFF9D979E),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      cursorColor:
                                          FlutterFlowTheme.of(context).primary,
                                      validator: _model
                                          .textFieldConfirmPasswordTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                var shouldSetState = false;
                                if (_model
                                        .textFieldPasswordTextController.text ==
                                    _model
                                        .textFieldConfirmPasswordTextController
                                        .text) {
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  _model.apiResult3g9 =
                                      await AuthGroup.registerCall.call(
                                    fullName: _model
                                        .textFieldFullNameTextController.text,
                                    nickname: _model
                                        .textFieldNicknameTextController.text,
                                    countryName: valueOrDefault<String>(
                                      FFAppState().countryName,
                                      'empty',
                                    ),
                                    countryDialCode: valueOrDefault<String>(
                                      FFAppState().countryDialCode,
                                      'empty',
                                    ),
                                    countryCode: valueOrDefault<String>(
                                      FFAppState().countryCode,
                                      'empty',
                                    ),
                                    email: _model
                                        .textFieldEmailTextController.text,
                                    password: _model
                                        .textFieldPasswordTextController.text,
                                    confirmPassword: _model
                                        .textFieldConfirmPasswordTextController
                                        .text,
                                    language: FFLocalizations.of(context)
                                        .languageCode,
                                  );

                                  shouldSetState = true;
                                  if ((_model.apiResult3g9?.succeeded ??
                                      true)) {
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signIn(
                                      authenticationToken:
                                          AuthGroup.registerCall.token(
                                        (_model.apiResult3g9?.jsonBody ?? ''),
                                      ),
                                      authUid: AuthGroup.registerCall.userUID(
                                        (_model.apiResult3g9?.jsonBody ?? ''),
                                      ),
                                      userData: UserStruct(
                                        uid: AuthGroup.registerCall.userUID(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        displayName:
                                            AuthGroup.registerCall.userFullName(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        image: getJsonField(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                          r'''$.response.User.image''',
                                        ).toString(),
                                        username:
                                            AuthGroup.registerCall.userNickname(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        email: AuthGroup.registerCall
                                            .userAuthenticationEmailEmail(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        countryName: AuthGroup.registerCall
                                            .userCountryName(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        countryCode: AuthGroup.registerCall
                                            .userCountryCode(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        countryCodial: AuthGroup.registerCall
                                            .userCountrydialCode(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        preferenciaAudio:
                                            AuthGroup.registerCall.prefAudio(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        linguagemPreferida:
                                            AuthGroup.registerCall.linguagem(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        notificationEmail: AuthGroup
                                            .registerCall
                                            .notificationEmail(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        notificationNewContent: AuthGroup
                                            .registerCall
                                            .notificationNewContent(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        notificationContentSuggestion: AuthGroup
                                            .registerCall
                                            .notificationSuggestion(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        notificationPublicities: AuthGroup
                                            .registerCall
                                            .notificationPublicities(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ),
                                        isFree: getJsonField(
                                          AuthGroup.registerCall.user(
                                            (_model.apiResult3g9?.jsonBody ??
                                                ''),
                                          ),
                                          r'''$.isFree''',
                                        ),
                                      ),
                                    );
                                    await action_blocks
                                        .clearQueryCacheContent(context);
                                    await action_blocks
                                        .clearQueryCacheTracks(context);
                                    FFAppState().occupationsOrInterests = [];
                                    FFAppState().areasOfInterests = [];
                                    FFAppState().userLevel = LevelStruct
                                        .fromSerializableMap(jsonDecode(
                                            '{\"id\":\"Undefined\",\"display\":\"Undefined\"}'));
                                    FFAppState().userGoals = [];
                                    FFAppState().userDedication =
                                        TimeAvailableStruct.fromSerializableMap(
                                            jsonDecode(
                                                '{\"id\":\"Undefined\"}'));
                                    FFAppState().userPreferencesContents = [];
                                    safeSetState(() {});

                                    context.goNamedAuth(
                                        'Onboarding_1_occupation',
                                        context.mounted);

                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    if (AuthGroup.registerCall.status(
                                          (_model.apiResult3g9?.jsonBody ?? ''),
                                        ) ==
                                        'NOT_RUN') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              title: Text(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                enText: 'Something is wrong...',
                                                ptText: 'Algo deu errado...',
                                              )),
                                              content: Text(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                enText:
                                                    'This nickname is already in use.',
                                                ptText:
                                                    'Este apelido já está em uso.',
                                              )),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                            child: AlertDialog(
                                              title:
                                                  const Text('Something is wrong...'),
                                              content: Text(getJsonField(
                                                (_model.apiResult3g9
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.message''',
                                              ).toString()),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    }

                                    if (shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        FFLocalizations.of(context)
                                            .getVariableText(
                                          enText: 'Passwords do not match.',
                                          ptText:
                                              'As senhas precisam ser iguais.',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      duration: const Duration(milliseconds: 3000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).warning,
                                    ),
                                  );
                                }

                                if (shouldSetState) safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'e3qg02s1' /* Create account */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 55.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 19.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(56.0),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'n8u9gj5x' /* Alread have an account? */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF514C52),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.goNamed(
                                      'Login',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 700),
                                        ),
                                      },
                                    );
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'rzuvh8c8' /* Log in */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: const Color(0xFF7A3080),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 4.0)),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                      ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 120.0,
                                  height: 1.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF9D979E),
                                  ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'xx4tyorh' /* or */,
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: const Color(0xFF9D979E),
                                    fontSize: 19.0,
                                  ),
                                ),
                                Container(
                                  width: 120.0,
                                  height: 1.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF9D979E),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                            Container(
                              width: 100.0,
                              height: 56.0,
                              constraints: const BoxConstraints(
                                minWidth: double.infinity,
                                minHeight: 56.0,
                                maxWidth: double.infinity,
                                maxHeight: 56.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(56.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 14.0, 24.0, 14.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Vector.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    AutoSizeText(
                                      FFLocalizations.of(context).getText(
                                        '3j0defze' /* Continue with Google */,
                                      ),
                                      maxLines: 1,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: const Color(0xFF7A3080),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 56.0,
                              constraints: const BoxConstraints(
                                minWidth: double.infinity,
                                minHeight: 56.0,
                                maxWidth: double.infinity,
                                maxHeight: 56.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(56.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 14.0, 24.0, 14.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Platform=Facebook,_Color=Original.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    AutoSizeText(
                                      FFLocalizations.of(context).getText(
                                        '8an3c2e5' /* Continue with Facebook */,
                                      ),
                                      maxLines: 1,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: const Color(0xFF7A3080),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 56.0,
                              constraints: const BoxConstraints(
                                minWidth: double.infinity,
                                minHeight: 56.0,
                                maxWidth: double.infinity,
                                maxHeight: 56.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(56.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 14.0, 24.0, 14.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(24.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Platform=Apple,_Color=Original.svg',
                                        width: 24.0,
                                        height: 24.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    AutoSizeText(
                                      FFLocalizations.of(context).getText(
                                        'w2l3icot' /* Continue with Apple */,
                                      ),
                                      maxLines: 1,
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: const Color(0xFF7A3080),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 19.0,
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                    ].divide(const SizedBox(height: 0.0)),
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
