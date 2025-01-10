import 'package:flutter/material.dart';

import '../../features/home/data/models/food_item/food_item.dart';
import '../../features/home/presentation/widgets/food_item/food_item_card.dart';
import '../../features/home/presentation/widgets/food_item/food_item_card_skeleton.dart';

class FoodItemsSliverListView extends StatelessWidget {
  const FoodItemsSliverListView({
    super.key,
    required this.foodItems,
    required this.isLoading,
    this.isReceiptView = false,
  });

  final List<FoodItem> foodItems;
  final bool isLoading;
  final bool isReceiptView;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: foodItems.length + (isLoading ? 1 : 0),
      itemBuilder: (BuildContext context, int index) {
        if (index < foodItems.length) {
          return FoodItemCard(
            foodItem: foodItems[index],
            isReceipt: isReceiptView,
          );
        } else {
          return const FoodItemCardSkeleton();
        }
      },
    );
  }
}
