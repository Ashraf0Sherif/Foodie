import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/utils/extensions.dart';
import 'package:foodie/features/auth/presentation/views/widgets/custom_password_text_form_field.dart';
import '../../../../core/constants.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/widgets/custom_elevated_button.dart';
import '../../../../core/utils/widgets/custom_text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultHorizontalPadding),
            child: Form(
              key: formKey,
              autovalidateMode: autoValidateMode,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
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
                  const SizedBox(
                    height: 31,
                  ),
                  const Text(
                    'Welcome to Foodie',
                    style: FontStyles.kTitleBold,
                  ),
                  const Text(
                    "Please Login to continue",
                    style: FontStyles.kSubTitleRegular,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    emailController: _emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomPasswordTextFormField(
                    passwordController: _passwordController,
                    label: 'Password',
                    validatorMessage: 'Password cannot be empty',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            context.pushNamed(Routes.kResetPasswordView);
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: FontStyles.kTextStyle16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
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
                  const SizedBox(
                    height: 24,
                  ),
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
                          style: FontStyles.kTextStyle16.copyWith(fontSize: 14),
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
    );
  }
}
