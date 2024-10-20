import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.width,
      this.height});

  final double? width, height;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          backgroundColor:
              WidgetStateProperty.all<Color>(ColorsStyles.kPrimaryColor),
          fixedSize: WidgetStateProperty.all<Size>(
            Size(width ?? 300.w, height ?? 50.h),
          )),
      child: Text(text, style: FontStyles.font14WhiteBold),
    );
  }
}
