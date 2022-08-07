import 'package:eden_farm/controller/login_controller.dart';
import 'package:eden_farm/view/login/login_action.dart';
import 'package:eden_farm/view/login/login_form.dart';
import 'package:eden_farm/view/login/login_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
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
                LoginTitle(),
                SizedBox(
                  height: 30,
                ),
                LoginForm(),
                SizedBox(
                  height: 20,
                ),
                LoginAction()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
