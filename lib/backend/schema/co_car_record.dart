import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoCarRecord extends FirestoreRecord {
  CoCarRecord._(
    super.reference,
    super.data,
  ) {
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

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "profilepicture" field.
  String? _profilepicture;
  String get profilepicture => _profilepicture ?? '';
  bool hasProfilepicture() => _profilepicture != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _profilepicture = snapshotData['profilepicture'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Co-Car');

  static Stream<CoCarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoCarRecord.fromSnapshot(s));

  static Future<CoCarRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoCarRecord.fromSnapshot(s));

  static CoCarRecord fromSnapshot(DocumentSnapshot snapshot) => CoCarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoCarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoCarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoCarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoCarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoCarRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? profilepicture,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'profilepicture': profilepicture,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoCarRecordDocumentEquality implements Equality<CoCarRecord> {
  const CoCarRecordDocumentEquality();

  @override
  bool equals(CoCarRecord? e1, CoCarRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.profilepicture == e2?.profilepicture;
  }

  @override
  int hash(CoCarRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.profilepicture
      ]);

  @override
  bool isValidKey(Object? o) => o is CoCarRecord;
}
