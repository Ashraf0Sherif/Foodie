import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import 'food_item_info.dart';
import 'item_quantity_controller.dart';
class FoodItemCard extends StatelessWidget {
  const FoodItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0.w),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const FoodItemInfo(),
                  const Spacer(),
                  const ItemQuantityController(),
                  SizedBox(
                    width: 20.w,
                  ),
                ],
              ),
              const Divider(
                color: Color(0xffECECEC),
              ),
              SizedBox(
                height: 9.h,
              ),
              Text(
                "Ingredients",
                style: FontStyles.fon12PassiveBold,
              ),
              Text(
                "Olive, Pickle, Mushroom, Sausage, Corn",
                style: FontStyles.font12BlackRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}