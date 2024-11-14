import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/font_weight_helper.dart';

import 'colors.dart';

abstract class FontStyles {
  static TextStyle font20Black700Bold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font24BlueBold = TextStyle(
    color: Colors.blue,
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
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
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font14Grey = TextStyle(
    color: Colors.grey,
  );
}