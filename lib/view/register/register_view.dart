import 'package:eden_farm/controller/register_controller.dart';
import 'package:eden_farm/view/register/register_action.dart';
import 'package:eden_farm/view/register/register_form.dart';
import 'package:eden_farm/view/register/register_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                RegisterTitle(),
                SizedBox(
                  height: 30,
                ),
                RegisterForm(),
                SizedBox(
                  height: 20,
                ),
                RegisterAction()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
