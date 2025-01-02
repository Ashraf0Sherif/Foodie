import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/home/logic/food_items_cubit/food_items_cubit.dart';

import '../../../../core/theming/colors.dart';
import '../widgets/banner_widgets/banners_carousel_slider.dart';
import '../widgets/categories/categories_bloc_builder.dart';
import '../widgets/categories/categories_presistent_header.dart';
import '../widgets/food_list_bloc_builder.dart';
import '../widgets/home_top_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = context.read<FoodItemsCubit>().scrollController;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
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
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: const BannersCarouselSlider(),
          ),
        ),
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
