import 'package:flutter/material.dart';
import 'package:foodie/features/home/data/models/ingredient/ingredient.dart';

import '../../../../../core/theming/styles.dart';
import 'custom_ingredient_check_box.dart';

class CustomizeMainIngredientsSection extends StatelessWidget {
  const CustomizeMainIngredientsSection(
      {super.key, required this.mainIngredients});

  final List<Ingredient> mainIngredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Main Ingredients",
          style: FontStyles.font16BlackBold,
        ),
        for (int i = 0; i < mainIngredients.length; i++)
          Row(
            children: [
              Text(
                mainIngredients[i].title,
                style: FontStyles.font18PassiveRegular,
              ),
              const Spacer(),
              CustomIngredientCheckBox(ingredient: mainIngredients[i])
            ],
          ),
      ],
    );
  }
}


