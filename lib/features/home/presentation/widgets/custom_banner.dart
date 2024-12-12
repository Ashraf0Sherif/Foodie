import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/features/home/data/models/banner_model/banner_model.dart';
import 'package:shimmer/shimmer.dart';

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
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: const Color.fromARGB(255, 216, 216, 216),
            highlightColor: const Color.fromARGB(255, 255, 255, 255),
            child: Container(
              color: Colors.amber,
            ),
          ),
          fit: BoxFit.contain,
          imageUrl: bannerModel.image,
        ),
      ),
    );
  }
}
