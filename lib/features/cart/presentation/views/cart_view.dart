import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/core/widgets/no_items_found.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/cart_view_body.dart';
import '../widgets/not_logged_in.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previous, current) =>
          current is CartNotEmpty || current is CartEmpty,
      builder: (context, state) {
        if (FirebaseAuth.instance.currentUser == null) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                title: Text(
                  'Cart',
                  style: FontStyles.font24SecondaryColorBold,
                ),
              ),
              const SliverToBoxAdapter(
              child: NoItemsFound(
                svgImage: AssetsData.kNotLoggedInCartSVG,
                title: 'You are not logged in',
                description: 'Login to your account to start your order.',
              ),
            ),],
          );
        }
        return state.maybeWhen(
          notEmptyCart: (cartItems) {
            return CartViewBody(
              cartItems: cartItems,
            );
          },
          emptyCart: () {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  surfaceTintColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: true,
                  title: Text(
                    'Cart',
                    style: FontStyles.font24SecondaryColorBold,
                  ),
                ),
                SliverToBoxAdapter(
                  child: NoItemsFound(
                    svgImage: AssetsData.kEmptyCartSVG,
                    title: 'Your cart is empty',
                    description:
                        'Find what you want among hundreds of different dishes.',
                    button: CustomElevatedButton(
                      onPressed: () {
                        context.read<BottomNavBarCubit>().changeIndex(0);
                      },
                      text: 'Order Now',
                      gradient: ColorsStyles.kButtonGradient,
                      width: 200.w,
                    ),
                  ),
                )
              ],
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
