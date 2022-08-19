import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:sih/config/theme.dart';
import 'package:sih/view/main_activity.dart';
import 'package:sih/widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const MainActivity(),
    );
  }
}
