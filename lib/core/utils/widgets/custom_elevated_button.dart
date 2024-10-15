import 'package:flutter/material.dart';

import '../../theming/colors.dart';
import '../../theming/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = 328,
    this.height = 45,
  });

  final double? width, height;
  final void Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [ColorsStyles.kPrimaryColor, ColorsStyles.kSecondaryColor]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Center(
          child: Text(
            text,
            style: FontStyles.kTextStyleBoldRegular,
          ),
        ),
      ),
    );
  }
}
