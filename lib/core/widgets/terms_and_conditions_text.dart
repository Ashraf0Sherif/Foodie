import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/widgets/terms_and_conditions.dart';

import '../../generated/l10n.dart';
import '../theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  SizedBox buildSizedBox(Widget child) {
    return SizedBox(
      height: 400.h,
      // Fixed height for Privacy Policy
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: S.of(context).termsAndConditionsText, // Localized
        style: FontStyles.font13GreyRegular,
        children: [
          TextSpan(
            text: S.of(context).termsOfService, // Localized
            style:
                FontStyles.font16SecondaryColorBold.copyWith(fontSize: 15.sp),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return buildSizedBox(
                      TermsAndConditions(
                        title: S.of(context).termsOfService, // Localized
                        agreement:
                            S.of(context).termsOfServiceContent, // Localized
                      ),
                    );
                  },
                );
              },
          ),
          TextSpan(
              text: S.of(context).and, // Localized
              style: FontStyles.font13GreyRegular.copyWith(height: 1.5.h)),
          TextSpan(
            text: S.of(context).privacyPolicy, // Localized
            style:
                FontStyles.font16SecondaryColorBold.copyWith(fontSize: 15.sp),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return buildSizedBox(TermsAndConditions(
                      title: S.of(context).privacyPolicy, // Localized
                      agreement:
                          S.of(context).privacyPolicyContent, // Localized
                    ));
                  },
                );
              },
          ),
        ],
      ),
    );
  }
}
