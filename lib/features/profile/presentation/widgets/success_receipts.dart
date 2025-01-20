import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/cart/data/models/receipt.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../home/presentation/widgets/food_item/food_item_card_image_skeleton.dart';

class SuccessReceipts extends StatelessWidget {
  const SuccessReceipts({super.key, required this.receipts});

  final List<Receipt> receipts;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: receipts.length,
      itemBuilder: (context, receiptIndex) {
        return Padding(
          padding: EdgeInsets.only(
              left: 14.0.w, right: 14.w, bottom: 12.h),
          child: Card(
            elevation: 5,
            shadowColor: Colors.white.withOpacity(0.75),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10.0.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            receipts[receiptIndex].date!,
                            style: FontStyles.font14PassiveRegular,
                          ),
                          Text(
                            receipts[receiptIndex]
                                .paymentId!
                                .toString(),
                            style: FontStyles.font16BlackSemiBold,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '${receipts[receiptIndex].amountCents} EGP',
                        style: FontStyles.font16SecondaryColorBold,
                      ),
                      IconButton(
                        onPressed: () {
                          context.pushNamed(
                              Routes.kReceiptDetailsView,
                              arguments: receipts[receiptIndex]);
                        },
                        icon: const Icon(
                          Icons.arrow_circle_right,
                          color: ColorsStyles.kSecondaryColor,
                        ),
                      )
                    ],
                  ),
                  verticalSpace(10),
                  SizedBox(
                    height: 120.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: receipts[receiptIndex]
                            .foodItems!
                            .length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: 14.0.w,
                                right: 14.w,
                                bottom: 12.h),
                            child: Card(
                              elevation: 5,
                              shadowColor:
                              Colors.white.withOpacity(0.75),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(16.r),
                              ),
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.circular(16.r),
                                child: CachedNetworkImage(
                                  width: 80.w,
                                  height: 80.h,
                                  placeholder: (_, __) =>
                                      FoodItemCardImageSkeleton(
                                        width: 80.w,
                                        height: 80.h,
                                      ),
                                  fit: BoxFit.cover,
                                  errorWidget: (_, __, ___) =>
                                      SvgPicture.asset(
                                        AssetsData.kNoImageSVG,
                                      ),
                                  imageUrl: receipts[receiptIndex]
                                      .foodItems![index]
                                      .images[0],
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
