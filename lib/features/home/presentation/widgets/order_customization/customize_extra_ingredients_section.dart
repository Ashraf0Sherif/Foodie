import 'package:flutter/material.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:foodie/features/home/presentation/widgets/order_customization/custom_ingredient_check_box.dart';

import '../../../../../core/theming/styles.dart';

class CustomizeExtraIngredientsSection extends StatelessWidget {
  const CustomizeExtraIngredientsSection({super.key, required this.foodItem});

  final FoodItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Extra Ingredients",
        style: FontStyles.font16BlackBold,
      ),
      for (int i = 0; i < foodItem.extraIngredients.length; i++)
        Row(
          children: [
            Text(
              foodItem.extraIngredients[i].title,
              style: FontStyles.font18PassiveRegular,
            ),
            const Spacer(),
            Text(
              "2323+",
              style: FontStyles.font14PassiveRegular,
            ),
            CustomIngredientCheckBox(
              ingredient: foodItem.extraIngredients[i],
            )
          ],
        ),
    ]);
  }
}
