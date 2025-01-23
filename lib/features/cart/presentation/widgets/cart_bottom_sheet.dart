import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/theming/ui_constants.dart';
import '../../../../generated/l10n.dart';
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
                S.of(context).total, // Localized
                style: FontStyles.font18PassiveRegular,
              ),
              const Spacer(),
              Builder(builder: (context) {
                final price = context.watch<CartCubit>().amount;
                return Row(
                  children: [
                    Text(
                      '$price',
                      style: FontStyles.font16PrimaryColoSemiBold,
                    ),
                    Text(' ${S.of(context).egp}',
                        style: FontStyles.font12PrimaryColorRegular),
                    // Localized
                  ],
                );
              }),
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
                S.of(context).delivery, // Localized
                style: FontStyles.font18PassiveRegular,
              ),
              const Spacer(),
              Text(
                S.of(context).free, // Localized
                style: FontStyles.font16PrimaryColoSemiBold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
