import 'package:ecommerce_mobile_app/core/navigation/app_router.dart';
import 'package:ecommerce_mobile_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: AppRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme,
    ),
  );
}
