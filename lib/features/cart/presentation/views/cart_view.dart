import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';
import 'package:foodie/core/widgets/no_items_found.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';
import '../widgets/cart_view_body.dart';

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
                  S.of(context).cart, // Localized
                  style: FontStyles.font24SecondaryColorBold,
                ),
              ),
              SliverToBoxAdapter(
                child: NoItemsFound(
                  svgImage: AssetsData.kNotLoggedInCartSVG,
                  title: S.of(context).notLoggedInTitle, // Localized
                  description:
                      S.of(context).notLoggedInDescription, // Localized
                ),
              ),
            ],
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
                    S.of(context).cart, // Localized
                    style: FontStyles.font24SecondaryColorBold,
                  ),
                ),
                SliverToBoxAdapter(
                  child: NoItemsFound(
                    svgImage: AssetsData.kEmptyCartSVG,
                    title: S.of(context).emptyCartTitle, // Localized
                    description:
                        S.of(context).emptyCartDescription, // Localized
                    button: CustomElevatedButton(
                      onPressed: () {
                        context.read<BottomNavBarCubit>().changeIndex(0);
                      },
                      text: S.of(context).orderNow, // Localized
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
