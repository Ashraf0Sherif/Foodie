import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class NoItemsFound extends StatelessWidget {
  const NoItemsFound(
      {super.key,
      required this.svgImage,
      required this.title,
      required this.description,
      this.button});

  final String svgImage;
  final String title;
  final String description;
  final CustomElevatedButton? button;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(80),
        SvgPicture.asset(
          svgImage,
          width: 200.w,
        ),
        verticalSpace(16),
        Text(
          title,
          style: FontStyles.font16BlackMedium,
          textAlign: TextAlign.center,
        ),
        verticalSpace(4),
        Text(
          description,
          style: FontStyles.font16GreyRegular,
          textAlign: TextAlign.center,
        ),
        verticalSpace(20),
        if(button != null) button!,
      ],
    );
  }
}
