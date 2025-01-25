import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:foodie/features/home/presentation/views/customize_order_bottom_sheet.dart';

import '../../../../../core/helpers/shared_pref_keys.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../generated/l10n.dart';
import 'food_item_info.dart';
import 'item_quantity_controller.dart';

class FoodItemCard extends StatelessWidget {
  const FoodItemCard({
    super.key,
    required this.foodItem,
    this.isReceipt = false,
  });

  final FoodItem foodItem;
  final bool isReceipt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0.w, right: 14.w, bottom: 12.h),
      child: InkWell(
        onTap: () {
          if (isReceipt &&
              foodItem.mainIngredients.isEmpty &&
              foodItem.extraIngredients.isEmpty) return;
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (modalContext) => CustomizeOrderBottomSheet(
              foodItem: foodItem,
              isReceipt: isReceipt,
            ),
          );
        },
        child: Card(
          elevation: 5,
          shadowColor: Colors.white.withOpacity(0.75),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.0.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: FoodItemInfo(
                        foodItem: foodItem,
                      ),
                    ),
                    if (!isReceipt)
                      ItemQuantityController(
                        foodItem: foodItem,
                      ),
                    if (isReceipt)
                      CustomElevatedButton(
                        isDisabled: true,
                        onPressed: () {},
                        text: foodItem.quantity.toString(),
                        borderRadius: BorderRadius.circular(8.r),
                        width: 29.14.w,
                        height: 30.h,
                        gradient: ColorsStyles.kButtonGradient,
                      ),
                    horizontalSpace(20),
                  ],
                ),
                if (foodItem.mainIngredients.isNotEmpty)
                  const Divider(
                    color: Color(0xffECECEC),
                  ),
                if (foodItem.mainIngredients.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).ingredients,
                          style: FontStyles.font12PassiveBold,
                        ),
                        Text(
                          foodItem.mainIngredients
                              .map((e) => currentLanguage == 'ar' ? e.arabicTitle : e.title)
                              .join(", "),
                          style: FontStyles.font12BlackRegular,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
