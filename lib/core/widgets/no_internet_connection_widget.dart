import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/helpers/spacing.dart';

import '../../generated/l10n.dart';
import '../helpers/assets.dart';
import '../theming/styles.dart';

class NoInternetConnectionWidget extends StatelessWidget {
  const NoInternetConnectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(120),
        SvgPicture.asset(
          AssetsData.kNoInternetConnectionSVG,
          width: 250.w,
        ),
        Center(
          child: Text(
            S.of(context).noNetwork,
            style: FontStyles.font24SecondaryColorBold,
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8.h, right: 14.w, left: 14.w),
            child: Text(
              S.of(context).checkNetworkConnection,
              style: FontStyles.font16PrimaryColoSemiBold,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}