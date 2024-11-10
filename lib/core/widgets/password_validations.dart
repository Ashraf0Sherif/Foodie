import 'package:flutter/material.dart';
import 'package:foodie/core/helpers/spacing.dart';

import '../theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  final bool hasNumber;

  const PasswordValidations(
      {super.key,
      required this.hasLowercase,
      required this.hasUppercase,
      required this.hasSpecialCharacter,
      required this.hasMinLength,
      required this.hasNumber});

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: FontStyles.font13GreyRegular.copyWith(
            decoration:
                hasValidated ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.grey,
            decorationThickness: 2,
            color: hasValidated ? Colors.green : Colors.black,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least one lowercase letter', hasLowercase),
        buildValidationRow('At least one uppercase letter', hasUppercase),
        buildValidationRow('At least one number', hasNumber),
        buildValidationRow('At least one special character', hasSpecialCharacter),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }
}
