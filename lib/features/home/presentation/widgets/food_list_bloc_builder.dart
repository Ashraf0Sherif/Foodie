import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/logic/food_categories_cubit/food_categories_cubit.dart';

import 'filter_food_items_bloc_listener.dart';

class FoodListBlocBuilder extends StatelessWidget {
  const FoodListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCategoriesCubit, FoodCategoriesState>(
      buildWhen: (previous, current) =>
          current is Success || current is Error || current is Loading,
      builder: (context, state) {
        return state.maybeWhen(error: (error) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('Error loading food items')),
          );
        }, success: (foodCategories) {
          return FilterFoodItemsBlocBuilder(
            categoryId: foodCategories[0].id,
          );
        }, orElse: () {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        });
      },
    );
  }
}
