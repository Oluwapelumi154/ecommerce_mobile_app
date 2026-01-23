import 'package:ecommerce_mobile_app/features/cart/presentation/pages/cart_page.dart';
import 'package:ecommerce_mobile_app/features/home/presentation/pages/home_page.dart';
import 'package:ecommerce_mobile_app/features/product/presentation/pages/product_detail.dart';
import 'package:ecommerce_mobile_app/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: non_constant_identifier_names
final AppRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/splash",
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: "/home",
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ProductDetailPage();
      },
    ),
    GoRoute(
      path: "/cart",
      builder: (BuildContext context, GoRouterState state) {
        return CartPage();
      },
    ),
  ],
);
