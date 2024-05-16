import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_page_widget.dart' show CreateAccountPageWidget;
import 'package:flutter/material.dart';

class CreateAccountPageModel extends FlutterFlowModel<CreateAccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Emailcreateaccount widget.
  FocusNode? emailcreateaccountFocusNode;
  TextEditingController? emailcreateaccountTextController;
  String? Function(BuildContext, String?)?
      emailcreateaccountTextControllerValidator;
  // State field(s) for passwordcreateaccount widget.
  FocusNode? passwordcreateaccountFocusNode;
  TextEditingController? passwordcreateaccountTextController;
  late bool passwordcreateaccountVisibility;
  String? Function(BuildContext, String?)?
      passwordcreateaccountTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordcreateaccountVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailcreateaccountFocusNode?.dispose();
    emailcreateaccountTextController?.dispose();

    passwordcreateaccountFocusNode?.dispose();
    passwordcreateaccountTextController?.dispose();
  }
}
