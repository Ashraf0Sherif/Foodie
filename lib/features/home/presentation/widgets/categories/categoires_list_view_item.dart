import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/home/logic/filter_cubit/filter_cubit.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../data/models/food_category/food_category.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem({
    super.key,
    required this.category,
    required this.index,
  });

  final int index;
  final FoodCategory category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        onPressed: () => context
            .read<FilterCubit>()
            .changeFilter(index: index, categoryId: category.id),
        child: BlocBuilder<FilterCubit, FilterState>(
          builder: (context, state) {
            return Text(
              category.title,
              style: FontStyles.font17PrimaryColorMedium.copyWith(
                color: (state is FilterIndexChanged && state.index == index) ||
                        (state is FilterInitial && index == 0)
                    ? ColorsStyles.kPrimaryColor
                    : Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}

