import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class FoodieNavigationBar extends StatefulWidget {
  const FoodieNavigationBar({
    super.key,
  });

  @override
  State<FoodieNavigationBar> createState() => _FoodieNavigationBarState();
}

class _FoodieNavigationBarState extends State<FoodieNavigationBar> {
  int currentIndex = 0;

  final List<Map<String, dynamic>> navItems = [
    {
      'iconActive': Icons.home,
      'iconInactive': Icons.home_outlined,
      'label': 'Home',
    },
    {
      'iconActive': Icons.search,
      'iconInactive': Icons.search_outlined,
      'label': 'Search',
    },
    {
      'iconActive': Icons.shopping_cart,
      'iconInactive': Icons.shopping_cart_outlined,
      'label': 'Cart',
    },
    {
      'iconActive': Icons.person_2,
      'iconInactive': Icons.person_2_outlined,
      'label': 'Profile',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: navItems.map(
        (item) {
          int index = navItems.indexOf(item);
          return BottomNavigationBarItem(
            icon: Icon(
              currentIndex == index ? item['iconActive'] : item['iconInactive'],
              color: currentIndex == index
                  ? ColorsStyles.kPrimaryColor
                  : ColorsStyles.kPassiveColor,
            ),
            label: item['label'],
          );
        },
      ).toList(),
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      unselectedLabelStyle: FontStyles.font12PassiveRegular,
      selectedLabelStyle: FontStyles.font12PrimaryColorRegular,
      currentIndex: currentIndex,
      selectedItemColor: ColorsStyles.kPrimaryColor,
      showUnselectedLabels: true,
      unselectedItemColor: ColorsStyles.kPassiveColor,
    );
  }
}
