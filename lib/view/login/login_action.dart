import 'package:eden_farm/controller/login_controller.dart';
import 'package:eden_farm/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAction extends StatelessWidget {
  const LoginAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              bool login = await loginController.login();
              if (login) {
                Get.offAndToNamed('/home');
              }
            },
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text('Or'),
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () => Get.toNamed('/register'),
          behavior: HitTestBehavior.opaque,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don’t have an account yet? ',
              ),
              Text(
                'Register',
                style: TextStyle(color: ColorHelper.purple),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
