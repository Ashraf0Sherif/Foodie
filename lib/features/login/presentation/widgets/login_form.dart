import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/app_regex.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/login_cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _emailController = context.read<LoginCubit>().emailController;
    _passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
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
          verticalSpace(10),
          CustomTextFormField(
            controller: _passwordController,
            label: 'Password',
            isObscureText: _obscureText,
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: GestureDetector(
              onTap: () => {
                setState(() {
                  _obscureText = !_obscureText;
                })
              },
              child:
                  Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid password";
              }
            },
          ),
          verticalSpace(8),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: TextButton(
              onPressed: () {
                context.pushNamed(Routes.kForgotPasswordView);
              },
              child: Text(
                'Forgot Password?',
                style: FontStyles.font16SecondaryColorBold,
              ),
            ),
          ),
          verticalSpace(8),
          CustomElevatedButton(
            gradient: ColorsStyles.kButtonGradient,
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, Routes.kLandingView, (route) => false),
            text: 'LOGIN',
          ),
        ],
      ),
    );
  }

  void validateAndLogin() {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
