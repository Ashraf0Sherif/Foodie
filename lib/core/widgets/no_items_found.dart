import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/theming/ui_constants.dart';

import '../helpers/spacing.dart';
import '../theming/styles.dart';
import 'custom_elevated_button.dart';

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
      child: Column(
        children: [
          verticalSpace(80),
          SvgPicture.asset(
            svgImage,
            width: 200.w,
          ),
          verticalSpace(16),
          Text(
            title,
            style: FontStyles.font20PrimaryColoSemiBold,
            textAlign: TextAlign.center,
          ),
          verticalSpace(4),
          Text(
            description,
            style: FontStyles.font16PrimaryColoSemiBold,
            textAlign: TextAlign.center,
          ),
          verticalSpace(20),
          if(button != null) button!,
        ],
      ),
    );
  }
}
