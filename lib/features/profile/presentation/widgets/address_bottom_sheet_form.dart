import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/login/data/models/user_model/address.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class AddressBottomSheetForm extends StatefulWidget {
  const AddressBottomSheetForm({super.key, required this.edit, this.address});

  final bool edit;
  final Address? address;

  @override
  State<AddressBottomSheetForm> createState() => _AddressBottomSheetFormState();
}

class _AddressBottomSheetFormState extends State<AddressBottomSheetForm> {
  late TextEditingController _addressTitleController;
  late TextEditingController _streetController;
  late TextEditingController _floorController;
  late TextEditingController _buildingController;
  late TextEditingController _apartmentController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _addressTitleController =
        context.read<ProfileCubit>().addressTitleController;
    _addressTitleController.text = widget.edit ? widget.address!.title : '';
    _streetController = context.read<ProfileCubit>().streetController;
    _streetController.text = widget.edit ? widget.address!.street : '';
    _floorController = context.read<ProfileCubit>().floorController;
    _floorController.text = (widget.edit ? widget.address!.floor : '')!;
    _buildingController = context.read<ProfileCubit>().buildingController;
    _buildingController.text = (widget.edit ? widget.address!.building : '')!;
    _apartmentController = context.read<ProfileCubit>().apartmentController;
    _apartmentController.text = (widget.edit ? widget.address!.apartment : '')!;
    _formKey = context.read<ProfileCubit>().formKey;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  label: 'Address Title',
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your address title";
                    }
                  },
                  controller: _addressTitleController,
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Street',
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your street";
                    }
                  },
                  controller: _streetController,
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Floor',
                  keyboardType: TextInputType.text,
                  controller: _floorController,
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Building',
                  keyboardType: TextInputType.text,
                  controller: _buildingController,
                ),
                verticalSpace(10),
                CustomTextFormField(
                  label: 'Apartment',
                  keyboardType: TextInputType.text,
                  controller: _apartmentController,
                ),
                verticalSpace(100),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 18.h),
              child: CustomElevatedButton(
                gradient: ColorsStyles.kButtonGradient,
                onPressed: () {
                  if (widget.edit) {
                    context
                        .read<ProfileCubit>()
                        .updateAddress(address: widget.address!);
                    _clearAndPop();
                  } else {
                    if (_formKey.currentState!.validate()) {
                      context.read<ProfileCubit>().addAddress();
                      _clearAndPop();
                    }
                  }
                },
                text: widget.edit ? 'UPDATE' : 'ADD ADDRESS',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _clearAndPop() {
    _streetController.clear();
    _floorController.clear();
    _buildingController.clear();
    _apartmentController.clear();
    _addressTitleController.clear();
    context.pop();
  }
}
