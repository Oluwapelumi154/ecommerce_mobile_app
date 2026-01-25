import 'package:ecommerce_mobile_app/core/shared/bottom_bar.dart';
import 'package:flutter/material.dart';

class ScaffoldWithBottomBar extends StatelessWidget {
  final Widget child;
  const ScaffoldWithBottomBar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: child, bottomNavigationBar: BottomBar());
  }
}
