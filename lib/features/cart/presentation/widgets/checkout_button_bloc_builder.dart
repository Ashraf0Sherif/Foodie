import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
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
            text: 'CHECKOUT',
            gradient: ColorsStyles.kButtonGradient,
            loading: false,
          ),
          loading: () => CustomElevatedButton(
            onPressed: () {},
            text: 'CHECKOUT',
            gradient: ColorsStyles.kButtonGradient,
            loading: true,
          ),
          failure: (error) => Center(
            child: Text(error),
          ),
          success: (paymentKey) => CustomElevatedButton(
            onPressed: () => _showAddressesAndStartPayment(context),
            text: 'CHECKOUT',
            gradient: ColorsStyles.kButtonGradient,
            loading: false, // Set loading to false here
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
            title: const Text('No addresses found'),
            content: const Text('Please add an address first'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'))
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
