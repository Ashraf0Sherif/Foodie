import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/food_item_card.dart';

class CartItemsAndCheckout extends StatelessWidget {
  const CartItemsAndCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const FoodItemCard(),
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
