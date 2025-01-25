import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/shared_pref_keys.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.foodItem,
    required this.buttonColor,
    required this.onPressed,
    required this.text,
  });

  final FoodItem foodItem;
  final Color buttonColor;
  final Function() onPressed;
  final String text;

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
              height: 50.h,
              width: 80.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${foodItem.totalPrice} ",
                    style: FontStyles.font16BlackSemiBold,
                  ),
                  Flexible(
                    child: Text(
                      S.of(context).egp,
                      style: FontStyles.font14BlackRegular,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: currentLanguage == 'ar'
                            ? Radius.zero
                            : Radius.circular(8.r),
                        bottomRight: currentLanguage == 'ar'
                            ? Radius.zero
                            : Radius.circular(8.r),
                        topLeft: currentLanguage == 'ar'
                            ? Radius.circular(8.r)
                            : Radius.zero,
                        bottomLeft: currentLanguage == 'ar'
                            ? Radius.circular(8.r)
                            : Radius.zero,
                      ),
                    ),
                  ),
                  onPressed: onPressed,
                  child: Text(
                    text,
                    style: FontStyles.font16WhiteSemiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
