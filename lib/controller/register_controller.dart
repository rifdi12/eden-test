import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eden_farm/helper/get_storage.dart';
import 'package:eden_farm/repository/home_repository.dart';
import 'package:eden_farm/repository/register_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final valGender = "Male".obs;
  List listGender = ["Male", "Female"];
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  final dateBirthController = TextEditingController().obs;

  Future<bool> register() async {
    try {
      final User? user = (await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      ))
          .user;
      RegisterRepository.register(data: {
        "email": user?.email ?? "-",
        "firstName": firstNameController.text,
        "lastName": lastNameController.text,
        "id": user?.uid,
        "height": heightController.text,
        "gender": valGender.value,
        "birthDate": dateBirthController.value.text
      });

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
