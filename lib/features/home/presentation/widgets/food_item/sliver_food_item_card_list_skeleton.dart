import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'food_item_card_skeleton.dart';
class SliverFoodItemCardListSkeleton extends StatelessWidget {
  const SliverFoodItemCardListSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(
          3,
              (_) => Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: const FoodItemCardSkeleton(),
          ),
        ),
      ),
    );
  }
}