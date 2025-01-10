import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/home_top_bar.dart';

class NoDataView extends StatelessWidget {
  const NoDataView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeTopBar(),
        const Spacer(),
        SvgPicture.asset(
          AssetsData.kNoDataSVG,
          width: 250.w,
        ),
        Center(
          child: Text(
            'No Data',
            style: FontStyles.font24SecondaryColorBold,
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 8.h,right: 14.w,left: 14.w),
            child: Text(
              'There is no data to show right now',
              style: FontStyles.font16PrimaryColoSemiBold,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
