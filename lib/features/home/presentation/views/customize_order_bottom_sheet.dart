import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../widgets/order_customization/add_to_cart_card_button.dart';
import '../widgets/order_customization/customize_extra_ingredients_section.dart';
import '../widgets/order_customization/customize_main_ingredients_section.dart';
import '../widgets/order_customization/customize_order_bottom_sheet_top_bar.dart';

class CustomizeOrderBottomSheet extends StatelessWidget {
  const CustomizeOrderBottomSheet({super.key, required this.foodItem});

  final FoodItem foodItem;

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
                        if (foodItem.mainIngredients.isNotEmpty)
                          CustomizeMainIngredientsSection(
                            mainIngredients: foodItem.mainIngredients,
                          ),
                        verticalSpace(sectionSpacing),
                        if (foodItem.extraIngredients.isNotEmpty)
                          CustomizeExtraIngredientsSection(
                            extraIngredients: foodItem.extraIngredients,
                          ),
                        verticalSpace(120),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 18.h),
                      child: AddToCartCardButton(
                        foodItem: foodItem,
                      ),
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
