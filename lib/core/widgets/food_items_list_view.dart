import 'package:flutter/material.dart';

import '../../features/home/presentation/widgets/food_item_card.dart';
class FoodItemsSliverListView extends StatelessWidget {
  const FoodItemsSliverListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return const FoodItemCard();
      },
    );
  }
}