import 'package:flutter/material.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';
import 'custom_ingredient_check_box.dart';

class CustomizeMainIngredientsSection extends StatelessWidget {
  const CustomizeMainIngredientsSection(
      {super.key,
      required this.foodItem,
      required this.onIngredientChanged,
      this.isReceipt = false});

  final FoodItem foodItem;
  final VoidCallback onIngredientChanged;
  final bool isReceipt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).mainIngredients,
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
              if (!isReceipt)
                CustomIngredientCheckBox(
                  ingredient: foodItem.mainIngredients[i],
                  onChanged: (bool value) => onIngredientChanged(),
                )
            ],
          ),
      ],
    );
  }
}
