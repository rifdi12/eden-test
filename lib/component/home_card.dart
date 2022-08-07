import 'package:eden_farm/controller/home_controller.dart';
import 'package:eden_farm/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDashboardCard extends StatelessWidget {
  final String date;
  final double weight;
  final String docId;
  const HomeDashboardCard(
      {Key? key, required this.date, required this.weight, required this.docId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return ListTile(
      title: Text(
        date,
        style: TextStyle(
            color: ColorHelper.black,
            fontSize: 14,
            fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        "$weight Kg",
        style: TextStyle(
            color: ColorHelper.black,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      trailing: PopupMenuButton(
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
          const PopupMenuItem(
            child: Text('Edit'),
          ),
          PopupMenuItem(
            child: const Text('Delete'),
            onTap: () {
              homeController.deleteData(docId);
            },
          ),
        ],
      ),
    );
  }
}
