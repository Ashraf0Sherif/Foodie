import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/theming/ui_constants.dart';
import 'package:foodie/core/widgets/food_items_sliver_list_view.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../cart/data/models/receipt.dart';

class ReceiptDetailsView extends StatelessWidget {
  const ReceiptDetailsView({super.key, required this.receipt});

  final Receipt receipt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.kViewBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Receipt Details',
              style: FontStyles.font24SecondaryColorBold,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Order Information',
                      style: FontStyles.font16PrimaryColoSemiBold),
                  verticalSpace(10),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.white.withOpacity(0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 9.0.w, vertical: 15.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Date',
                                  style: FontStyles.font16BlackSemiBold),
                              const Spacer(),
                              Text(
                                receipt.date!,
                                style: FontStyles.font14PassiveRegular,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text('Order Number',
                                  style: FontStyles.font16BlackSemiBold),
                              const Spacer(),
                              Text(
                                receipt.orderId!,
                                style: FontStyles.font14PassiveRegular,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  verticalSpace(10),
                  Text('Order Summary',
                      style: FontStyles.font16PrimaryColoSemiBold),
                  verticalSpace(10),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.white.withOpacity(0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 9.0.w, vertical: 15.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Total',
                                  style: FontStyles.font16BlackSemiBold),
                              const Spacer(),
                              Text(
                                '${receipt.amountCents} EGP',
                                style: FontStyles.font14PassiveRegular,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text('Shipping',
                                  style: FontStyles.font16BlackSemiBold),
                              const Spacer(),
                              Text(
                                'Free',
                                style: FontStyles.font14PassiveRegular,
                              )
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          Row(
                            children: [
                              Text('Total',
                                  style: FontStyles.font16PrimaryColoSemiBold),
                              const Spacer(),
                              Text(
                                '${receipt.amountCents} EGP',
                                style: FontStyles.font16PrimaryColoSemiBold,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  verticalSpace(10),
                  Text('Payment Information',
                      style: FontStyles.font16PrimaryColoSemiBold),
                  verticalSpace(10),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.white.withOpacity(0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 9.0.w, vertical: 15.h),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            receipt.cardImage!,
                            width: 100.w,
                          ),
                          horizontalSpace(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(receipt.cardType!,
                                  style: FontStyles.font16BlackSemiBold),
                              Text(
                                receipt.cardNumber!,
                                style: FontStyles.font14PassiveRegular,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  verticalSpace(10),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
              child: Text('Order Items',
                  style: FontStyles.font16PrimaryColoSemiBold),
            ),
          ),
          FoodItemsSliverListView(
            foodItems: receipt.foodItems!,
            isLoading: false,
            isReceiptView: true,
          )
        ],
      ),
    );
  }
}
