import '/flutter_flow/flutter_flow_util.dart';
import 'departments_highlight_page_widget.dart'
    show DepartmentsHighlightPageWidget;
import 'package:flutter/material.dart';

class DepartmentsHighlightPageModel
    extends FlutterFlowModel<DepartmentsHighlightPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
