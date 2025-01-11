import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/profile/presentation/widgets/update_profile_bloc_listener.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/profile_cubit/profile_cubit.dart';

class ManageProfileForm extends StatefulWidget {
  const ManageProfileForm({super.key});

  @override
  State<ManageProfileForm> createState() => _ManageProfileFormState();
}

class _ManageProfileFormState extends State<ManageProfileForm> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;
  late TextEditingController _currentPasswordController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    final foodieUser = context.read<ProfileCubit>().foodieUser;
    _formKey = context.read<ProfileCubit>().formKey;
    _usernameController = context.read<ProfileCubit>().usernameController;
    _usernameController.text = foodieUser!.username;
    _emailController = context.read<ProfileCubit>().emailController;
    _emailController.text = foodieUser.email;
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
          buildSizedBoxField(
              controller: _usernameController, label: 'Username'),
          verticalSpace(30),
          buildSizedBoxField(controller: _emailController, label: 'E-mail'),
          verticalSpace(30),
          buildSizedBoxField(
              controller: _phoneNumberController, label: 'Phone Number'),
          verticalSpace(30),
          buildSizedBoxField(
            controller: _passwordController,
            label: 'Password',
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
                        'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character.',
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
            label: 'Current Password',
            validator: (value) {
              if (_passwordController.text != '' &&
                  _currentPasswordController.text == '') {
                return 'Please enter your current password';
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
            text: 'Save Changes',
            gradient: ColorsStyles.kButtonGradient,
            borderRadius: BorderRadius.circular(10.r),
          ),
          verticalSpace(30),
          const UpdateProfileBlocListener()
        ],
      ),
    );
  }

  SizedBox buildSizedBoxField(
      {required TextEditingController controller,
      required String label,
      Function(String?)? validator}) {
    return SizedBox(
      height: 70.h,
      child: CustomTextFormField(
        controller: controller,
        validator: validator,
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
        keyboardType: TextInputType.text,
        label: label,
      ),
    );
  }
}
