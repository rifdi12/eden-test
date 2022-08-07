import 'package:eden_farm/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    return Column(
      children: [
        TextFormField(
          controller: loginController.emailController,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email), hintText: 'Email'),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: loginController.passwordController,
          obscureText: true,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock), hintText: 'Password'),
        ),
      ],
    );
  }
}
