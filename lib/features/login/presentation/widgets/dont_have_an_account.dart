import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            style: FontStyles.font16SecondaryColorBold.copyWith(fontSize: 14),
          ),
        ),
      ],
    );
  }
}
