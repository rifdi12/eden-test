import 'package:eden_farm/controller/register_controller.dart';
import 'package:eden_farm/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterController registerController = Get.find();
    return Column(
      children: [
        TextFormField(
          controller: registerController.firstNameController,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person), hintText: 'First Name'),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: registerController.lastNameController,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person), hintText: 'Last Name'),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: registerController.heightController,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.numbers), hintText: 'Height'),
        ),
        const SizedBox(
          height: 15,
        ),
        Obx(
          () => DropdownButtonFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.female,
                ),
                fillColor: ColorHelper.gray01.withOpacity(.1),
                filled: true,
                hintStyle: TextStyle(fontSize: 12, color: ColorHelper.gray01),
                prefixIconColor: ColorHelper.gray01.withOpacity(.5),
                border: InputBorder.none),
            hint: const Text("Select The Gender"),
            value: registerController.valGender.value,
            items: registerController.listGender.map((value) {
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            }).toList(),
            onChanged: (value) {
              registerController.valGender.value = value as String;
              registerController.update();
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Obx(
          () => TextFormField(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2100));

              if (pickedDate != null) {
                registerController.dateBirthController.value.text =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
              } else {}
            },
            readOnly: true,
            controller: registerController.dateBirthController.value,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.calendar_today),
                hintText: 'Tanggal lahir'),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: registerController.emailController,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email), hintText: 'Email'),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: registerController.passwordController,
          obscureText: true,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock), hintText: 'Password'),
        ),
      ],
    );
  }
}
