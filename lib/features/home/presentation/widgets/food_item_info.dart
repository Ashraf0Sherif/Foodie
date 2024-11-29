import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class FoodItemInfo extends StatelessWidget {
  const FoodItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/image 19.png'),
        SizedBox(
          width: 7.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mixed Pizza',
              style: FontStyles.font16BlackBold
            ),
             Text(
              'Pizza',
              style: FontStyles.font12GreyRegular,
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