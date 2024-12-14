import 'package:flutter/material.dart';
import 'package:foodie/features/home/presentation/widgets/custom_ingredient_check_box.dart';

import '../../../../core/theming/styles.dart';
import '../../data/models/ingredient/ingredient.dart';

class CustomizeExtraIngredientsSection extends StatelessWidget {
  const CustomizeExtraIngredientsSection(
      {super.key, required this.extraIngredients});

  final List<Ingredient> extraIngredients;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Extra Ingredients",
        style: FontStyles.font16BlackBold,
      ),
      for (int i = 0; i < extraIngredients.length; i++)
        Row(
          children: [
            Text(
              extraIngredients[i].title,
              style: FontStyles.font18PassiveRegular,
            ),
            const Spacer(),
            Text(
              "2323+",
              style: FontStyles.font14PassiveRegular,
            ),
            CustomIngredientCheckBox(
              ingredient: extraIngredients[i],
            )
          ],
        ),
    ]);
  }
}
