import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/ui_constants.dart';
import '../../logic/cart_cubit/cart_cubit.dart';

class CartBottomSheet extends StatelessWidget {
  const CartBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Total',
                style: FontStyles.font18PassiveRegular,
              ),
              const Spacer(),
              BlocBuilder<CartCubit, CartState>(
                builder: (context, state) {
                  return Text(
                    '\$${context.read<CartCubit>().getCartCheckoutPrice()}',
                    style: FontStyles.font16PrimaryColoSemiBold,
                  );
                },
              ),
            ],
          ),
          verticalSpace(8),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          Row(
            children: [
              Text(
                'Delivery',
                style: FontStyles.font18PassiveRegular,
              ),
              const Spacer(),
              Text(
                'Free',
                style: FontStyles.font16PrimaryColoSemiBold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
