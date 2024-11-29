import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/forgot_password/logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = context.read<ForgotPasswordCubit>().emailController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgotPasswordCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _emailController,
            label: 'E-mail',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter a valid email";
              }
            },
          ),
          verticalSpace(38),
          CustomElevatedButton(
            gradient: ColorsStyles.kButtonGradient,
            onPressed: () => validateAndResetPassword(),
            text: 'RESET',
          ),
        ],
      ),
    );
  }

  void validateAndResetPassword() {
    if (context.read<ForgotPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ForgotPasswordCubit>().emitForgotPasswordStates();
    }
  }
}
