import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SuccessReceipts extends StatelessWidget {
  const SuccessReceipts({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 14.0.w, right: 14.w, bottom: 12.h),
          child: Card(
            elevation: 5,
            shadowColor: Colors.white.withOpacity(0.75),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '23/05/2020 - 23:20',
                            style: FontStyles.font14PassiveRegular,
                          ),
                          Text(
                            'London, UK',
                            style: FontStyles.font16BlackSemiBold,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '5000 EGP',
                        style: FontStyles.font16SecondaryColorBold,
                      ),
                      IconButton(
                        onPressed: () {
                          context.pushNamed(Routes.kReceiptDetailsView);
                        },
                        icon: const Icon(
                          Icons.arrow_circle_right,
                          color: ColorsStyles.kSecondaryColor,
                        ),
                      )
                    ],
                  ),
                  verticalSpace(10),
                  SizedBox(
                    height: 120.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: 14.0.w, right: 14.w, bottom: 12.h),
                            child: Card(
                              elevation: 5,
                              shadowColor: Colors.white.withOpacity(0.75),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Image.asset('assets/images/image 19.png'),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
