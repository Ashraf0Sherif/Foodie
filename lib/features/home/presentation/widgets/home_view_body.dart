import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/cart/presentation/widgets/not_logged_in.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';

import '../../../../core/theming/colors.dart';
import '../../logic/banner_cubit/banner_cubit.dart';
import '../../logic/food_categories_cubit/food_categories_cubit.dart';
import '../../logic/food_items_cubit/food_items_cubit.dart';
import '../views/no_data_view.dart';
import 'banner_widgets/banners_carousel_slider_bloc_builder.dart';
import 'categories/categories_bloc_builder.dart';
import 'categories/categories_presistent_header.dart';
import 'food_list_bloc_builder.dart';
import 'home_top_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = context.read<FoodItemsCubit>().scrollController;
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        final bannerState = context.watch<BannerCubit>().state;
        final categoriesState = context.watch<FoodCategoriesCubit>().state;

        if (bannerState is BannerSuccess &&
            categoriesState is FoodCategoriesSuccess &&
            bannerState.banners.isEmpty &&
            categoriesState.foodCategories.isEmpty) {
          return const NoDataView();
        }
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
      },
    );
  }
}
