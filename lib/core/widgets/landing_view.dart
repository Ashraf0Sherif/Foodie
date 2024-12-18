import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/logic/food_items/food_items_cubit.dart';
import 'package:foodie/features/search/logic/search_cubit/search_cubit.dart';

import '../../features/cart/presentation/views/cart_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/profile/presentation/views/profile_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import '../theming/colors.dart';
import 'foodie_nav_bar.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  int currentIndex = 0;

  List<Widget> views = [
    const HomeView(),
    BlocProvider(
      create: (context) =>
          SearchCubit(context.read<FoodieFoodCubit>().foodCategories),
      child: const SearchView(),
    ),
    const CartView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorsStyles.kViewBackground,
        bottomNavigationBar: const FoodieNavigationBar(),
        body: SafeArea(
          child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
              builder: (context, state) {
            if (state is BottomNavBarIndexChanged) {
              return views[state.index];
            } else {
              return views[0];
            }
          }),
        ),
      ),
    );
  }
}
