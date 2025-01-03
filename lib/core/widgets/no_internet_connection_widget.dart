import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  const NoInternetConnectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.wifi_off,
            color: ColorsStyles.kSecondaryColor,
            size: 80.sp,
          ),
          Text(
            "No internet connection",
            style: FontStyles.font16SecondaryColorBold,
          ),
          verticalSpace(5),
          Text(
            "Please connect to the internet and try again.",
            style: FontStyles.font12PrimaryColorRegular,
          ),
        ],
      ),
    );
  }
}
