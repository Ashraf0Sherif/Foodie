import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/spacing.dart';
import '../theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
    required this.agreement,
    required this.title,
  });

  final String title;
  final String agreement;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18.sp),
            textAlign: TextAlign.center,
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          verticalSpace(10),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                agreement,textAlign: TextAlign.start,
                style: FontStyles.font16SecondaryColorBold.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}