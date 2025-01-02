import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/widgets/food_items_sliver_list_view.dart';
import '../../../logic/food_items_cubit/food_items_cubit.dart';
import 'food_item_card_skeleton.dart';

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
          orElse: () => SliverToBoxAdapter(
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
          ),
          loading: (foodItems) {
            if (foodItems.isNotEmpty) {
              return FoodItemsSliverListView(
                foodItems: foodItems,
                isLoading: true,
              );
            } else {
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
            }
          },
          error: (error) => const SliverToBoxAdapter(
            child: Center(child: Text('Error loading food items')),
          ),
          success: (foodItems) => FoodItemsSliverListView(
            foodItems: foodItems,
            isLoading: false,
          ),
        );
      },
    );
  }
}
