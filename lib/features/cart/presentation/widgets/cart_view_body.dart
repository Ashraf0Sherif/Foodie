import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/ui_constants.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/food_items_sliver_list_view.dart';
import '../../../home/data/models/food_item/food_item.dart';
import '../../logic/cart_cubit/cart_cubit.dart';
import 'cart_bottom_sheet.dart';
import 'clear_cart_alert_dialog.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({
    super.key,
    required this.cartItems,
  });

  final List<FoodItem> cartItems;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const ClearCartAlertDialog(),
                );
              },
              icon: Icon(
                Icons.delete_sharp,
                color: ColorsStyles.kPrimaryColor,
                size: 26.sp,
              ),
            ),
          ],
          title: Text(
            'Cart',
            style: FontStyles.font24BlueBold,
          ),
        ),
        FoodItemsSliverListView(
          foodItems: cartItems,
          isLoading: false,
        ),
        const SliverToBoxAdapter(
          child: CartBottomSheet(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0.w, vertical: 20.h),
            child: CustomElevatedButton(
              onPressed: () {},
              text: 'CHECKOUT',
              gradient: ColorsStyles.kButtonGradient,
            ),
          ),
        ),
      ],
    );
  }
}

