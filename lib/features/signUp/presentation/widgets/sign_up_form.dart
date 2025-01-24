import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_state.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/password_validations.dart';
import '../../../../generated/l10n.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  late TextEditingController _firstnameController;
  late TextEditingController _lastnameController;
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
    _phoneController = context.read<SignUpCubit>().phoneController;
    _passwordController = context.read<SignUpCubit>().passwordController;
    _confirmPasswordController =
        context.read<SignUpCubit>().confirmPasswordController;
    _firstnameController = context.read<SignUpCubit>().firstnameController;
    _lastnameController = context.read<SignUpCubit>().lastnameController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    _passwordController.addListener(
      () {
        setState(() {
          hasLowercase = AppRegex.hasLowerCase(_passwordController.text);
          hasUppercase = AppRegex.hasUpperCase(_passwordController.text);
          hasSpecialCharacter =
              AppRegex.hasSpecialCharacter(_passwordController.text);
          hasMinLength = AppRegex.hasMinLength(_passwordController.text);
          hasNumber = AppRegex.hasNumber(_passwordController.text);
        });
      },
    );
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
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  controller: _firstnameController,
                  label: S.of(context).firstNameLabel,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseEnterFirstName;
                    }
                  },
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: CustomTextFormField(
                  controller: _lastnameController,
                  label: S.of(context).lastNameLabel,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return S.of(context).pleaseEnterLastName;
                    }
                  },
                ),
              ),
            ],
          ),
          verticalSpace(10),
          CustomTextFormField(
            controller: _emailController,
            label: S.of(context).emailLabel,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return S.of(context).pleaseEnterValidEmail;
              }
            },
          ),
          verticalSpace(10),
          CustomTextFormField(
            controller: _phoneController,
            label: S.of(context).phoneNumberLabel,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return S.of(context).pleaseEnterValidPhoneNumber;
              }
            },
          ),
          CustomTextFormField(
            controller: _passwordController,
            label: S.of(context).passwordLabel,
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
                return S.of(context).pleaseEnterValidPassword;
              }
            },
          ),
          CustomTextFormField(
            controller: _confirmPasswordController,
            isObscureText: _obscureConfirmPassword,
            label: S.of(context).confirmPasswordLabel,
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
                return S.of(context).passwordDoesNotMatch;
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
          Builder(builder: (context) {
            final loginState = context.watch<SignUpCubit>().state;
            bool isLoading = loginState is SignUpLoading;
            return CustomElevatedButton(
              gradient: ColorsStyles.kButtonGradient,
              onPressed: isLoading ? () {} : validateAndSignUp,
              text: S.of(context).registerButton,
              loading: isLoading,
            );
          }),
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
