import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageUrlRecord extends FirestoreRecord {
  ImageUrlRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _imageUrl = snapshotData['imageUrl'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ImageUrl')
          : FirebaseFirestore.instance.collectionGroup('ImageUrl');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ImageUrl').doc(id);

  static Stream<ImageUrlRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImageUrlRecord.fromSnapshot(s));

  static Future<ImageUrlRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImageUrlRecord.fromSnapshot(s));

  static ImageUrlRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImageUrlRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImageUrlRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImageUrlRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImageUrlRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImageUrlRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImageUrlRecordData({
  String? imageUrl,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imageUrl': imageUrl,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImageUrlRecordDocumentEquality implements Equality<ImageUrlRecord> {
  const ImageUrlRecordDocumentEquality();

  @override
  bool equals(ImageUrlRecord? e1, ImageUrlRecord? e2) {
    return e1?.imageUrl == e2?.imageUrl && e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(ImageUrlRecord? e) =>
      const ListEquality().hash([e?.imageUrl, e?.photoUrl]);

  @override
  bool isValidKey(Object? o) => o is ImageUrlRecord;
}
