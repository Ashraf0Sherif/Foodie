import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'food_item_card.dart';
class FoodItemsListView extends StatelessWidget {
  const FoodItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return const FoodItemCard();
      },
    );
  }
}