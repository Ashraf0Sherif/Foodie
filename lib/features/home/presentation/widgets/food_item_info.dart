import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mixed Pizza',
            ),
            Text(
              'Pizza',
            ),
            Text(
              '15\$',
            ),
          ],
        ),
      ],
    );
  }
}