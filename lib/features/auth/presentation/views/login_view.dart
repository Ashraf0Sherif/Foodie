import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';

import '../../../../core/constants.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    _emailController.dispose();
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
            child: Form(
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
                            width: 50,
                          ),
                        ),
                      ),
                    ),
                    verticalSpace(31),
                    Text(
                      'Welcome to Foodie',
                      style: FontStyles.font24Bold,
                    ),
                    Text(
                      "Please Login to continue",
                      style: FontStyles.font16GreyRegular,
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
                      validatorMessage: 'Password cannot be empty',
                      isObscureText: _obscureText,
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _obscureText = !_obscureText;
                          })
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    verticalSpace(8),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextButton(
                        onPressed: () {
                          context.pushNamed(Routes.kResetPasswordView);
                        },
                        child: Text(
                          'Forgot Password?',
                          style: FontStyles.font16SecondaryColorBold,
                        ),
                      ),
                    ),
                    verticalSpace(35),
                    CustomElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          //TODO : Login Logic
                        } else {
                          setState(() {
                            autoValidateMode = AutovalidateMode.always;
                          });
                        }
                      },
                      text: 'LOGIN',
                    ),
                    verticalSpace(24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account? ',
                        ),
                        InkWell(
                          onTap: () {
                            context.pushNamed(Routes.kRegisterView);
                          },
                          child: Text(
                            'Create One',
                            style: FontStyles.font16SecondaryColorBold
                                .copyWith(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
