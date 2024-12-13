import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../widgets/banners_carousel_slider.dart';
import '../widgets/categories_bloc_builder.dart';
import '../widgets/categories_presistent_header.dart';
import '../widgets/food_list_bloc_builder.dart';
import '../widgets/home_top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          snap: true,
          backgroundColor: Color(0xffF2F3F7),
          shadowColor: Colors.white,
          surfaceTintColor: Color(0xffF2F3F7),
          elevation: 0,
          centerTitle: true,
          title: HomeTopBar(),
        ),
        // Use BannerCubit for BannersCarouselSlider
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: const BannersCarouselSlider(),
          ),
        ),
        // Use FoodCubit for SliverPersistentHeader
        SliverPersistentHeader(
          pinned: true,
          delegate: CategoriesHeader(
            maxHeight: 57.h,
            minHeight: 57.h,
            child: Container(
              color: ColorsStyles.kViewBackground,
              child: Padding(
                padding: EdgeInsets.only(bottom: 5.h, top: 5.h),
                child: const CategoriesBlocBuilder(),
              ),
            ),
          ),
        ),
        const FoodListBlocBuilder(),
      ],
    );
  }
}
