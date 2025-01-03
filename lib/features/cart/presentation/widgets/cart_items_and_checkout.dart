import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../../home/presentation/widgets/food_item/food_item_card.dart';

class CartItemsAndCheckout extends StatelessWidget {
  const CartItemsAndCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => FoodItemCard(
        foodItem: FoodItem(
            images: [],
            title: '',
            description: '',
            price: '',
            deliveryTime: '',
            mainIngredients: [],
            extraIngredients: [],
            createdAt: DateTime.now()),
      ),
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
