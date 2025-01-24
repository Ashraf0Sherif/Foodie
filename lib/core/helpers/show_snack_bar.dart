import 'package:flutter/material.dart';
import 'package:foodie/core/theming/colors.dart';

void showSnackBar(BuildContext context,
    {required String message, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4), topRight: Radius.circular(4)),
        side:
            BorderSide(color: color ?? ColorsStyles.kPrimaryColor, width: 1.4),
      ),
      backgroundColor: color ?? ColorsStyles.kSecondaryColor,
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
