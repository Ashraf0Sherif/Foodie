import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CustomizeExtraIngredientsSection extends StatelessWidget {
  const CustomizeExtraIngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Extra Ingredients",
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
            Text(
              "+1",
              style: FontStyles.font14PassiveRegular,
            ),
            Checkbox(
              value: true,
              onChanged: (value) {},
              activeColor: ColorsStyles.kPrimaryColor,
            )
          ],
        ),
    ]);
  }
}
