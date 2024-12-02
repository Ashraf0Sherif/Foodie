import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/font_weight_helper.dart';

import 'colors.dart';

abstract class FontStyles {
  static TextStyle font20BlackBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font18PassiveRegular = TextStyle(
    fontSize: 18.sp,
    color: ColorsStyles.kPassiveColor,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font24BlueBold = TextStyle(
    color: ColorsStyles.kSecondaryColor,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font12PassiveBold = TextStyle(
    color: ColorsStyles.kPassiveColor,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font12GreyRegular = TextStyle(
    color: Colors.grey,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font12BlackRegular = TextStyle(
    color: Colors.black,
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font24Bold = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16GreyRegular = TextStyle(
    color: Colors.grey,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16BlackBold = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font17BlueMedium = TextStyle(
    color: ColorsStyles.kPrimaryColor,
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font13GreyRegular = TextStyle(
    color: Colors.grey,
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font16SecondaryColorBold = TextStyle(
    color: ColorsStyles.kSecondaryColor,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14WhiteBold = TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14PassiveRegular = TextStyle(
    color: ColorsStyles.kPassiveColor,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font14Grey = TextStyle(
    color: Colors.grey,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font16BlackSemiBold = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
}
