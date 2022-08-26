import 'package:flutter/material.dart';

class AnalysisPageController {
  late final TabController tabController;

  final tabs = ["Stats", "Graph"];

  dispose() {
    tabController.dispose();
  }
}
