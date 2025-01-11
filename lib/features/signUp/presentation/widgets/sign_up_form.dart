import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_cubit.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/password_validations.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _usernameController;
  bool _obscureText = true;
  bool _obscureConfirmPassword = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  bool hasNumber = false;

  @override
  void initState() {
    super.initState();
    _emailController = context.read<SignUpCubit>().emailController;
    _passwordController = context.read<SignUpCubit>().passwordController;
    _confirmPasswordController =
        context.read<SignUpCubit>().confirmPasswordController;
    _usernameController = context.read<SignUpCubit>().usernameController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    _passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(_passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(_passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(_passwordController.text);
        hasMinLength = AppRegex.hasMinLength(_passwordController.text);
        hasNumber = AppRegex.hasNumber(_passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _usernameController,
            label: 'Username',
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your first name";
              }
            },
          ),
          verticalSpace(10),
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
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child:
                  Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value) ||
                  value.length < 8 ||
                  !hasMinLength ||
                  !hasSpecialCharacter ||
                  !hasUppercase ||
                  !hasLowercase ||
                  !hasNumber) {
                return "Please enter a valid password";
              }
            },
          ),
          CustomTextFormField(
            controller: _confirmPasswordController,
            isObscureText: _obscureConfirmPassword,
            label: 'Confirm Password',
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureConfirmPassword = !_obscureConfirmPassword;
                });
              },
              child: Icon(_obscureConfirmPassword
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value != _passwordController.text) {
                return "Password does not match";
              }
            },
          ),
          verticalSpace(8),
          PasswordValidations(
              hasLowercase: hasLowercase,
              hasUppercase: hasUppercase,
              hasSpecialCharacter: hasSpecialCharacter,
              hasMinLength: hasMinLength,
              hasNumber: hasNumber),
          verticalSpace(36),
          CustomElevatedButton(
            gradient: ColorsStyles.kButtonGradient,
            onPressed: () {
              validateAndSignUp();
            },
            text: 'REGISTER',
          ),
        ],
      ),
    );
  }

  void validateAndSignUp() {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
