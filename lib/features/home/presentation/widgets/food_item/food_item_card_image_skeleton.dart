import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FoodItemCardImageSkeleton extends StatelessWidget {
  const FoodItemCardImageSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Container(
        width: 120.w,
        height: 120.h,
        color: Colors.grey,
      ),
    );
  }
}
