import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:foodie/features/home/presentation/widgets/order_customization/cart_button.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
import '../widgets/order_customization/customize_extra_ingredients_section.dart';
import '../widgets/order_customization/customize_main_ingredients_section.dart';
import '../widgets/order_customization/customize_order_bottom_sheet_top_bar.dart';

class CustomizeOrderBottomSheet extends StatefulWidget {
  const CustomizeOrderBottomSheet(
      {super.key, required this.foodItem, this.isReceipt = false});

  final FoodItem foodItem;
  final bool isReceipt;

  @override
  State<CustomizeOrderBottomSheet> createState() =>
      _CustomizeOrderBottomSheetState();
}

class _CustomizeOrderBottomSheetState extends State<CustomizeOrderBottomSheet> {
  bool shouldShowAddToCartButton = true;

  void _evaluateButtonState() {
    final cartCubit = context.read<CartCubit>();
    setState(() {
      shouldShowAddToCartButton = !cartCubit.isItemInCart(widget.foodItem);
    });
  }

  @override
  void initState() {
    super.initState();
    _evaluateButtonState();
  }

  @override
  Widget build(BuildContext context) {
    final double sectionSpacing = 20.h;
    final bool isInCart =
        context.read<CartCubit>().isItemInCart(widget.foodItem);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.82,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            BottomSheetTopBar(
              title: widget.isReceipt
                  ? S.of(context).orderDetails
                  : S.of(context).customizeOrder,
            ),
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
                        if (widget.foodItem.mainIngredients.isNotEmpty)
                          CustomizeMainIngredientsSection(
                            foodItem: widget.foodItem,
                            onIngredientChanged: () => _evaluateButtonState(),
                            isReceipt: widget.isReceipt,
                          ),
                        verticalSpace(sectionSpacing),
                        if (widget.foodItem.extraIngredients.isNotEmpty)
                          CustomizeExtraIngredientsSection(
                            foodItem: widget.foodItem,
                            onIngredientChanged: () => _evaluateButtonState(),
                            isReceipt: widget.isReceipt,
                          ),
                        verticalSpace(120),
                      ],
                    ),
                  ),
                  if (!widget.isReceipt)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 18.h),
                        child: !isInCart
                            ? CartButton(
                                foodItem: widget.foodItem,
                                buttonColor: ColorsStyles.kPrimaryColor,
                                onPressed: _addToCart,
                                text: S.of(context).addToCart,
                              )
                            : CartButton(
                                foodItem: widget.foodItem,
                                buttonColor: Colors.red,
                                onPressed: (){
                                  context.read<CartCubit>().removeItemFromCart(widget.foodItem);
                                  Navigator.pop(context);
                                },
                                text: S.of(context).deleteFromCart),
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

  void _addToCart() {
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
      context.read<CartCubit>().addItemToCart(widget.foodItem);
      Navigator.pop(context);
    }
  }
}
