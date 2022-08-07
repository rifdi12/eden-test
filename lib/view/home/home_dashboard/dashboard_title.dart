import 'package:eden_farm/helper/color.dart';
import 'package:eden_farm/helper/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardTitle extends StatelessWidget {
  const DashboardTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(color: ColorHelper.gray01),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "${GetStorageHelper().getUserName()}",
                style: TextStyle(
                    color: ColorHelper.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: ColorHelper.purple,
                borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              onPressed: () {
                Get.toNamed("/profile");
              },
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
