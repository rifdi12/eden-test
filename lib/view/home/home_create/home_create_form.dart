import 'package:eden_farm/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeCreateForm extends StatelessWidget {
  const HomeCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
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
                  homeController.dateController.value.text =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                } else {}
              },
              readOnly: true,
              controller: homeController.dateController.value,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today), hintText: 'Tanggal'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: homeController.weightController,
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.numbers), hintText: 'Berat Badan'),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: Get.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                homeController.inputData();
              },
              child: const Text(
                "Tambahkan sekarang",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
