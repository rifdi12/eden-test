import 'package:eden_farm/helper/color.dart';
import 'package:flutter/material.dart';

class RegisterTitle extends StatelessWidget {
  const RegisterTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hey there',
          style: TextStyle(color: ColorHelper.black, fontSize: 16),
        ),
        Text(
          'Create an Account',
          style: TextStyle(
              color: ColorHelper.black,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ],
    );
  }
}
