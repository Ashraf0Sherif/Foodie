import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/forgot_password/presentation/widgets/forgot_password_form.dart';

import '../../../../core/ui_constants.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/forgot_password_bloc_listener.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

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
                Form(
                  key: formKey,
                  autovalidateMode: autoValidateMode,
                  child: SingleChildScrollView(
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
                          'Forgot Password?',
                          style: FontStyles.font24Bold,
                        ),
                        Text(
                          "Don’t worry!",
                          style: FontStyles.font14GreyRegular,
                        ),
                        Text(
                          "You can easily reset your password ",
                          style: FontStyles.font14GreyRegular,
                        ),
                        verticalSpace(10),
                        const ForgotPasswordForm(),
                        const ForgotPasswordBlocListener(),
                      ],
                    ),
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
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
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
