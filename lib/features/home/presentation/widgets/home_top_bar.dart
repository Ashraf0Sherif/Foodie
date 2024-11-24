import 'package:flutter/material.dart';
import 'package:foodie/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  final LinearGradient _gradient = const LinearGradient(
    colors: <Color>[
      ColorsStyles.kPrimaryColor,
      ColorsStyles.kSecondaryColor,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ShaderMask(
      shaderCallback: (rect) => _gradient.createShader(rect),
      child: Text(
        "Foodie",
        style: FontStyles.font24BlueBold,
      ),
    ));
  }
}
