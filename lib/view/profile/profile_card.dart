import 'package:eden_farm/helper/color.dart';
import 'package:eden_farm/helper/get_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${GetStorageHelper().getUserName()}",
            style: TextStyle(
                color: ColorHelper.black,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 50,
            width: Get.width,
            child: ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                await Get.deleteAll();
                GetStorageHelper().clear();
                Get.offAndToNamed("/login");
              },
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
