import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/shared_pref_keys.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

class AddToCartCardButton extends StatelessWidget {
  const AddToCartCardButton({
    super.key,
    required this.foodItem,
  });

  final FoodItem foodItem;

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
                    "${foodItem.totalPrice}",
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
                    backgroundColor: ColorsStyles.kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: currentLocal == 'ar'
                            ? Radius.zero
                            : Radius.circular(8.r),
                        bottomRight: currentLocal == 'ar'
                            ? Radius.zero
                            : Radius.circular(8.r),
                        topLeft: currentLocal == 'ar'
                            ? Radius.circular(8.r)
                            : Radius.zero,
                        bottomLeft: currentLocal == 'ar'
                            ? Radius.circular(8.r)
                            : Radius.zero,
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (FirebaseAuth.instance.currentUser == null) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              S.of(context).pleaseLoginToAddToCart,
                              style: FontStyles.font16BlackSemiBold,
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(S.of(context).close))
                            ],
                          );
                        },
                      );
                    } else {
                      context.read<CartCubit>().addItemToCart(foodItem);
                      Navigator.pop(context);
                    }
                  },
                  child: Text(
                    S.of(context).addToCart,
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
