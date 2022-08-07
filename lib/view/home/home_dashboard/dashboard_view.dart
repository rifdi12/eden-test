import 'package:eden_farm/view/home/home_dashboard/dashboard_activity.dart';
import 'package:eden_farm/view/home/home_dashboard/dashboard_title.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DashboardTitle(),
        DashboardActivity(),
      ],
    );
  }
}
