import 'package:flutter/material.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:foodie/features/home/data/models/ingredient/ingredient.dart';

import '../../../../../core/theming/styles.dart';
import 'custom_ingredient_check_box.dart';

class CustomizeMainIngredientsSection extends StatelessWidget {
  const CustomizeMainIngredientsSection(
      {super.key, required this.foodItem});

  final FoodItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Main Ingredients",
          style: FontStyles.font16BlackBold,
        ),
        for (int i = 0; i < foodItem.mainIngredients.length; i++)
          Row(
            children: [
              Text(
                foodItem.mainIngredients[i].title,
                style: FontStyles.font18PassiveRegular,
              ),
              const Spacer(),
              CustomIngredientCheckBox(ingredient: foodItem.mainIngredients[i])
            ],
          ),
      ],
    );
  }
}


