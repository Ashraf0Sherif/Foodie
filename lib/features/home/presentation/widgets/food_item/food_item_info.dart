import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../../../../core/theming/styles.dart';

class FoodItemInfo extends StatelessWidget {
  const FoodItemInfo({super.key, required this.foodItem});

  final FoodItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: CachedNetworkImage(
            width: 120.w,
            height: 120.h,
            imageUrl: foodItem.images[0],
            fit: BoxFit.cover,
          ),
        ),
        horizontalSpace(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(foodItem.title, style: FontStyles.font16BlackBold),
            Text(
              foodItem.description,
              style: FontStyles.font12PassiveRegular,
            ),
            verticalSpace(5),
            Text(
              '${foodItem.price}\$',
              style: FontStyles.font16SecondaryColorBold,
            ),
          ],
        ),
      ],
    );
  }
}
