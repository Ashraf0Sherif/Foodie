import 'package:flutter/material.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField(
      {super.key, required this.passwordController, required this.label, required this.validatorMessage});

  final TextEditingController passwordController;
  final String label;
  final String validatorMessage;
  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: (validator) {
        if (validator!.isEmpty) {
          return widget.validatorMessage;
        }
        return null;
      },
      controller: widget.passwordController,
      decoration: InputDecoration(
        label: Text(widget.label),
        suffixIcon: IconButton(
          icon: obscureText
              ? const Icon(
                  Icons.lock,
                )
              : const Icon(Icons.lock_open),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
      ),
    );
  }
}
