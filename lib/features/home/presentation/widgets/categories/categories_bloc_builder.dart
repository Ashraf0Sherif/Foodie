import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/home/logic/combined_cubit/combined_cubit.dart';

import '../../../logic/food_categories_cubit/food_categories_cubit.dart';
import '../../../logic/food_items_cubit/food_items_cubit.dart';
import 'categories_list_view.dart';
import 'categories_list_view_item_skeleton.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodCategoriesCubit, FoodCategoriesState>(
      buildWhen: (previous, current) =>
          current is Success ||
          current is Error ||
          current is Loading ||
          current is Initial,
      builder: (context, state) {
        return state.maybeWhen(
          success: (foodCategories) {
            if (foodCategories.isEmpty) {
              context.read<CombinedCubit>().incrementCounter();
              return const SizedBox.shrink();
            } else {
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
            }
          },
          error: (error) {
            return const Center(child: Text('Error loading categories'));
          },
          loading: () {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: const SkeletonizerCategoriesListViewItem(),
                );
              },
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
