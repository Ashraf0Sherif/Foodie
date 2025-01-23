import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/home/presentation/widgets/food_item/sliver_food_item_card_list_skeleton.dart';

import '../../../../../core/widgets/food_items_sliver_list_view.dart';
import '../../../../../generated/l10n.dart';
import '../../../logic/food_items_cubit/food_items_cubit.dart';
import 'no_food_items_found.dart';

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
          error: (error) => SliverToBoxAdapter(
            child: Center(child: Text(S.of(context).errorLoadingFoodItems)),
          ),
          success: (foodItems) {
            if (foodItems.isNotEmpty) {
              return FoodItemsSliverListView(
                foodItems: foodItems,
                isLoading: false,
              );
            } else {
              return const SliverToBoxAdapter(
                child: NoFoodItemsFound(),
              );
            }
          },
        );
      },
    );
  }
}
