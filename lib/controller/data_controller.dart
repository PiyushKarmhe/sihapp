import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih/models/dashboard_data.dart';

import '../config/colors.dart';

class DataController extends GetxController {
  RxList<DashboardData> data = <DashboardData>[
    const DashboardData(
      "Total Institute",
      "कुल संस्थान",
      "8997",
      Icons.home_outlined,
      AppColor.red,
    ),
    const DashboardData(
      "New Institute",
      "नए संस्थान",
      "195",
      Icons.home,
      AppColor.pink,
    ),
    const DashboardData(
      "Closed Institute",
      "बंद संस्थान",
      "8",
      Icons.abc,
      AppColor.yellow,
    ),
    const DashboardData(
      "Total Intake",
      "कुल सेवन",
      "2975577",
      Icons.abc,
      AppColor.green,
    ),
    const DashboardData("Girl's Enrolment", "लड़कियों का नामांकन", "482324",
        Icons.home_outlined, AppColor.red),
    const DashboardData("Boy's Enrolment", "लड़के का नामांकन", "1115646",
        Icons.home, AppColor.pink),
    const DashboardData(
        "Faculties", "शिक्षा संकाय", "", Icons.abc, AppColor.yellow),
    const DashboardData(
        "Students Passed", "छात्र उत्तीर्ण", "#", Icons.abc, AppColor.green),
    const DashboardData(
        "Placement", "प्लेसमेंट", "815223", Icons.abc, AppColor.red)
  ].obs;
}
