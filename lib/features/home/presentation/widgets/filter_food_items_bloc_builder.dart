import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/food_items_list_view.dart';
import '../../data/models/food_category/food_category.dart';
import '../../logic/filter_cubit/filter_cubit.dart';

class FilterFoodItemsBlocBuilder extends StatelessWidget {
  const FilterFoodItemsBlocBuilder({
    super.key,
    required this.foodCategories,
  });

  final List<FoodCategory> foodCategories;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        if (state is FilterIndexChanged) {
          return FoodItemsSliverListView(
            foodItems: foodCategories[state.index].foodItems,
          );
        } else {
          return FoodItemsSliverListView(
            foodItems: foodCategories[0].foodItems,
          );
        }
      },
    );
  }
}
