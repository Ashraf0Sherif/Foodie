import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/home/logic/food_items_cubit/food_items_cubit.dart';

import '../../logic/filter_cubit/filter_cubit.dart';
import 'food_item/food_items_bloc_builder.dart';

class FilterFoodItemsBlocBuilder extends StatelessWidget {
  const FilterFoodItemsBlocBuilder({
    super.key,
    required this.categoryId,
  });

  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<FilterCubit, FilterState>(
      listener: (context, state) {
        if (state is FilterIndexChanged) {
          context
              .read<FoodItemsCubit>()
              .emitFoodItemsStates(categoryId: state.categoryId);
        }
      },
      child: const FoodItemsBlocBuilder(),
    );
  }
}
