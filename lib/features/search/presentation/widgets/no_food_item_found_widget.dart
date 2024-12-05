import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class NoFoodItemFoundWidget extends StatelessWidget {
  const NoFoodItemFoundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          'assets/images/no_item_found.png',
          width: 200.w,
        ),
        verticalSpace(16),
        Text(
          'The food item you are looking for could not be found.',
          style: FontStyles.font14BlackRegular,
          textAlign: TextAlign.center,
        ),
        verticalSpace(4),
        Text(
          'We couldn\'t find any food with the name you searched for. Please try searching with different names.',
          style: FontStyles.font14GreyRegular,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
