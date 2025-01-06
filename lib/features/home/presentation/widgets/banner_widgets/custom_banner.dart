import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodie/core/helpers/assets.dart';
import 'package:foodie/features/home/data/models/banner_model/banner_model.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    super.key,
    required this.bannerModel,
  });

  final BannerModel bannerModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: CachedNetworkImage(
          width: double.infinity,
          height: 200.h,
          errorWidget: (_, __, ___) => SvgPicture.asset(
            AssetsData.kNoImageSVG,
          ),
          placeholder: (_, __) => Skeletonizer(
            enabled: true,
            child: Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
          ),
          fit: BoxFit.fill,
          imageUrl: bannerModel.image,
        ),
      ),
    );
  }
}
