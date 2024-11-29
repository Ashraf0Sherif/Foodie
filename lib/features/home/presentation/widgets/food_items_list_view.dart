import 'package:flutter/material.dart';

import 'food_item_card.dart';
class FoodItemsSliverListView extends StatelessWidget {
  const FoodItemsSliverListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 50,
      itemBuilder: (BuildContext context, int index) {
        return const FoodItemCard();
      },
    );
  }
}