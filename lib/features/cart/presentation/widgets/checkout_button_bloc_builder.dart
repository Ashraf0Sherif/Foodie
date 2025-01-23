import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../generated/l10n.dart';
import '../../../home/data/models/food_item/food_item.dart';
import '../../logic/payment_cubit/payment_cubit.dart';
import 'choose_address_bottom_sheet.dart';

class CheckoutButtonBlocBuilder extends StatelessWidget {
  const CheckoutButtonBlocBuilder({
    super.key,
    required this.cartItems,
  });

  final List<FoodItem> cartItems;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => CustomElevatedButton(
            onPressed: () => _showAddressesAndStartPayment(context),
            text: S.of(context).checkout, // Localized
            gradient: ColorsStyles.kButtonGradient,
            loading: false,
          ),
          loading: () => CustomElevatedButton(
            onPressed: () {},
            text: S.of(context).checkout, // Localized
            gradient: ColorsStyles.kButtonGradient,
            loading: true,
          ),
          failure: (error) => Center(
            child: Text(error),
          ),
          success: (paymentKey) => CustomElevatedButton(
            onPressed: () => _showAddressesAndStartPayment(context),
            text: S.of(context).checkout, // Localized
            gradient: ColorsStyles.kButtonGradient,
            loading: false,
          ),
        );
      },
    );
  }

  void _showAddressesAndStartPayment(BuildContext context) async {
    if (context.read<ProfileCubit>().foodieUser!.addresses == null ||
        context.read<ProfileCubit>().foodieUser!.addresses!.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(S.of(context).noAddressesFound), // Localized
            content: Text(S.of(context).addAddressFirst), // Localized
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(S.of(context).ok)), // Localized
            ],
          );
        },
      );
    } else {
      final addresses = context.read<ProfileCubit>().foodieUser!.addresses;
      final foodieUser = context.read<ProfileCubit>().foodieUser;
      final PaymentCubit paymentCubit = context.read<PaymentCubit>();
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return BlocProvider<PaymentCubit>.value(
            value: paymentCubit,
            child: ChooseAddressBottomSheet(
              addresses: addresses!,
              foodieUser: foodieUser!,
              cartItems: cartItems,
              amount: context.read<CartCubit>().amount,
            ),
          );
        },
      );
    }
  }
}
