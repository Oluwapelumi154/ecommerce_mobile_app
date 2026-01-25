import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData AppTheme = ThemeData(
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
    displayLarge: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    bodyMedium: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    displayMedium: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
  ),
);
