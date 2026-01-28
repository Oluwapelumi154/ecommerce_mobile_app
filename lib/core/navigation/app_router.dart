import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/shared/scalfold_with_bottom_bar.dart';
import 'package:ecommerce_mobile_app/features/auth/presentation/pages/sign_in.dart';
import 'package:ecommerce_mobile_app/features/auth/presentation/pages/sign_up.dart';
import 'package:ecommerce_mobile_app/features/cart/presentation/pages/cart_page.dart';
import 'package:ecommerce_mobile_app/features/home/presentation/pages/home_page.dart';
import 'package:ecommerce_mobile_app/features/product/presentation/pages/product_detail.dart';
import 'package:ecommerce_mobile_app/features/profile/presentation/pages/profile_page.dart';
import 'package:ecommerce_mobile_app/features/search/presentation/pages/product_search.dart';
import 'package:ecommerce_mobile_app/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: non_constant_identifier_names
final AppRouter = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => ScaffoldWithBottomBar(child: child),
      routes: [
        GoRoute(
          path: RoutePaths.home,
          builder: (BuildContext context, GoRouterState state) {
            return HomePage();
          },
        ),
      ],
    ),
    GoRoute(
      path: RoutePaths.splash,
      builder: (BuildContext context, GoRouterState state) {
        return SplashPage();
      },
    ),
    GoRoute(
      path: RoutePaths.profile,
      builder: (BuildContext context, GoRouterState state) {
        return ProfilePage();
      },
    ),

    GoRoute(
      path: RoutePaths.productDetail,
      builder: (BuildContext context, GoRouterState state) {
        final id = state.pathParameters['id'] ?? '';
        int productId = int.parse(id);
        return ProductDetailPage(productId: productId);
      },
    ),
    GoRoute(
      path: RoutePaths.cart,
      builder: (BuildContext context, GoRouterState state) {
        return CartPage();
      },
    ),
    GoRoute(
      path: RoutePaths.signin,
      builder: (BuildContext context, GoRouterState state) {
        return SignInPage();
      },
    ),
    GoRoute(
      path: RoutePaths.signup,
      builder: (BuildContext context, GoRouterState state) {
        return SignUpPage();
      },
    ),
    GoRoute(
      path: RoutePaths.search,
      builder: (BuildContext context, GoRouterState state) {
        return ProductSearchPage();
      },
    ),
  ],
);
