import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Component_voltar component.
  late ComponentVoltarModel componentVoltarModel;
  // State field(s) for TextFieldFullName widget.
  FocusNode? textFieldFullNameFocusNode;
  TextEditingController? textFieldFullNameTextController;
  String? Function(BuildContext, String?)?
      textFieldFullNameTextControllerValidator;
  String? _textFieldFullNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '28gnqh1z' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldNickname widget.
  FocusNode? textFieldNicknameFocusNode;
  TextEditingController? textFieldNicknameTextController;
  String? Function(BuildContext, String?)?
      textFieldNicknameTextControllerValidator;
  String? _textFieldNicknameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'shgx3ffn' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qo1t8u9l' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for TextFieldPassword widget.
  FocusNode? textFieldPasswordFocusNode;
  TextEditingController? textFieldPasswordTextController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldPasswordTextControllerValidator;
  String? _textFieldPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'm7q72kin' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldConfirmPassword widget.
  FocusNode? textFieldConfirmPasswordFocusNode;
  TextEditingController? textFieldConfirmPasswordTextController;
  late bool textFieldConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfirmPasswordTextControllerValidator;
  String? _textFieldConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sdrwrj5l' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Register)] action in Button widget.
  ApiCallResponse? apiResult3g9;

  @override
  void initState(BuildContext context) {
    componentVoltarModel = createModel(context, () => ComponentVoltarModel());
    textFieldFullNameTextControllerValidator =
        _textFieldFullNameTextControllerValidator;
    textFieldNicknameTextControllerValidator =
        _textFieldNicknameTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldPasswordVisibility = false;
    textFieldPasswordTextControllerValidator =
        _textFieldPasswordTextControllerValidator;
    textFieldConfirmPasswordVisibility = false;
    textFieldConfirmPasswordTextControllerValidator =
        _textFieldConfirmPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    componentVoltarModel.dispose();
    textFieldFullNameFocusNode?.dispose();
    textFieldFullNameTextController?.dispose();

    textFieldNicknameFocusNode?.dispose();
    textFieldNicknameTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldPasswordFocusNode?.dispose();
    textFieldPasswordTextController?.dispose();

    textFieldConfirmPasswordFocusNode?.dispose();
    textFieldConfirmPasswordTextController?.dispose();
  }
}
