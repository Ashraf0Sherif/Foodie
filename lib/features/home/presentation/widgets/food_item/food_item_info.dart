import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:foodie/features/home/presentation/widgets/food_item/food_item_card_image_skeleton.dart';

import '../../../../../core/helpers/assets.dart';
import '../../../../../core/helpers/shared_pref_keys.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

class FoodItemInfo extends StatelessWidget {
  const FoodItemInfo({super.key, required this.foodItem});

  final FoodItem foodItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: CachedNetworkImage(
            width: 120.w,
            height: 120.h,
            placeholder: (_, __) => const FoodItemCardImageSkeleton(),
            errorWidget: (_, __, ___) => SvgPicture.asset(
              AssetsData.kNoImageSVG,
            ),
            imageUrl: foodItem.images[0],
            fit: BoxFit.cover,
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                currentLanguage == 'ar' ? foodItem.arabicTitle : foodItem.title,
                style: FontStyles.font16BlackBold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                currentLanguage == 'ar'
                    ? foodItem.arabicDescription
                    : foodItem.description,
                style: FontStyles.font12PassiveRegular,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Row(
                children: [
                  Text(
                    '${foodItem.totalPrice} ',
                    style: FontStyles.font16SecondaryColorBold,
                  ),
                  Text(
                    S.of(context).egp,
                    style: FontStyles.font12SecondaryColorBold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
