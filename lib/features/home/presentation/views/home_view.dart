import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/banners_carousel_slider.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/food_items_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.white,
              shadowColor: Colors.white,
              foregroundColor: Colors.transparent,
              surfaceTintColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Foodie",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 28.h),
                child: const BannersCarouselSlider(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 18.h),
                child: const CategoriesListView(),
              ),
            ),
            const SliverFillRemaining(
              child: FoodItemsListView(),
            ),
          ],
        ),
      ),
    );
  }
}
