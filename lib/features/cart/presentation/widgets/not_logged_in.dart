import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/core/widgets/sliver_view_app_bar.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../generated/l10n.dart';

class ProfileErrorOrNotLoggedIn extends StatelessWidget {
  const ProfileErrorOrNotLoggedIn(
      {super.key,
      required this.error,
      required this.view,
      required this.errorDescription,
      this.showButton = true});

  final String error;
  final String view;
  final String errorDescription;
  final bool showButton;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverViewAppBar(title: view),
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
              if (showButton)
                CustomElevatedButton(
                  onPressed: () {
                    context.pushNamedAndRemoveUntil(Routes.kLoginView,
                        predicate: (Route<dynamic> route) {
                      return false;
                    });
                  },
                  text: S.of(context).loginButton,
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
