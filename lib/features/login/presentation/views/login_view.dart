import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/features/login/presentation/widgets/dont_have_an_account.dart';

import '../../../../core/constants.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/login_form.dart';
import '../widgets/login_bloc_listener.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  const EmailAndPassword(),
                  verticalSpace(24),
                  const DontHaveAnAccount(),
                  const LoginBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
