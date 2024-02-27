import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'community_advertise_widget.dart' show CommunityAdvertiseWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommunityAdvertiseModel
    extends FlutterFlowModel<CommunityAdvertiseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CommAddress widget.
  FocusNode? commAddressFocusNode;
  TextEditingController? commAddressController;
  String? Function(BuildContext, String?)? commAddressControllerValidator;
  // State field(s) for EventType widget.
  FocusNode? eventTypeFocusNode;
  TextEditingController? eventTypeController;
  String? Function(BuildContext, String?)? eventTypeControllerValidator;
  // State field(s) for evntDes widget.
  FocusNode? evntDesFocusNode;
  TextEditingController? evntDesController;
  String? Function(BuildContext, String?)? evntDesControllerValidator;
  // State field(s) for eventSqft widget.
  FocusNode? eventSqftFocusNode;
  TextEditingController? eventSqftController;
  String? Function(BuildContext, String?)? eventSqftControllerValidator;
  // State field(s) for bookingDep widget.
  FocusNode? bookingDepFocusNode;
  TextEditingController? bookingDepController;
  String? Function(BuildContext, String?)? bookingDepControllerValidator;
  // State field(s) for eventRent widget.
  FocusNode? eventRentFocusNode;
  TextEditingController? eventRentController;
  String? Function(BuildContext, String?)? eventRentControllerValidator;
  // State field(s) for eventratenPHextra widget.
  FocusNode? eventratenPHextraFocusNode;
  TextEditingController? eventratenPHextraController;
  String? Function(BuildContext, String?)? eventratenPHextraControllerValidator;
  // State field(s) for eventmanacontract widget.
  FocusNode? eventmanacontractFocusNode;
  TextEditingController? eventmanacontractController;
  String? Function(BuildContext, String?)? eventmanacontractControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    commAddressFocusNode?.dispose();
    commAddressController?.dispose();

    eventTypeFocusNode?.dispose();
    eventTypeController?.dispose();

    evntDesFocusNode?.dispose();
    evntDesController?.dispose();

    eventSqftFocusNode?.dispose();
    eventSqftController?.dispose();

    bookingDepFocusNode?.dispose();
    bookingDepController?.dispose();

    eventRentFocusNode?.dispose();
    eventRentController?.dispose();

    eventratenPHextraFocusNode?.dispose();
    eventratenPHextraController?.dispose();

    eventmanacontractFocusNode?.dispose();
    eventmanacontractController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
