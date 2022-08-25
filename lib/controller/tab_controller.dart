import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController;
  final tabs = ["Stats", "Graphs"];
  @override
  void onInit() {
    // TODO: implement onInit
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }

  init() {
    tabController = TabController(length: tabs.length, vsync: this);
  }

  dispose() {
    tabController.dispose();
  }
}
