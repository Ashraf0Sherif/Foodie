import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class AddToCartCardButton extends StatelessWidget {
  const AddToCartCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Card(
        elevation: 5.5,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),

        ),
        child: Row(
          children: [
            SizedBox(
              width: 80.w,
              child: Center(
                  child: Text(
                "\$17",
                style: FontStyles.font16BlackSemiBold,
              )),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.r),
                          bottomRight: Radius.circular(8.r)),
                      gradient: ColorsStyles.kButtonGradient),
                  child: Center(
                      child: Text(
                    "Add to Cart",
                    style: FontStyles.font16WhiteSemiBold,
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
