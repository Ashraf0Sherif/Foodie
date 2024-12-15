import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';

import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/helpers/shared_pref_keys.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../widgets/onboarding_image.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  setIsFirstTime() async {
    await SharedPrefHelper.setData(SharedPrefKeys.kIsFirstTime, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Column(
            children: [
              verticalSpace(40),
              const OnboardingImage(),
              Text(
                "Experience Convenient and Fast Food Delivery with Foodie",
                textAlign: TextAlign.center,
                style: FontStyles.font24BlueBold,
              ),
              verticalSpace(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Text(
                    textAlign: TextAlign.center,
                    style: FontStyles.font13GreyRegular,
                    "Say goodbye to waiting in line or dealing with traffic, our food delivery app will make ordering and receiving your food a breeze."),
              ),
              verticalSpace(30),
              CustomElevatedButton(
                width: 200.w,
                gradient: ColorsStyles.kButtonGradient,
                onPressed: () {
                  setIsFirstTime();
                  context.pushNamedAndRemoveUntil(Routes.kLoginView,
                      predicate: (Route<dynamic> route) {
                    return false;
                  });
                },
                text: "Get Started",
              )
            ],
          ),
        ),
      )),
    );
  }
}
