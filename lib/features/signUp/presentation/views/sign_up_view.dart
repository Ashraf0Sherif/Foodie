import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/widgets/terms_and_conditions_text.dart';
import 'package:foodie/features/signUp/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:foodie/features/signUp/presentation/widgets/sign_up_form.dart';

import '../../../../core/ui_constants.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    _emailController.dispose();
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorsStyles.kViewBackground,
        body: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      verticalSpace(60),
                      Center(
                        child: Card(
                          elevation: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SvgPicture.asset(
                              AssetsData.kLogo,
                              width: 50.w,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(31),
                      Text(
                        'Nice to meet you!',
                        style: FontStyles.font24Bold,
                      ),
                      Text(
                        "I hope you spend your all money here :)",
                        style: FontStyles.font14GreyRegular,
                      ),
                      verticalSpace(10),
                      const SignUpForm(),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      const SignUpBlocListener(),
                    ],
                  ),
                ),
                Positioned(
                  left: -5.w,
                  top: 40.h,
                  child: GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Image.asset(
                        AssetsData.kBackButton,
                        width: 25.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
