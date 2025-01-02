import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/logic/food_categories_cubit/food_categories_cubit.dart';

import '../../../logic/food_items_cubit/food_items_cubit.dart';
import 'categories_list_view.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCategoriesCubit, FoodCategoriesState>(
      buildWhen: (previous, current) =>
          current is Success || current is Error || current is Loading,
      builder: (context, state) {
        return state.maybeWhen(
          success: (foodCategories) {
            String? currentCategoryId =
                context.read<FoodItemsCubit>().currentCategoryId;
            if (currentCategoryId == null) {
              context
                  .read<FoodItemsCubit>()
                  .emitFoodItemsStates(categoryId: foodCategories[0].id);
              currentCategoryId = foodCategories[0].id;
            }
            return CategoriesListView(
              categories: foodCategories,
            );
          },
          error: (error) {
            return const Center(child: Text('Error loading categories'));
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
