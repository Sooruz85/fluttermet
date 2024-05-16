import '/flutter_flow/flutter_flow_util.dart';
import 'art_piece_page_widget.dart' show ArtPiecePageWidget;
import 'package:flutter/material.dart';

class ArtPiecePageModel extends FlutterFlowModel<ArtPiecePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
