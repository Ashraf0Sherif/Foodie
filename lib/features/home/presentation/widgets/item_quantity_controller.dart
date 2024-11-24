import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/colors.dart';

import '../../../../core/widgets/custom_elevated_button.dart';

class ItemQuantityController extends StatelessWidget {
  const ItemQuantityController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CustomElevatedButton(
            onPressed: () {},
            text: '-',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
            width: 29.14.w,
            height: 30.h,
            containerColor: Colors.white,
            textColor: ColorsStyles.kPrimaryColor,
          ),
          CustomElevatedButton(
            isDisabled: true,
            onPressed: () {},
            text: '2',
            borderRadius: BorderRadius.zero,
            width: 29.14.w,
            height: 30.h,
            gradient: ColorsStyles.kButtonGradient,
          ),
          CustomElevatedButton(
            onPressed: () {},
            text: '+',
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
            width: 29.14.w,
            height: 30.h,
            containerColor: Colors.white,
            textColor: ColorsStyles.kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
