import 'package:flutter/material.dart';
import 'package:foodie/core/theming/colors.dart';

import '../../../../core/widgets/foodie_nav_bar.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsStyles.kViewBackground,
      bottomNavigationBar: FoodieNavigationBar(),
      body: HomeViewBody(),
    );
  }
}
