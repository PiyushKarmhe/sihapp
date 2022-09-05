import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sih/models/dashboard_data.dart';

import '../config/colors.dart';

class DataController extends GetxController {
  RxList<DashboardData> data = <DashboardData>[
    DashboardData(
      "Total Institute",
      "कुल संस्थान",
      "8997",
      Icons.home_outlined,
      AppColor.red,
    ),
    DashboardData(
      "New Institute",
      "नए संस्थान",
      "195",
      Icons.home,
      AppColor.pink,
    ),
    DashboardData(
      "Closed Institute",
      "बंद संस्थान",
      "8",
      Icons.abc,
      AppColor.yellow,
    ),
    DashboardData(
      "Total Intake",
      "कुल सेवन",
      "2975577",
      Icons.abc,
      AppColor.green,
    ),
    DashboardData("Girl's Enrolment", "लड़कियों का नामांकन", "482324",
        Icons.home_outlined, AppColor.red),
    DashboardData("Boy's Enrolment", "लड़के का नामांकन", "1115646", Icons.home,
        AppColor.pink),
    DashboardData("Faculties", "शिक्षा संकाय", "", Icons.abc, AppColor.yellow),
    DashboardData(
        "Students Passed", "छात्र उत्तीर्ण", "#", Icons.abc, AppColor.green),
    DashboardData("Placement", "प्लेसमेंट", "815223", Icons.abc, AppColor.red)
  ].obs;

  void updateDashBoardData(list) {
    data[0].value = list[0].toString();
    data[1].value = list[1].toString();
    data[2].value = list[2].toString();
    data[3].value = list[3].toString();
    data[4].value = list[4].toString();
    data[5].value = list[5].toString();
    data[6].value = list[6].toString();
    data[7].value = list[7].toString();
    data[8].value = list[8].toString();
  }
}
