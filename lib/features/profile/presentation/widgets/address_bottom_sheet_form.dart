import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class AddressBottomSheetForm extends StatelessWidget {
  const AddressBottomSheetForm({
    super.key,
    required this.edit,
  });

  final bool edit;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  label: 'Address Title',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    return "Please enter your address title";
                  },
                  controller: TextEditingController(),
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Street',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    return "Please enter your address title";
                  },
                  controller: TextEditingController(),
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Floor',
                  keyboardType: TextInputType.emailAddress,
                  controller: TextEditingController(),
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Building',
                  keyboardType: TextInputType.emailAddress,
                  controller: TextEditingController(),
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Apartment',
                  keyboardType: TextInputType.emailAddress,
                  controller: TextEditingController(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 18.h),
              child: CustomElevatedButton(
                gradient: ColorsStyles.kButtonGradient,
                onPressed: () {},
                text: edit ? 'UPDATE' : 'ADD ADDRESS',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
