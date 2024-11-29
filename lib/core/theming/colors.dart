import 'package:flutter/material.dart';

abstract class ColorsStyles {
  static const Color kViewBackground = Color(0xffF2F3F7);
  static const Color kPrimaryColor = Color(0xff6C92F4);
  static const Color kSecondaryColor = Color(0xff1A73E9);
  static const Color kPassiveColor = Color(0xff919191);
  static const Gradient kButtonGradient = LinearGradient(
      colors: [ColorsStyles.kPrimaryColor, ColorsStyles.kSecondaryColor]);
}
