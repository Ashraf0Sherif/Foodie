import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/features/cart/logic/payment_cubit/payment_cubit.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:foodie/features/profile/presentation/widgets/address_card.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../home/data/models/food_item/food_item.dart';
import '../../../home/presentation/widgets/order_customization/customize_order_bottom_sheet_top_bar.dart';
import '../../../login/data/models/user_model/address.dart';

class ChooseAddressBottomSheet extends StatefulWidget {
  const ChooseAddressBottomSheet({
    super.key,
    required this.addresses, required this.foodieUser, required this.cartItems, required this.amount,
  });

  final List<Address> addresses;
  final FoodieUser foodieUser;
  final List<FoodItem> cartItems;
  final double amount;
  @override
  State<ChooseAddressBottomSheet> createState() =>
      _ChooseAddressBottomSheetState();
}

class _ChooseAddressBottomSheetState extends State<ChooseAddressBottomSheet> {
  int selectedAddress = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.82,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(children: [
          const BottomSheetTopBar(
            title: 'Choose Address',
          ),
          const Divider(
            color: Color(0xffECECEC),
          ),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < widget.addresses.length; i++)
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedAddress = i;
                            });
                          },
                          child: AddressCard(
                            address: widget.addresses[i],
                            edit: false,
                            selected: selectedAddress == i,
                          ),
                        ),
                      verticalSpace(100),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 18.h),
                    child: CustomElevatedButton(
                      onPressed: () {
                        final address = widget.addresses[selectedAddress];
                        final user = widget.foodieUser;
                        final foodItems = widget.cartItems;
                        final amount = widget.amount;
                        context.read<PaymentCubit>().emitPaymentStates(
                              amount: amount,
                              foodItems: foodItems,
                              user: user,
                              address: address,
                            );
                        context.pop();
                      },
                      text: 'CONFIRM',
                      gradient: ColorsStyles.kButtonGradient,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
