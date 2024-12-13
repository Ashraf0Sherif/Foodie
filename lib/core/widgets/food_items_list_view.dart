import 'package:flutter/material.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../features/home/presentation/widgets/food_item_card.dart';

class FoodItemsSliverListView extends StatelessWidget {
  const FoodItemsSliverListView({
    super.key,
    required this.foodItems,
  });

  final List<FoodItem> foodItems;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: foodItems.length,
      itemBuilder: (BuildContext context, int index) {
        return FoodItemCard(
          foodItem: foodItems[index],
        );
      },
    );
  }
}
