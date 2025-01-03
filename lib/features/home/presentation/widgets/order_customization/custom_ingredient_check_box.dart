import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../data/models/ingredient/ingredient.dart';

class CustomIngredientCheckBox extends StatefulWidget {
  const CustomIngredientCheckBox({
    super.key,
    required this.ingredient, required this.onChanged,
  });

  final Ingredient ingredient;
  final ValueChanged<bool> onChanged;
  @override
  State<CustomIngredientCheckBox> createState() =>
      _CustomIngredientCheckBoxState();
}

class _CustomIngredientCheckBoxState extends State<CustomIngredientCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.ingredient.isChecked,
      onChanged: (value) {
        setState(() {
          widget.ingredient.isChecked = value!;
          widget.onChanged(value);
        });
      },
      activeColor: ColorsStyles.kPrimaryColor,
    );
  }
}
