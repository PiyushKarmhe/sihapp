import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih/models/dashboard_data.dart';

import '../config/colors.dart';

class DataController extends GetxController {
  RxList<DashboardData> data = <DashboardData>[
    const DashboardData(
      "Total Institute",
      "8997",
      Icons.home_outlined,
      AppColor.red,
    ),
    const DashboardData(
      "New Institute",
      "195",
      Icons.home,
      AppColor.pink,
    ),
    const DashboardData(
      "Closed Institute",
      "8",
      Icons.abc,
      AppColor.yellow,
    ),
    const DashboardData(
      "Total Intake",
      "2975577",
      Icons.abc,
      AppColor.green,
    ),
    const DashboardData(
      "Girl's Enrolment",
      "482324", 
      Icons.home_outlined,
      AppColor.red),
      const DashboardData(
      "Boy's Enrolment",
      "1115646",
      Icons.home, 
      AppColor.pink),
      const DashboardData(
      "Faculties", 
      "", 
      Icons.abc, 
      AppColor.yellow),
      const DashboardData(
      "Students Passed", 
      "#", 
      Icons.abc, 
      AppColor.green),
      const DashboardData(
      "Placement", 
      "815223", 
      Icons.abc, 
      AppColor.red)
  ].obs;
}
