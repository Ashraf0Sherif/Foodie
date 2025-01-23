import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../helpers/spacing.dart';
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
        buildValidationRow(S.of(context).atLeastOneLowercase, hasLowercase),
        buildValidationRow(S.of(context).atLeastOneUppercase, hasUppercase),
        buildValidationRow(S.of(context).atLeastOneNumber, hasNumber),
        buildValidationRow(S.of(context).atLeastOneSpecialCharacter, hasSpecialCharacter),
        buildValidationRow(S.of(context).atLeast8Characters, hasMinLength),
      ],
    );
  }
}
