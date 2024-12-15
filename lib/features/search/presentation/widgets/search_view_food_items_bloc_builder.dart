import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui_constants.dart';
import '../../../../core/widgets/food_items_list_view.dart';
import '../../logic/search_cubit/search_cubit.dart';
import 'empty_search_bar_widget.dart';
import 'no_food_item_found_widget.dart';

class SearchViewFoodItemsBlocBuilder extends StatelessWidget {
  const SearchViewFoodItemsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return SliverFillRemaining(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: const EmptySearchBarWidget(),
            ),
          );
        } else if (state is SearchSuccess) {
          return FoodItemsSliverListView(foodItems: state.foodItems);
        } else if (state is SearchLoading) {
          return SliverFillRemaining(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: const Center(child: CircularProgressIndicator()),
            ),
          );
        } else {
          return SliverFillRemaining(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: const NoFoodItemFoundWidget(),
            ),
          );
        }
      },
    );
  }
}
