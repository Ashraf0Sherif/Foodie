import 'package:flutter/material.dart';
import 'package:foodie/core/theming/colors.dart';

void showSnackBar(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all( Radius.circular(4)),
        side: BorderSide(color: ColorsStyles.kPrimaryColor,width: 1.4),
      ),
      backgroundColor: ColorsStyles.kSecondaryColor,
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
