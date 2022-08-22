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
        titleMedium: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        )),
  );

  // Dark theme
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.black,
    colorScheme: const ColorScheme.light(
      primary: AppColor.lightYellow,
      onPrimary: AppColor.white,
      secondary: AppColor.lightBlue,
    ),
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Color(0xFFD4D8E3),
          fontSize: 28.0,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: TextStyle(
          color: Color(0xFFD4D8E3),
          fontSize: 18.0,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
        titleLarge: TextStyle(
          color: Colors.white,
          fontSize: 31,
          fontWeight: FontWeight.w900,
        )),
  );
}
