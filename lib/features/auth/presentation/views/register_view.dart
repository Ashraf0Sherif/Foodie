import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/widgets/terms_and_conditions_text.dart';

import '../../../../core/constants.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
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
                          'Nice to meet you!',
                          style: FontStyles.font24Bold,
                        ),
                        const Text(
                          "I hope you spend your all money here :)",
                          style: FontStyles.font14Grey,
                        ),
                        verticalSpace(10),
                        CustomTextFormField(
                          controller: _emailController,
                          label: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        verticalSpace(10),
                        CustomTextFormField(
                          controller: _passwordController,
                          label: 'Password',
                          isObscureText: _obscurePassword,
                          validatorMessage: 'Password cannot be empty',
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            child: Icon(_obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        verticalSpace(10),
                        CustomTextFormField(
                          controller: _confirmPasswordController,
                          isObscureText: _obscureConfirmPassword,
                          label: 'Confirm Password',
                          validatorMessage: 'Confirm Password cannot be empty',
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureConfirmPassword =
                                    !_obscureConfirmPassword;
                              });
                            },
                            child: Icon(_obscureConfirmPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                        verticalSpace(36),
                        CustomElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              //TODO : Register Logic
                            } else {
                              setState(() {
                                autoValidateMode = AutovalidateMode.always;
                              });
                            }
                          },
                          text: 'REGISTER',
                        ),
                        verticalSpace(16),
                        const TermsAndConditionsText(),
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
