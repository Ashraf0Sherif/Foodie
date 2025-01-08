import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/features/cart/presentation/widgets/empty_cart_widget.dart';

import '../widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) =>
          current is CartNotEmpty || current is CartEmpty,
      builder: (context, state) {
        return state.maybeWhen(
          notEmptyCart: (cartItems) {
            return CartViewBody(
              cartItems: cartItems,
            );
          },
          emptyCart: () {
            return const EmptyCartWidget();
          },
          orElse: () {
            return const EmptyCartWidget();
          },
        );
      },
    );
  }
}
