import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../generated/l10n.dart';
import '../../logic/profile_cubit/profile_cubit.dart';

class ManageProfileForm extends StatefulWidget {
  const ManageProfileForm({super.key});

  @override
  State<ManageProfileForm> createState() => _ManageProfileFormState();
}

class _ManageProfileFormState extends State<ManageProfileForm> {
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;
  late TextEditingController _currentPasswordController;
  late GlobalKey<FormState> _formKey;
  bool _currentPasswordObscureText = true;
  bool _passwordObscureText = true;

  @override
  void initState() {
    super.initState();
    final foodieUser = context.read<ProfileCubit>().foodieUser;
    _formKey = context.read<ProfileCubit>().formKey;
    _firstNameController = context.read<ProfileCubit>().firstNameController;
    _firstNameController.text = foodieUser!.username!.split(' ')[0];
    _lastNameController = context.read<ProfileCubit>().lastNameController;
    _lastNameController.text = foodieUser.username!.split(' ')[1];
    _emailController = context.read<ProfileCubit>().emailController;
    _emailController.text = foodieUser.email!;
    _phoneNumberController = context.read<ProfileCubit>().phoneNumberController;
    _phoneNumberController.text = foodieUser.phoneNumber ?? '';
    _passwordController = context.read<ProfileCubit>().passwordController;
    _currentPasswordController =
        context.read<ProfileCubit>().currentPasswordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          verticalSpace(20),
          Row(
            children: [
              Expanded(
                  child: buildSizedBoxField(
                      controller: _firstNameController,
                      label: S.of(context).firstNameLabel)),
              horizontalSpace(10),
              Expanded(
                  child: buildSizedBoxField(
                      controller: _lastNameController,
                      label: S.of(context).lastNameLabel)),
            ],
          ),
          verticalSpace(30),
          buildSizedBoxField(
              controller: _emailController, label: S.of(context).emailLabel),
          verticalSpace(30),
          buildSizedBoxField(
              controller: _phoneNumberController,
              label: S.of(context).phoneNumberLabel),
          verticalSpace(30),
          buildSizedBoxField(
            controller: _passwordController,
            label: S.of(context).passwordLabel,
            isObscureText: _passwordObscureText,
            suffixIcon: GestureDetector(
              onTap: () => {
                setState(() {
                  _passwordObscureText = !_passwordObscureText;
                })
              },
              child: Icon(_passwordObscureText
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            validator: (value) {
              if (value != null &&
                  value.isNotEmpty &&
                  (!AppRegex.isPasswordValid(value) ||
                      value.length < 8 ||
                      !AppRegex.hasMinLength(value) ||
                      !AppRegex.hasSpecialCharacter(value) ||
                      !AppRegex.hasUpperCase(value) ||
                      !AppRegex.hasLowerCase(value) ||
                      !AppRegex.hasNumber(value))) {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        S.of(context).passwordRequirements,
                        style: FontStyles.font16SecondaryColorBold,
                      ),
                    );
                  },
                );
                return '';
              }
            },
          ),
          verticalSpace(30),
          buildSizedBoxField(
            controller: _currentPasswordController,
            label: S.of(context).currentPassword,
            isObscureText: _currentPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () => {
                setState(() {
                  _currentPasswordObscureText = !_currentPasswordObscureText;
                })
              },
              child: Icon(_currentPasswordObscureText
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
            validator: (value) {
              if ((_passwordController.text != '' &&
                      _currentPasswordController.text == '') ||
                  value == null ||
                  value.isEmpty) {
                return S.of(context).pleaseEnterCurrentPassword;
              }
            },
          ),
          verticalSpace(30),
          CustomElevatedButton(
            width: 200.w,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<ProfileCubit>().updateFoodieUser();
              }
            },
            text: S.of(context).saveChanges,
            gradient: ColorsStyles.kButtonGradient,
            borderRadius: BorderRadius.circular(10.r),
          ),
          verticalSpace(30),
        ],
      ),
    );
  }

  SizedBox buildSizedBoxField(
      {required TextEditingController controller,
      required String label,
      Function(String?)? validator,
      bool isObscureText = false,
      Widget? suffixIcon}) {
    return SizedBox(
      height: 70.h,
      child: CustomTextFormField(
        isObscureText: isObscureText,
        controller: controller,
        validator: validator,
        suffixIcon: suffixIcon,
        keyboardType: TextInputType.text,
        label: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: ColorsStyles.kPrimaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: ColorsStyles.kPrimaryColor,
            width: 1.8,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
