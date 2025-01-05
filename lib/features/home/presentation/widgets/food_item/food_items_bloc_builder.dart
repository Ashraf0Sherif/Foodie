import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/home/logic/combined_cubit/combined_cubit.dart';
import 'package:foodie/features/home/presentation/widgets/food_item/sliver_food_item_card_list_skeleton.dart';

import '../../../../../core/widgets/food_items_sliver_list_view.dart';
import '../../../logic/food_items_cubit/food_items_cubit.dart';

class FoodItemsBlocBuilder extends StatelessWidget {
  const FoodItemsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodItemsCubit, FoodItemsState>(
      buildWhen: (previous, current) =>
          current is FoodItemsLoading ||
          current is FoodItemsSuccess ||
          current is FoodItemsError,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
          loading: (foodItems) {
            if (foodItems.isNotEmpty) {
              return FoodItemsSliverListView(
                foodItems: foodItems,
                isLoading: true,
              );
            } else {
              return const SliverFoodItemCardListSkeleton();
            }
          },
          error: (error) => const SliverToBoxAdapter(
            child: Center(child: Text('Error loading food items')),
          ),
          success: (foodItems) {
            if (foodItems.isNotEmpty) {
              return FoodItemsSliverListView(
                foodItems: foodItems,
                isLoading: false,
              );
            } else {
              return const SliverToBoxAdapter(
                child: SizedBox.shrink(),
              );
            }
          },
        );
      },
    );
  }
}
