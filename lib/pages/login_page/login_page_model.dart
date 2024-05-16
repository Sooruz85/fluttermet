import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Emailfield widget.
  FocusNode? emailfieldFocusNode;
  TextEditingController? emailfieldTextController;
  String? Function(BuildContext, String?)? emailfieldTextControllerValidator;
  // State field(s) for Passwordfield widget.
  FocusNode? passwordfieldFocusNode;
  TextEditingController? passwordfieldTextController;
  late bool passwordfieldVisibility;
  String? Function(BuildContext, String?)? passwordfieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordfieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailfieldFocusNode?.dispose();
    emailfieldTextController?.dispose();

    passwordfieldFocusNode?.dispose();
    passwordfieldTextController?.dispose();
  }
}
