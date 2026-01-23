import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> NavigationMenus = [
      {"iconDefault": Icon(Icons.home), "iconActive": "", "title": "Home"},
      {"iconDefault": Icon(Icons.search_outlined), "title": "Search"},
      {"iconDefault": Icon(Icons.shopping_cart_outlined), "title": "Cart"},
      {"iconDefault": Icon(Icons.person_2_outlined), "title": "Profile"},
    ];

    void onItemTapped(int selectedIndex) {
      setState(() {
        currentIndex = selectedIndex;
      });
    }

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
        selectedLabelStyle: TextStyle(fontSize: 14),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        iconSize: 27,
        onTap: onItemTapped,
        items: List.generate(NavigationMenus.length, (index) {
          final data = NavigationMenus[index];
          return BottomNavigationBarItem(
            icon: data['iconDefault']!,
            label: data['title']!,
          );
        }),
      ),
    );
  }
}
