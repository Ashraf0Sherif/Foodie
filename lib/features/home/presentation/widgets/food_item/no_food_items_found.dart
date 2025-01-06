import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/assets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

class NoFoodItemsFound extends StatelessWidget {
  const NoFoodItemsFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalSpace(50),
        SvgPicture.asset(
          AssetsData.kNoFoodItemsSVG,
          width: 200.w,
        ),
        verticalSpace(10),
        Text(
          'No Food Items Found',
          style: FontStyles.font16PrimaryColoSemiBold,
        ),
      ],
    );
  }
}
