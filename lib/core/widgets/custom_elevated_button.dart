import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/colors.dart';

import '../theming/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = 328,
    this.height = 45,
    this.borderRadius,
    this.containerColor,
    this.gradient,
    this.textColor,
    this.isDisabled = false,
    this.loading = false,
  });

  final bool isDisabled;
  final bool loading;
  final double? width, height;
  final void Function() onPressed;
  final String text;
  final BorderRadiusGeometry? borderRadius;
  final Color? containerColor;
  final Color? textColor;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: containerColor,
        gradient: gradient,
        borderRadius: borderRadius ?? BorderRadius.circular(10.r),
      ),
      child: ElevatedButton(
        onPressed: isDisabled || loading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          shadowColor: Colors.black.withOpacity(0.2),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          ),
          elevation: 5,
        ),
        child: Center(
          child: loading
              ? SizedBox(
                  width: 25.w,
                  height: 25.h,
                  child: const CircularProgressIndicator(
                    color: ColorsStyles.kPrimaryColor,
                    strokeWidth: 2,
                    backgroundColor: Colors.white,
                  ),
                )
              : Text(
                  text,
                  style: FontStyles.font14WhiteBold.copyWith(
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
