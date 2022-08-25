import 'package:flutter/material.dart';
import 'package:sih/config/colors.dart';

class AppTheme {
  AppTheme._();

  // Light theme
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme.light(
      primary: AppColor.yellow,
      onPrimary: Colors.black,
      secondary: AppColor.lightBlue,
      secondaryContainer: AppColor.lightBlue1,
    ),
    cardTheme: const CardTheme(
      color: Colors.teal,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    secondaryHeaderColor: AppColor.lightBlue,
    textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: AppColor.darkBlue,
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: TextStyle(
          color: Color(0xFFD4D8E3),
          fontSize: 18.0,
        ),
        titleSmall: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22,
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

  // Dark theme
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme.light(
      primary: AppColor.yellow,
      onPrimary: AppColor.white,
      secondary: AppColor.lightBlue,
      secondaryContainer: AppColor.grey,
    ),
    secondaryHeaderColor: AppColor.grey,
    cardTheme: const CardTheme(
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white54,
    ),
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Color(0xFFD4D8E3),
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: TextStyle(
          color: Color(0xFFD4D8E3),
          fontSize: 18.0,
        ),
        titleSmall: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
        titleMedium: TextStyle(
          color: AppColor.white,
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
