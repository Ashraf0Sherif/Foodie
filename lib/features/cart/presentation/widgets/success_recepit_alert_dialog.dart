import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../data/models/receipt.dart';
import '../../logic/cart_cubit/cart_cubit.dart';

class SuccessReceiptAlertDialog extends StatelessWidget {
  const SuccessReceiptAlertDialog({
    super.key,
    required this.receipt,
  });

  final Receipt receipt;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        verticalSpace(20),
        Container(
          height: 90.h,
          width: 90.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsStyles.kPrimaryColor,
          ),
          child: Icon(
            Icons.check_circle,
            color: ColorsStyles.kSecondaryColor,
            size: 60.sp,
          ),
        ),
        verticalSpace(20),
        Text('Payment Success!',
            style: FontStyles.font24SecondaryColorBold,
            overflow: TextOverflow.ellipsis),
        verticalSpace(20),
        Text("EGP ${receipt.amountCents}",
            style: FontStyles.font16SecondaryColorBold,
            overflow: TextOverflow.ellipsis),
        verticalSpace(20),
        Divider(
          color: Colors.grey[300],
          thickness: 1,
        ),
        Row(
          children: [
            Text('Order ID: ',
                style: FontStyles.font18PassiveRegular,
                overflow: TextOverflow.ellipsis),
            const Spacer(),
            Text(receipt.orderId,
                style: FontStyles.font16SecondaryColorBold,
                overflow: TextOverflow.ellipsis)
          ],
        ),
        verticalSpace(10),
        Row(
          children: [
            Text('Date: ',
                style: FontStyles.font18PassiveRegular,
                overflow: TextOverflow.ellipsis),
            const Spacer(),
            Text(receipt.createdAt,
                style: FontStyles.font16SecondaryColorBold,
                overflow: TextOverflow.ellipsis)
          ],
        ),
        verticalSpace(10),
        Row(children: [
          Text('Payment ID: ',
              style: FontStyles.font18PassiveRegular,
              overflow: TextOverflow.ellipsis),
          const Spacer(),
          Text(receipt.paymentId,
              style: FontStyles.font16SecondaryColorBold,
              overflow: TextOverflow.ellipsis)
        ]),
        verticalSpace(40),
        Row(
          children: [
            Flexible(
              child: CustomElevatedButton(
                onPressed: () {
                  context.pop();
                },
                text: 'Close',
                gradient: ColorsStyles.kButtonGradientDisabled,
              ),
            ),
            horizontalSpace(10),
            Flexible(
              flex: 3,
              child: CustomElevatedButton(
                onPressed: () {
                  context.pop();
                  context.read<CartCubit>().clearCart();
                },
                text: 'Clear Cart',
                gradient: ColorsStyles.kButtonGradient,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
