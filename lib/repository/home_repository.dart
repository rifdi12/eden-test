import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eden_farm/helper/get_storage.dart';
import 'package:get/get.dart';

class HomeRepository {
  static Future<QuerySnapshot<Map<String, dynamic>>?>? getDataUser(
      String id) async {
    try {
      print(GetStorageHelper().getUserId());
      final document = FirebaseFirestore.instance.collection("users");
      return await document
          .where("id", isEqualTo: GetStorageHelper().getUserId())
          .get();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
    return null;
  }

  static Future<QuerySnapshot<Map<String, dynamic>>?>? getData(
      String id) async {
    try {
      final document = FirebaseFirestore.instance.collection("data");
      return await document
          .where("user_id", isEqualTo: GetStorageHelper().getUserId())
          .get();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
    return null;
  }

  static inputData({required Map<String, dynamic> data}) {
    try {
      return FirebaseFirestore.instance.collection("data").add(data);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  static deleteData({required String docId}) {
    try {
      return FirebaseFirestore.instance.collection("data").doc(docId).delete();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
