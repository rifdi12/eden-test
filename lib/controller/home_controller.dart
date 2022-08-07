import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eden_farm/helper/get_storage.dart';
import 'package:eden_farm/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final dateController = TextEditingController().obs;
  TextEditingController weightController = TextEditingController();

  final data = <QueryDocumentSnapshot<Map<String, dynamic>>>[].obs;
  getData() async {
    QuerySnapshot<Map<String, dynamic>>? getData =
        await HomeRepository.getData(GetStorageHelper().getUserId());
    data.value = getData!.docs;
    update();
  }

  inputData() async {
    HomeRepository.inputData(data: {
      "date": dateController.value.text,
      "weight": weightController.text,
      "user_id": GetStorageHelper().getUserId()
    });
    getData();
    Get.back();
  }

  deleteData(docId) async {
    HomeRepository.deleteData(docId: docId);
    getData();
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
