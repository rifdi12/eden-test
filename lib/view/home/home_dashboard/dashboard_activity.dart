import 'package:eden_farm/component/home_card.dart';
import 'package:eden_farm/controller/home_controller.dart';
import 'package:eden_farm/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DashboardActivity extends StatelessWidget {
  const DashboardActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Obx(
        () => homeController.data.isEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Activity Status",
                    style: TextStyle(
                        color: ColorHelper.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Center(
                    child: Image.asset(
                      "asset/group.png",
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      "Belum ada data yang ditambahkan",
                      style: TextStyle(
                          color: ColorHelper.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: Get.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/home/add");
                      },
                      child: const Text(
                        "Tambahkan sekarang",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            : ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: homeController.data.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  DateTime dateTime =
                      DateTime.parse(homeController.data[index].data()["date"]);
                  DateFormat dateFormat = DateFormat('EEEE, dd MMMM yyyy');
                  return HomeDashboardCard(
                    date: dateFormat.format(dateTime),
                    docId: homeController.data[index].id,
                    weight: double.parse(
                        homeController.data[index].data()["weight"]),
                  );
                },
              ),
      ),
    );
  }
}
