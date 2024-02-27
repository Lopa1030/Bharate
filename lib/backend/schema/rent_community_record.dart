import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RentCommunityRecord extends FirestoreRecord {
  RentCommunityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comAddress" field.
  String? _comAddress;
  String get comAddress => _comAddress ?? '';
  bool hasComAddress() => _comAddress != null;

  // "comRent" field.
  String? _comRent;
  String get comRent => _comRent ?? '';
  bool hasComRent() => _comRent != null;

  // "comDetails" field.
  String? _comDetails;
  String get comDetails => _comDetails ?? '';
  bool hasComDetails() => _comDetails != null;

  // "comDimension" field.
  int? _comDimension;
  int get comDimension => _comDimension ?? 0;
  bool hasComDimension() => _comDimension != null;

  // "comBookPayy" field.
  int? _comBookPayy;
  int get comBookPayy => _comBookPayy ?? 0;
  bool hasComBookPayy() => _comBookPayy != null;

  // "comRent4Hr" field.
  int? _comRent4Hr;
  int get comRent4Hr => _comRent4Hr ?? 0;
  bool hasComRent4Hr() => _comRent4Hr != null;

  // "comRentAfterXtra" field.
  int? _comRentAfterXtra;
  int get comRentAfterXtra => _comRentAfterXtra ?? 0;
  bool hasComRentAfterXtra() => _comRentAfterXtra != null;

  // "comContactMan" field.
  int? _comContactMan;
  int get comContactMan => _comContactMan ?? 0;
  bool hasComContactMan() => _comContactMan != null;

  // "comimageUrl" field.
  List<String>? _comimageUrl;
  List<String> get comimageUrl => _comimageUrl ?? const [];
  bool hasComimageUrl() => _comimageUrl != null;

  // "comDocRefer" field.
  DocumentReference? _comDocRefer;
  DocumentReference? get comDocRefer => _comDocRefer;
  bool hasComDocRefer() => _comDocRefer != null;

  // "comDocComment" field.
  List<DocumentReference>? _comDocComment;
  List<DocumentReference> get comDocComment => _comDocComment ?? const [];
  bool hasComDocComment() => _comDocComment != null;

  // "compostsComment" field.
  List<String>? _compostsComment;
  List<String> get compostsComment => _compostsComment ?? const [];
  bool hasCompostsComment() => _compostsComment != null;

  // "timestamp" field.
  List<DateTime>? _timestamp;
  List<DateTime> get timestamp => _timestamp ?? const [];
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _comAddress = snapshotData['comAddress'] as String?;
    _comRent = snapshotData['comRent'] as String?;
    _comDetails = snapshotData['comDetails'] as String?;
    _comDimension = castToType<int>(snapshotData['comDimension']);
    _comBookPayy = castToType<int>(snapshotData['comBookPayy']);
    _comRent4Hr = castToType<int>(snapshotData['comRent4Hr']);
    _comRentAfterXtra = castToType<int>(snapshotData['comRentAfterXtra']);
    _comContactMan = castToType<int>(snapshotData['comContactMan']);
    _comimageUrl = getDataList(snapshotData['comimageUrl']);
    _comDocRefer = snapshotData['comDocRefer'] as DocumentReference?;
    _comDocComment = getDataList(snapshotData['comDocComment']);
    _compostsComment = getDataList(snapshotData['compostsComment']);
    _timestamp = getDataList(snapshotData['timestamp']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rentCommunity');

  static Stream<RentCommunityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RentCommunityRecord.fromSnapshot(s));

  static Future<RentCommunityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RentCommunityRecord.fromSnapshot(s));

  static RentCommunityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RentCommunityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RentCommunityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RentCommunityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RentCommunityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RentCommunityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRentCommunityRecordData({
  String? comAddress,
  String? comRent,
  String? comDetails,
  int? comDimension,
  int? comBookPayy,
  int? comRent4Hr,
  int? comRentAfterXtra,
  int? comContactMan,
  DocumentReference? comDocRefer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comAddress': comAddress,
      'comRent': comRent,
      'comDetails': comDetails,
      'comDimension': comDimension,
      'comBookPayy': comBookPayy,
      'comRent4Hr': comRent4Hr,
      'comRentAfterXtra': comRentAfterXtra,
      'comContactMan': comContactMan,
      'comDocRefer': comDocRefer,
    }.withoutNulls,
  );

  return firestoreData;
}

class RentCommunityRecordDocumentEquality
    implements Equality<RentCommunityRecord> {
  const RentCommunityRecordDocumentEquality();

  @override
  bool equals(RentCommunityRecord? e1, RentCommunityRecord? e2) {
    const listEquality = ListEquality();
    return e1?.comAddress == e2?.comAddress &&
        e1?.comRent == e2?.comRent &&
        e1?.comDetails == e2?.comDetails &&
        e1?.comDimension == e2?.comDimension &&
        e1?.comBookPayy == e2?.comBookPayy &&
        e1?.comRent4Hr == e2?.comRent4Hr &&
        e1?.comRentAfterXtra == e2?.comRentAfterXtra &&
        e1?.comContactMan == e2?.comContactMan &&
        listEquality.equals(e1?.comimageUrl, e2?.comimageUrl) &&
        e1?.comDocRefer == e2?.comDocRefer &&
        listEquality.equals(e1?.comDocComment, e2?.comDocComment) &&
        listEquality.equals(e1?.compostsComment, e2?.compostsComment) &&
        listEquality.equals(e1?.timestamp, e2?.timestamp);
  }

  @override
  int hash(RentCommunityRecord? e) => const ListEquality().hash([
        e?.comAddress,
        e?.comRent,
        e?.comDetails,
        e?.comDimension,
        e?.comBookPayy,
        e?.comRent4Hr,
        e?.comRentAfterXtra,
        e?.comContactMan,
        e?.comimageUrl,
        e?.comDocRefer,
        e?.comDocComment,
        e?.compostsComment,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is RentCommunityRecord;
}
