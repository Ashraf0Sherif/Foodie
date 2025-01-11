import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/routing/routes.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class ProfileErrorOrNotLoggedIn extends StatelessWidget {
  const ProfileErrorOrNotLoggedIn(
      {super.key,
      required this.error,
      required this.view,
      required this.errorDescription});

  final String error;
  final String view;
  final String errorDescription;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            view,
            style: FontStyles.font24SecondaryColorBold,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              verticalSpace(30),
              SvgPicture.asset(
                AssetsData.kNotLoggedInSVG,
                width: 250.w,
              ),
              Center(
                child: Text(
                  error,
                  style: FontStyles.font24SecondaryColorBold,
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h, right: 14.w, left: 14.w),
                  child: Text(
                    errorDescription,
                    style: FontStyles.font16PrimaryColoSemiBold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              verticalSpace(50),
              CustomElevatedButton(
                onPressed: () {
                  context.pushNamedAndRemoveUntil(Routes.kLoginView,
                      predicate: (Route<dynamic> route) {
                    return false;
                  });
                },
                text: 'Login',
                gradient: ColorsStyles.kButtonGradient,
                width: 120.w,
              ),
            ],
          ),
        )
      ],
    );
  }
}
