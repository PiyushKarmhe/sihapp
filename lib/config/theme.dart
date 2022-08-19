import 'package:flutter/material.dart';
import 'package:sih/config/colors.dart';

class AppTheme {
  AppTheme._();

  // Light theme
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.lightBlue,
    colorScheme: const ColorScheme.light(
      primary: AppColor.lightBlue,
      onPrimary: Colors.black,
      secondary: AppColor.lightBlue,
    ),
    cardTheme: const CardTheme(
      color: Colors.teal,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
      ),
      displayMedium: TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    ),
  );

  // Dark theme
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.light(
      primary: AppColor.lightBlue,
      onPrimary: Colors.black,
      secondary: Colors.red,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
  );
}
