import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RentadsRecord extends FirestoreRecord {
  RentadsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "bedrooms" field.
  int? _bedrooms;
  int get bedrooms => _bedrooms ?? 0;
  bool hasBedrooms() => _bedrooms != null;

  // "bathrooms" field.
  int? _bathrooms;
  int get bathrooms => _bathrooms ?? 0;
  bool hasBathrooms() => _bathrooms != null;

  // "sqft" field.
  int? _sqft;
  int get sqft => _sqft ?? 0;
  bool hasSqft() => _sqft != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "secDeposit" field.
  int? _secDeposit;
  int get secDeposit => _secDeposit ?? 0;
  bool hasSecDeposit() => _secDeposit != null;

  // "proType" field.
  String? _proType;
  String get proType => _proType ?? '';
  bool hasProType() => _proType != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "contact" field.
  int? _contact;
  int get contact => _contact ?? 0;
  bool hasContact() => _contact != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "photo_url_list" field.
  List<String>? _photoUrlList;
  List<String> get photoUrlList => _photoUrlList ?? const [];
  bool hasPhotoUrlList() => _photoUrlList != null;

  // "docRefer" field.
  DocumentReference? _docRefer;
  DocumentReference? get docRefer => _docRefer;
  bool hasDocRefer() => _docRefer != null;

  void _initializeFields() {
    _price = castToType<double>(snapshotData['price']);
    _bedrooms = castToType<int>(snapshotData['bedrooms']);
    _bathrooms = castToType<int>(snapshotData['bathrooms']);
    _sqft = castToType<int>(snapshotData['sqft']);
    _description = snapshotData['description'] as String?;
    _address = snapshotData['address'] as String?;
    _secDeposit = castToType<int>(snapshotData['secDeposit']);
    _proType = snapshotData['proType'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _uid = snapshotData['uid'] as String?;
    _contact = castToType<int>(snapshotData['contact']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _photoUrlList = getDataList(snapshotData['photo_url_list']);
    _docRefer = snapshotData['docRefer'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rentads');

  static Stream<RentadsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RentadsRecord.fromSnapshot(s));

  static Future<RentadsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RentadsRecord.fromSnapshot(s));

  static RentadsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RentadsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RentadsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RentadsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RentadsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RentadsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRentadsRecordData({
  double? price,
  int? bedrooms,
  int? bathrooms,
  int? sqft,
  String? description,
  String? address,
  int? secDeposit,
  String? proType,
  String? imageUrl,
  String? uid,
  int? contact,
  String? photoUrl,
  DocumentReference? docRefer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'sqft': sqft,
      'description': description,
      'address': address,
      'secDeposit': secDeposit,
      'proType': proType,
      'imageUrl': imageUrl,
      'uid': uid,
      'contact': contact,
      'photo_url': photoUrl,
      'docRefer': docRefer,
    }.withoutNulls,
  );

  return firestoreData;
}

class RentadsRecordDocumentEquality implements Equality<RentadsRecord> {
  const RentadsRecordDocumentEquality();

  @override
  bool equals(RentadsRecord? e1, RentadsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.price == e2?.price &&
        e1?.bedrooms == e2?.bedrooms &&
        e1?.bathrooms == e2?.bathrooms &&
        e1?.sqft == e2?.sqft &&
        e1?.description == e2?.description &&
        e1?.address == e2?.address &&
        e1?.secDeposit == e2?.secDeposit &&
        e1?.proType == e2?.proType &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.uid == e2?.uid &&
        e1?.contact == e2?.contact &&
        e1?.photoUrl == e2?.photoUrl &&
        listEquality.equals(e1?.photoUrlList, e2?.photoUrlList) &&
        e1?.docRefer == e2?.docRefer;
  }

  @override
  int hash(RentadsRecord? e) => const ListEquality().hash([
        e?.price,
        e?.bedrooms,
        e?.bathrooms,
        e?.sqft,
        e?.description,
        e?.address,
        e?.secDeposit,
        e?.proType,
        e?.imageUrl,
        e?.uid,
        e?.contact,
        e?.photoUrl,
        e?.photoUrlList,
        e?.docRefer
      ]);

  @override
  bool isValidKey(Object? o) => o is RentadsRecord;
}
