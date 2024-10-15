import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

abstract class FontStyles {
  static TextStyle font20Black700Weight = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font24BlueBold = TextStyle(
    color: Colors.blue,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
  static const TextStyle kTitleBold =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle kSubTitleRegular = TextStyle(
    color: Colors.grey,
  );

  static const TextStyle kTextStyle16 = TextStyle(
      fontSize: 16,
      color: ColorsStyles.kSecondaryColor,
      fontWeight: FontWeight.bold);
  static const TextStyle kTextStyleBoldRegular = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
