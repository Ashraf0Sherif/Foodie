import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class EmptySearchBarWidget extends StatelessWidget {
  const EmptySearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          'assets/images/foode_search_image.png',
          width: 200.w,
        ),
        verticalSpace(16),
        Text(
          'Search for your favorite food',
          style: FontStyles.font16BlackMedium,
          textAlign: TextAlign.center,
        ),
        verticalSpace(4),
        Text(
          'Find what you want among hundreds of different dishes.',
          style: FontStyles.font16GreyRegular,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
