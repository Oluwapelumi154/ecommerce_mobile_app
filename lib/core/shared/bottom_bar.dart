import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  initState() {
    super.initState();
  }

  List<Map<String, dynamic>> navigationMenus = [
    {"iconDefault": Icon(LucideIcons.house), "title": "Home", "path": "/home"},
    {
      "iconDefault": Icon(LucideIcons.search),
      "title": "Search",
      "path": RoutePaths.search,
    },
    {
      "iconDefault": Icon(LucideIcons.shopping_cart),
      "title": "Cart",
      "path": RoutePaths.cart,
    },
    {
      "iconDefault": Icon(LucideIcons.user),
      "title": "Settings",
      "path": RoutePaths.setting,
    },
  ];

  int _getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;

    // Find the index of the current route
    for (int i = 0; i < navigationMenus.length; i++) {
      if (location.startsWith(navigationMenus[i]['path']!)) {
        return i;
      }
    }
    return 0; // Default to home if no match
  }

  void onItemTapped(int selectedIndex) {
    final menu = navigationMenus[selectedIndex];
    context.push(menu['path']!);
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _getCurrentIndex(context);

    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Color(0XFFEEEEEE))),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.black100,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        iconSize: 27,
        onTap: onItemTapped,
        items: List.generate(navigationMenus.length, (index) {
          final data = navigationMenus[index];
          return BottomNavigationBarItem(
            icon: data['iconDefault']!,
            label: data['title']!,
          );
        }),
      ),
    );
  }
}
