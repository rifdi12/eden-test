import 'package:eden_farm/controller/register_controller.dart';
import 'package:eden_farm/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterAction extends StatelessWidget {
  const RegisterAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.find();
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              bool register = await registerController.register();
              if (register) {
                Get.offAndToNamed('/home');
              }
            },
            child: const Text(
              'Register',
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
          onTap: () => Get.back(),
          behavior: HitTestBehavior.opaque,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account? ',
              ),
              Text(
                'Login',
                style: TextStyle(color: ColorHelper.purple),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
