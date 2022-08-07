import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eden_farm/helper/get_storage.dart';
import 'package:eden_farm/repository/home_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<bool> login() async {
    try {
      final User? user = (await auth.signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text))
          .user;

      GetStorageHelper().write(GetStorageHelper.USER_ID, user?.uid);
      QuerySnapshot<Map<String, dynamic>>? getData =
          await HomeRepository.getDataUser(GetStorageHelper().getUserId());
      GetStorageHelper().write(GetStorageHelper.FULL_NAME,
          "${getData!.docs.first.data()["firstName"]} ${getData.docs.first.data()["lastName"]}");
      update();

      return true;
    } catch (e) {
      Get.snackbar("Error", e.toString());
      return false;
    }
  }
}
