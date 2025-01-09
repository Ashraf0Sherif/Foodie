import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/widgets/no_internet_connection_widget.dart';
import 'package:foodie/features/profile/presentation/widgets/no_addresses_found.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/ui_constants.dart';
import '../../../../core/widgets/food_items_sliver_list_view.dart';
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
              child: const NoItemsFound(
                  svgImage: AssetsData.kNoSearchItemsSVG,
                  title:
                      'The food item you are looking for could not be found.',
                  description:
                      'We couldn\'t find any food with the name you searched for. Please try searching with different names.'),
            ),
          ),
          emptySearch: () => const SliverToBoxAdapter(
              child: NoItemsFound(
                  svgImage: AssetsData.kEmptySearchSVG,
                  title: 'Search For Your Favorite Food',
                  description:
                      'Find what you  want among hundreds of different dishes.')),
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
