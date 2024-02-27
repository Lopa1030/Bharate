import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'advertisement_widget.dart' show AdvertisementWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdvertisementModel extends FlutterFlowModel<AdvertisementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for ProType widget.
  FocusNode? proTypeFocusNode;
  TextEditingController? proTypeController;
  String? Function(BuildContext, String?)? proTypeControllerValidator;
  // State field(s) for NofRoom widget.
  FocusNode? nofRoomFocusNode;
  TextEditingController? nofRoomController;
  String? Function(BuildContext, String?)? nofRoomControllerValidator;
  // State field(s) for NofWRoom widget.
  FocusNode? nofWRoomFocusNode;
  TextEditingController? nofWRoomController;
  String? Function(BuildContext, String?)? nofWRoomControllerValidator;
  // State field(s) for ProDes widget.
  FocusNode? proDesFocusNode;
  TextEditingController? proDesController;
  String? Function(BuildContext, String?)? proDesControllerValidator;
  // State field(s) for sqft widget.
  FocusNode? sqftFocusNode;
  TextEditingController? sqftController;
  String? Function(BuildContext, String?)? sqftControllerValidator;
  // State field(s) for SecDep widget.
  FocusNode? secDepFocusNode;
  TextEditingController? secDepController;
  String? Function(BuildContext, String?)? secDepControllerValidator;
  // State field(s) for rentValue widget.
  FocusNode? rentValueFocusNode;
  TextEditingController? rentValueController;
  String? Function(BuildContext, String?)? rentValueControllerValidator;
  // State field(s) for LandCon widget.
  FocusNode? landConFocusNode;
  TextEditingController? landConController;
  String? Function(BuildContext, String?)? landConControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    addressFocusNode?.dispose();
    addressController?.dispose();

    proTypeFocusNode?.dispose();
    proTypeController?.dispose();

    nofRoomFocusNode?.dispose();
    nofRoomController?.dispose();

    nofWRoomFocusNode?.dispose();
    nofWRoomController?.dispose();

    proDesFocusNode?.dispose();
    proDesController?.dispose();

    sqftFocusNode?.dispose();
    sqftController?.dispose();

    secDepFocusNode?.dispose();
    secDepController?.dispose();

    rentValueFocusNode?.dispose();
    rentValueController?.dispose();

    landConFocusNode?.dispose();
    landConController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
