import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/widgets/terms_and_conditions.dart';

import '../theming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  final String terms =
      "Welcome to Foodie! By using our app, you agree to these terms:\n1. Use: You must be 13+ to use Foodie. Maintain your account's confidentiality.\n2. Content: You own your uploaded content but grant Foodie a license to use it.\n3. Prohibited Actions: No misuse, interference, or harmful content allowed.\n4. Liability: Foodie isn't liable for user content or third-party actions.By continuing to use Foodie, you accept these terms.";
  final String policy =
      "At Foodie, we value your privacy. We collect personal information like your name and email to provide and improve our services. We do not share your information with third parties except to comply with the law or with your consent. We use reasonable security measures to protect your data. For questions, contact us at shifoashraf75@gmail.com .";

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
        text: 'By creating an account, you are agreeing to our ',
        style: FontStyles.font13GreyRegular,
        children: [
          TextSpan(
            text: 'Terms of Service',
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
                        title: 'Terms of Service',
                        agreement: terms,
                      ),
                    );
                  },
                );
              },
          ),
          TextSpan(
              text: ' and ',
              style: FontStyles.font13GreyRegular.copyWith(height: 1.5.h)),
          TextSpan(
            text: 'Privacy Policy',
            style:
                FontStyles.font16SecondaryColorBold.copyWith(fontSize: 15.sp),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return buildSizedBox(TermsAndConditions(
                      title: 'Privacy Policy',
                      agreement: policy,
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
