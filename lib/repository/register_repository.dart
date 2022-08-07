import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterRepository {
  static register({required Map<String, dynamic> data}) {
    return FirebaseFirestore.instance
        .collection("users")
        .doc(data["id"])
        .set(data);
  }
}
