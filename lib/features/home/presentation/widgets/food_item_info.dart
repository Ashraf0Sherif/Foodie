import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';

import '../../../../core/theming/styles.dart';

class FoodItemInfo extends StatelessWidget {
  const FoodItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/image 19.png'),
        horizontalSpace(7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mixed Pizza', style: FontStyles.font16BlackBold),
            Text(
              'Pizza',
              style: FontStyles.font12PassiveRegular,
            ),
            Text(
              '15\$',
              style: FontStyles.font16SecondaryColorBold,
            ),
          ],
        ),
      ],
    );
  }
}
