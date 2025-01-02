import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonizerCategoriesListViewItem extends StatelessWidget {
  const SkeletonizerCategoriesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Skeletonizer(
        enabled: true,
        child: Container(
          width: 120.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Skeletonizer(
            enabled: true,
            child: Center(
              child: Container(
                width: 80.w,
                height: 20.h,
                color: Colors.grey.shade100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
