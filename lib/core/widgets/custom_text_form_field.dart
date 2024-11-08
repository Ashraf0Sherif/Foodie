import 'package:flutter/material.dart';

import '../theming/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required TextEditingController controller,
    required this.label,
    required this.keyboardType,
    this.isObscureText,
    this.suffixIcon,
    this.validatorMessage,
    this.border,
    this.focusedBorder,
    this.enabledBorder,
  }) : _controller = controller;

  final TextEditingController _controller;
  final TextInputType keyboardType;
  final String label;
  final String? validatorMessage;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final InputBorder? border, focusedBorder, enabledBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (validator) {
        if (validator!.isEmpty) {
          return validatorMessage ?? 'Email cannot be empty';
        }
        return null;
      },
      obscureText: isObscureText ?? false,
      keyboardType: keyboardType,
      controller: _controller,
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
