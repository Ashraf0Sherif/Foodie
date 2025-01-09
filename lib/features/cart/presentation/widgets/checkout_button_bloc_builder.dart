import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../home/data/models/food_item/food_item.dart';
import '../../../login/data/models/user_model/address.dart';
import '../../../login/data/models/user_model/foodie_user.dart';
import '../../logic/cart_cubit/cart_cubit.dart';
import '../../logic/payment_cubit/payment_cubit.dart';

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
            onPressed: () {
              context.read<PaymentCubit>().emitPaymentStates(
                    amount: context.read<CartCubit>().price,
                    foodItems: cartItems,
                    user: FoodieUser(
                      firstName: 'dummy',
                      lastName: 'dummy',
                      phoneNumber: '01553336414',
                      address: [],
                    ),
                    address: Address(
                      country: 'Egypt',
                      city: 'Cairo',
                      street: 'Elshorouk',
                      building: '1',
                      floor: '',
                      apartment: '',
                    ),
                  );
            },
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
            onPressed: () {
              context.read<PaymentCubit>().emitPaymentStates(
                    amount: context.read<CartCubit>().price,
                    foodItems: cartItems,
                    user: FoodieUser(
                      firstName: 'dummy',
                      lastName: 'dummy',
                      phoneNumber: '01553336414',
                      address: [],
                    ),
                    address: Address(
                      country: 'Egypt',
                      city: 'Cairo',
                      street: 'Elshorouk',
                      building: '1',
                      floor: '',
                      apartment: '',
                    ),
                  );
            },
            text: 'CHECKOUT',
            gradient: ColorsStyles.kButtonGradient,
            loading: false, // Set loading to false here
          ),
        );
      },
    );
  }
}
