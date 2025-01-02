import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/home/logic/food_items_cubit/food_items_cubit.dart';
import 'package:foodie/features/search/logic/search_cubit/search_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../features/home/data/models/food_item/food_item.dart';
import '../../features/home/presentation/widgets/food_item/food_item_card.dart';
import '../../features/home/presentation/widgets/food_item/food_item_card_skeleton.dart';

class FoodItemsSliverListView extends StatelessWidget {
  const FoodItemsSliverListView({
    super.key,
    required this.foodItems,
    required this.isLoading,
  });

  final List<FoodItem> foodItems;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: foodItems.length + (isLoading ? 1 : 0),
      itemBuilder: (BuildContext context, int index) {
        if (index < foodItems.length) {
          return FoodItemCard(foodItem: foodItems[index]);
        } else {
          return const Skeletonizer(
            enabled: true,
            child: FoodItemCardSkeleton(),
          );
        }
      },
    );
  }
}
