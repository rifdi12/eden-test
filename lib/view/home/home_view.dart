import 'package:eden_farm/controller/home_controller.dart';
import 'package:eden_farm/view/home/home_dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Get.toNamed("/home/add");
        },
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: DashboardView(),
        ),
      ),
    );
  }
}
