import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/logic/food_items/food_items_cubit.dart';
import '../../../../core/widgets/food_items_list_view.dart';
import '../../data/models/food_category/food_category.dart';
import '../../logic/filter_cubit/filter_cubit.dart';
import 'filter_food_items_bloc_builder.dart';

class FoodListBlocBuilder extends StatelessWidget {
  const FoodListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodieFoodCubit, FoodieFoodState>(
      buildWhen: (previous, current) =>
          current is Success || current is Error || current is Loading,
      builder: (context, state) {
        return state.maybeWhen(error: (error) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('Error loading food items')),
          );
        }, success: (foodCategories) {
          return FilterFoodItemsBlocBuilder(
            foodCategories: foodCategories,
          );
        }, orElse: () {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        });
      },
    );
  }
}


