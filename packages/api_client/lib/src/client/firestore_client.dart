import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreClient {
  final FirebaseFirestore _db;

  FirestoreClient(FirebaseFirestore? db)
      : _db = db ?? FirebaseFirestore.instance;
}
