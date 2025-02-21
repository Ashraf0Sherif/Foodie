import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
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
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> navItems = [
      {
        'iconActive': Icons.home,
        'iconInactive': Icons.home_outlined,
        'label': S.of(context).home,
      },
      {
        'iconActive': Icons.search,
        'iconInactive': Icons.search_outlined,
        'label': S.of(context).search,
      },
      {
        'iconActive': Icons.shopping_cart,
        'iconInactive': Icons.shopping_cart_outlined,
        'label': S.of(context).cart,
      },
      {
        'iconActive': Icons.person_2,
        'iconInactive': Icons.person_2_outlined,
        'label': S.of(context).profile,
      },
    ];
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        int currentIndex = context.read<BottomNavBarCubit>().currentIndex;
        return BottomNavigationBar(
          selectedIconTheme:
              IconThemeData(size: 28.sp, color: ColorsStyles.kPrimaryColor),
          items: navItems.map(
            (item) {
              int index = navItems.indexOf(item);
              return BottomNavigationBarItem(
                icon: Icon(
                  currentIndex == index
                      ? item['iconActive']
                      : item['iconInactive'],
                ),
                label: item['label'],
              );
            },
          ).toList(),
          onTap: (index) {
            setState(() {
              currentIndex = index;
              context.read<BottomNavBarCubit>().changeIndex(index);
            });
          },
          unselectedLabelStyle: FontStyles.font12PassiveRegular,
          selectedLabelStyle: FontStyles.font12PrimaryColorRegular,
          currentIndex: currentIndex,
          selectedItemColor: ColorsStyles.kPrimaryColor,
          showUnselectedLabels: true,
          unselectedItemColor: ColorsStyles.kPassiveColor,
        );
      },
    );
  }
}
