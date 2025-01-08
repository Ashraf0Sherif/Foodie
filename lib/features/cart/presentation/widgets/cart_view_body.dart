import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/cart/logic/payment_cubit/payment_cubit.dart';
import 'package:foodie/features/cart/presentation/views/payment_gateway_view.dart';
import 'package:foodie/features/cart/presentation/widgets/success_recepit_alert_dialog.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/food_items_sliver_list_view.dart';
import '../../../home/data/models/food_item/food_item.dart';
import 'cart_bottom_sheet.dart';
import 'checkout_button_bloc_builder.dart';
import 'clear_cart_alert_dialog.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({
    super.key,
    required this.cartItems,
  });

  final List<FoodItem> cartItems;

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentCubit, PaymentState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: (paymentKey) {
            context.pushNamed(
              Routes.kPaymentGatewayView,
              arguments: PaymentGatewayArgs(
                paymentKey: paymentKey,
                onSuccess: (receipt) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SuccessReceiptAlertDialog(receipt: receipt);
                    },
                  );
                },
              ),
            );
          },
        );
      },
      child: CustomScrollView(
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
              style: FontStyles.font24SecondaryColorBold,
            ),
          ),
          FoodItemsSliverListView(
            foodItems: widget.cartItems,
            isLoading: false,
          ),
          const SliverToBoxAdapter(
            child: CartBottomSheet(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0.w, vertical: 20.h),
              child: CheckoutButtonBlocBuilder(cartItems: widget.cartItems),
            ),
          ),
        ],
      ),
    );
  }
}
