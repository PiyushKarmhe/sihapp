import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih/config/colors.dart';

class DashboardData {
  final String enTitle;
  final String hnTitle;
  final String value;
  final IconData icon;
  final Color color;

  const DashboardData(
      this.enTitle, this.hnTitle, this.value, this.icon, this.color);
}
