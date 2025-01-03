import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:foodie/core/routing/app_router.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 51.w),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            'assets/images/empty_cart.png',
            width: 200.w,
          ),
          verticalSpace(16),
          Text(
            'Your cart is empty',
            style: FontStyles.font16BlackMedium,
            textAlign: TextAlign.center,
          ),
          verticalSpace(4),
          Text(
            'Find what you want among hundreds of different dishes.',
            style: FontStyles.font16GreyRegular,
            textAlign: TextAlign.center,
          ),
          verticalSpace(32),
          CustomElevatedButton(
            onPressed: () {
              context.read<BottomNavBarCubit>().changeIndex(0);
            },
            text: 'ORDER NOW',
            gradient: ColorsStyles.kButtonGradient,
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
