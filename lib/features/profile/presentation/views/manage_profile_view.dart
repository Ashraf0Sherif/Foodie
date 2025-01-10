import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/core/theming/ui_constants.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';
import 'package:foodie/core/widgets/custom_text_form_field.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ManageProfileView extends StatelessWidget {
  const ManageProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorsStyles.kViewBackground,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'Manage Profile',
                  style: FontStyles.font24SecondaryColorBold,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none, // Allows the icon to overflow
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: ColorsStyles.kPrimaryColor),
                            borderRadius: BorderRadius.circular(70.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: CircleAvatar(
                              radius: 70.r,
                              backgroundImage:
                                  AssetImage('assets/images/129702213.jpg'),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          // Positions the icon slightly below
                          right: 0,
                          // Positions the icon slightly to the right
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: ColorsStyles.kPrimaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.edit,
                                size: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    verticalSpace(20),
                    SizedBox(
                      height: 55.h,
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                            width: 1.8,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        label: 'Name',
                      ),
                    ),
                    verticalSpace(30),
                    SizedBox(
                      height: 55.h,
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                            width: 1.8,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        label: 'Email',
                      ),
                    ),
                    verticalSpace(30),
                    SizedBox(
                      height: 55.h,
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                            width: 1.8,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        label: 'Password',
                      ),
                    ),
                    verticalSpace(30),
                    SizedBox(
                      height: 55.h,
                      child: CustomTextFormField(
                        controller: TextEditingController(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: ColorsStyles.kPrimaryColor,
                            width: 1.8,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        label: 'Current Password',
                      ),
                    ),
                    verticalSpace(30),
                    CustomElevatedButton(
                      width: 200.w,
                      onPressed: () {},
                      text: 'Save Changes',
                      gradient: ColorsStyles.kButtonGradient,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
