import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
class CustomizeMainIngredientsSection extends StatelessWidget {
  const CustomizeMainIngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Main Ingredients",
          style: FontStyles.font16BlackBold,
        ),
        for (int i = 0; i < 3; i++)
          Row(
            children: [
              Text(
                "Red pepper",
                style: FontStyles.font18PassiveRegular,
              ),
              const Spacer(),
              Checkbox(
                value: i % 2 == 1 ? true : false,
                onChanged: (value) {},
                activeColor: ColorsStyles.kPrimaryColor,
              )
            ],
          ),
      ],
    );
  }
}