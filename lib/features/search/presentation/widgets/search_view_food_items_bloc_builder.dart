import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/widgets/no_internet_connection_widget.dart';
import 'package:foodie/core/widgets/no_items_found.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/ui_constants.dart';
import '../../../../core/widgets/food_items_sliver_list_view.dart';
import '../../../../generated/l10n.dart';
import '../../../home/presentation/widgets/food_item/food_item_card_skeleton.dart';
import '../../logic/search_cubit/search_cubit.dart';

class SearchViewFoodItemsBlocBuilder extends StatelessWidget {
  const SearchViewFoodItemsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) =>
          current is SearchSuccess ||
          current is SearchLoading ||
          current is SearchNoResults ||
          current is SearchNoInternet ||
          current is SearchEmptySearch,
      builder: (context, state) {
        return state.maybeWhen(
          loading: (foodItems) {
            if (foodItems.isNotEmpty) {
              return FoodItemsSliverListView(
                foodItems: foodItems,
                isLoading: true,
              );
            }
            return SliverToBoxAdapter(
              child: Skeletonizer(
                enabled: true,
                child: Column(
                  children: List.generate(
                    3,
                    (_) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: const FoodItemCardSkeleton(),
                    ),
                  ),
                ),
              ),
            );
          },
          success: (foodItems) => FoodItemsSliverListView(
            foodItems: foodItems,
            isLoading: false,
          ),
          noResults: () => SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: NoItemsFound(
                  svgImage: AssetsData.kNoSearchItemsSVG,
                  title: S.of(context).noSearchResultsTitle,
                  description: S.of(context).noSearchResultsDescription),
            ),
          ),
          emptySearch: () => SliverToBoxAdapter(
              child: NoItemsFound(
                  svgImage: AssetsData.kEmptySearchSVG,
                  title: S.of(context).emptySearchTitle,
                  description: S.of(context).emptySearchDescription)),
          noInternet: () =>
              const SliverToBoxAdapter(child: NoInternetConnectionWidget()),
          orElse: () {
            return const SliverToBoxAdapter(
              child: SizedBox.shrink(),
            );
          },
        );
      },
    );
  }
}
