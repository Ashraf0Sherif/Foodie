import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/spacing.dart';

import '../widgets/add_to_cart_card_button.dart';
import '../widgets/customize_beverage_section.dart';
import '../widgets/customize_extra_ingredients_section.dart';
import '../widgets/customize_main_ingredients_section.dart';
import '../widgets/customize_order_bottom_sheet_top_bar.dart';

class CustomizeOrderBottomSheet extends StatelessWidget {
  const CustomizeOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final double sectionSpacing = 20.h;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.82,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            const CustomizeOrderBottomSheetTopBar(),
            const Divider(
              color: Color(0xffECECEC),
            ),
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(sectionSpacing),
                        const CustomizeMainIngredientsSection(),
                        verticalSpace(sectionSpacing),
                        const CustomizeExtraIngredientsSection(),
                        verticalSpace(sectionSpacing),
                        const CustomizeBeverageSection(),
                        verticalSpace(120.h),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18.h),
                      child: const AddToCartCardButton(),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}