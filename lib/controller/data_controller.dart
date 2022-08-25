import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih/models/dashboard_data.dart';

import '../config/colors.dart';

class DataController extends GetxController {
  RxList<DashboardData> data = <DashboardData>[
    const DashboardData(
      "Total Institute",
      "9812010",
      Icons.home_outlined,
      AppColor.red,
    ),
    const DashboardData(
      "New Institute",
      "132",
      Icons.home,
      AppColor.pink,
    ),
    const DashboardData(
      "Total Institute",
      "9812010",
      Icons.abc,
      AppColor.yellow,
    ),
    const DashboardData(
      "Total Institute",
      "9812010",
      Icons.abc,
      AppColor.green,
    ),
  ].obs;
}
