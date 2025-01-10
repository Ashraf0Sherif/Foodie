import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/no_addresses_found.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../profile/logic/profile_cubit/profile_cubit.dart';
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
        final foodieUserState = context.watch<ProfileCubit>().state;
        if (foodieUserState is ProfileError) {
          return const NotLoggedIn();
        }
        if (foodieUserState is ProfileLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return state.maybeWhen(
          notEmptyCart: (cartItems) {
            return CartViewBody(
              cartItems: cartItems,
            );
          },
          emptyCart: () {
            return NoItemsFound(
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
