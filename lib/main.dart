import 'package:flutter/material.dart';
import 'package:sih/config/theme.dart';
import 'package:sih/view/main_activity.dart';

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
      home: MainActivity(),
    );
  }
}
