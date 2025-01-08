import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/home/presentation/widgets/food_item/food_item_card_image_skeleton.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/helpers/spacing.dart';

class FoodItemCardSkeleton extends StatelessWidget {
  const FoodItemCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0.w, right: 14.w, bottom: 12.h),
      child: Card(
        elevation: 5,
        shadowColor: Colors.white.withOpacity(0.75),
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
                  const FoodItemCardImageSkeleton(),
                  const Spacer(),
                  Skeletonizer(
                    enabled: true,
                    child: Container(
                      width: 60.w,
                      height: 20.h,
                      color: Colors.grey,
                    ),
                  ),
                  horizontalSpace(20),
                ],
              ),
              const Divider(
                color: Color(0xffECECEC),
              ),
              horizontalSpace(9),
              Skeletonizer(
                enabled: true,
                child: Container(
                  width: 120.w,
                  height: 15.h,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5.h),
              Skeletonizer(
                enabled: true,
                child: Container(
                  width: double.infinity,
                  height: 15.h,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
