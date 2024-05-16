import '/flutter_flow/flutter_flow_util.dart';
import 'collection_page_widget.dart' show CollectionPageWidget;
import 'package:flutter/material.dart';

class CollectionPageModel extends FlutterFlowModel<CollectionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
