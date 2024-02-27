import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for updatemail widget.
  FocusNode? updatemailFocusNode;
  TextEditingController? updatemailController;
  String? Function(BuildContext, String?)? updatemailControllerValidator;
  // State field(s) for updatedisName widget.
  FocusNode? updatedisNameFocusNode;
  TextEditingController? updatedisNameController;
  String? Function(BuildContext, String?)? updatedisNameControllerValidator;
  // State field(s) for updatenid widget.
  FocusNode? updatenidFocusNode;
  TextEditingController? updatenidController;
  String? Function(BuildContext, String?)? updatenidControllerValidator;
  // State field(s) for updatephnNum widget.
  FocusNode? updatephnNumFocusNode;
  TextEditingController? updatephnNumController;
  String? Function(BuildContext, String?)? updatephnNumControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    updatemailFocusNode?.dispose();
    updatemailController?.dispose();

    updatedisNameFocusNode?.dispose();
    updatedisNameController?.dispose();

    updatenidFocusNode?.dispose();
    updatenidController?.dispose();

    updatephnNumFocusNode?.dispose();
    updatephnNumController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
