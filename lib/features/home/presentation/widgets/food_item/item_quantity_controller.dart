import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';

class ItemQuantityController extends StatefulWidget {
  const ItemQuantityController({
    super.key,
    required this.foodItem,
  });

  final FoodItem foodItem;

  @override
  State<ItemQuantityController> createState() => _ItemQuantityControllerState();
}

class _ItemQuantityControllerState extends State<ItemQuantityController> {
  bool _isInCart() {
    return context.read<CartCubit>().isItemInCart(widget.foodItem);
  }

  void _refreshCart() {
    if (_isInCart()) {
      context.read<CartCubit>().getCartCheckoutPrice();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.white,
      child: Column(
        children: [
          CustomElevatedButton(
            onPressed: () {
              setState(() {
                if (widget.foodItem.quantity > 0) {
                  widget.foodItem.quantity--;
                  _refreshCart();
                }
              });
            },
            text: '--',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
            width: 29.14.w,
            height: 30.h,
            containerColor: Colors.white,
            textColor: ColorsStyles.kPrimaryColor,
          ),
          CustomElevatedButton(
            isDisabled: true,
            onPressed: () {},
            text: widget.foodItem.quantity.toString(),
            borderRadius: BorderRadius.zero,
            width: 29.14.w,
            height: 30.h,
            gradient: ColorsStyles.kButtonGradient,
          ),
          CustomElevatedButton(
            onPressed: () {
              setState(() {
                widget.foodItem.quantity++;
                _refreshCart();
              });
            },
            text: '+',
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
            width: 29.14.w,
            height: 30.h,
            containerColor: Colors.white,
            textColor: ColorsStyles.kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
