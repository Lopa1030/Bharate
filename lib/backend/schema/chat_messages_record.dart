import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessagesRecord extends FirestoreRecord {
  ChatMessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "message_time" field.
  DateTime? _messageTime;
  DateTime? get messageTime => _messageTime;
  bool hasMessageTime() => _messageTime != null;

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  bool hasChat() => _chat != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _messageTime = snapshotData['message_time'] as DateTime?;
    _chat = snapshotData['chat'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _text = snapshotData['text'] as String?;
    _image = snapshotData['image'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages');

  static Stream<ChatMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessagesRecord.fromSnapshot(s));

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessagesRecord.fromSnapshot(s));

  static ChatMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessagesRecordData({
  String? message,
  DateTime? messageTime,
  DocumentReference? chat,
  DocumentReference? user,
  String? text,
  String? image,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'message_time': messageTime,
      'chat': chat,
      'user': user,
      'text': text,
      'image': image,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessagesRecordDocumentEquality
    implements Equality<ChatMessagesRecord> {
  const ChatMessagesRecordDocumentEquality();

  @override
  bool equals(ChatMessagesRecord? e1, ChatMessagesRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.messageTime == e2?.messageTime &&
        e1?.chat == e2?.chat &&
        e1?.user == e2?.user &&
        e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(ChatMessagesRecord? e) => const ListEquality().hash([
        e?.message,
        e?.messageTime,
        e?.chat,
        e?.user,
        e?.text,
        e?.image,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatMessagesRecord;
}
