import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const String fontFamily = "Inter";
  static ThemeData lightTheme = ThemeData(
    fontFamily: fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    splashColor: AppColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
      error: AppColors.red,
      onError: AppColors.white,
    ),
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
      ),
      titleLarge: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
      ),
      titleSmall: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        fontFamily: fontFamily,
      ),
      bodyMedium: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
      ),
      displayMedium: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: fontFamily,
      ),
    ),
  );
}
