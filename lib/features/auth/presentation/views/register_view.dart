import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/utils/extensions.dart';
import 'package:foodie/features/auth/presentation/views/widgets/custom_password_text_form_field.dart';

import '../../../../core/constants.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/widgets/custom_elevated_button.dart';
import '../../../../core/utils/widgets/custom_text_form_field.dart';

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

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  void dispose() {
    _emailController.dispose();
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Column userAgreement({required String title, required String agreement}) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
        const Divider(
          thickness: 0,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: SizedBox(
            height: 300,
            child: ListView(
              children: [
                Text(
                  agreement,
                  style: FontStyles.kTextStyle16.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
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
            child: Stack(
              children: [
                Form(
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
                        'Nice to meet you!',
                        style: FontStyles.kTitleBold,
                      ),
                      const Text(
                        "I hope you spend your all money here :)",
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
                        height: 10,
                      ),
                      CustomPasswordTextFormField(
                        passwordController: _confirmPasswordController,
                        label: 'Confirm Password',
                        validatorMessage: 'Confirm Password cannot be empty',
                      ),
                      const SizedBox(
                        height: 36,
                      ),
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
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                          'By creating an account, you are agreeing to our'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return userAgreement(
                                    title: 'Terms of Service',
                                    agreement: terms,
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Terms of Service',
                              style: FontStyles.kTextStyle16.copyWith(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ),
                          const Text(" and "),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return userAgreement(
                                    title: 'Privacy Policy',
                                    agreement: policy,
                                  );
                                },
                              );
                            },
                            child: const Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: ColorsStyles.kSecondaryColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: -5,
                  top: 40,
                  child: GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Image.asset(
                        AssetsData.kBackButton,
                        width: 25,
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

final String terms =
    "Welcome to Foodie! By using our app, you agree to these terms:\n1. Use: You must be 13+ to use Foodie. Maintain your account's confidentiality.\n2. Content: You own your uploaded content but grant Foodie a license to use it.\n3. Prohibited Actions: No misuse, interference, or harmful content allowed.\n4. Liability: Foodie isn't liable for user content or third-party actions.By continuing to use Foodie, you accept these terms.";
final String policy =
    "At Foodie, we value your privacy. We collect personal information like your name and email to provide and improve our services. We do not share your information with third parties except to comply with the law or with your consent. We use reasonable security measures to protect your data. For questions, contact us at shifoashraf75@gmail.com .";
