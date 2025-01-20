import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FoodItemCardImageSkeleton extends StatelessWidget {
  const FoodItemCardImageSkeleton({
    super.key, this.height, this.width,
  });
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Container(
        width: width ?? 120.w,
        height: height ?? 120.h,
        color: Colors.grey,
      ),
    );
  }
}
