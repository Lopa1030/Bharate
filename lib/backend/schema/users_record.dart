import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "dob" field.
  DateTime? _dob;
  DateTime? get dob => _dob;
  bool hasDob() => _dob != null;

  // "nid" field.
  int? _nid;
  int get nid => _nid ?? 0;
  bool hasNid() => _nid != null;

  // "pass" field.
  String? _pass;
  String get pass => _pass ?? '';
  bool hasPass() => _pass != null;

  // "lnd_tnt" field.
  String? _lndTnt;
  String get lndTnt => _lndTnt ?? '';
  bool hasLndTnt() => _lndTnt != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _dob = snapshotData['dob'] as DateTime?;
    _nid = castToType<int>(snapshotData['nid']);
    _pass = snapshotData['pass'] as String?;
    _lndTnt = snapshotData['lnd_tnt'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  DateTime? dob,
  int? nid,
  String? pass,
  String? lndTnt,
  String? uid,
  String? phoneNumber,
  String? imageUrl,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'dob': dob,
      'nid': nid,
      'pass': pass,
      'lnd_tnt': lndTnt,
      'uid': uid,
      'phone_number': phoneNumber,
      'imageUrl': imageUrl,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.dob == e2?.dob &&
        e1?.nid == e2?.nid &&
        e1?.pass == e2?.pass &&
        e1?.lndTnt == e2?.lndTnt &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.dob,
        e?.nid,
        e?.pass,
        e?.lndTnt,
        e?.uid,
        e?.phoneNumber,
        e?.imageUrl,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
