import 'package:flutter/material.dart';

import '../theming/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String label;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final InputBorder? border, focusedBorder, enabledBorder;
  final Function(String?) validator;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.label,
    this.isObscureText,
    this.suffixIcon,
    this.border,
    this.focusedBorder,
    this.enabledBorder,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return validator(value);
      },
      obscureText: isObscureText ?? false,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(color: Colors.black),
        suffixIcon: suffixIcon,
        border: border ??
            const UnderlineInputBorder(
              borderSide: BorderSide(color: ColorsStyles.kPrimaryColor),
            ),
        focusedBorder: focusedBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorsStyles.kPrimaryColor,
                width: 1.8,
              ),
            ),
        enabledBorder: enabledBorder ??
            const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
        suffixIconColor: Colors.grey,
      ),
    );
  }
}