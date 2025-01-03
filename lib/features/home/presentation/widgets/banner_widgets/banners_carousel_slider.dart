import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/features/home/logic/banner_cubit/banner_cubit.dart';
import 'package:foodie/features/home/presentation/widgets/banner_widgets/skeletonizer_carousel.dart';

import 'custom_banner.dart';

class BannersCarouselSlider extends StatefulWidget {
  const BannersCarouselSlider({
    super.key,
  });

  @override
  State<BannersCarouselSlider> createState() => _BannersCarouselSliderState();
}

class _BannersCarouselSliderState extends State<BannersCarouselSlider> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerCubit, BannerState>(
      builder: (context, state) {
        if (state is Success) {
          return Column(
            children: [
              CarouselSlider(
                items: state.banners
                    .map<Widget>((bannerModel) =>
                        CustomBanner(bannerModel: bannerModel))
                    .toList(),
                options: CarouselOptions(
                    onPageChanged: (value, _) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    viewportFraction: 0.78,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    height: 200.h),
              ),
              buildCarouselIndicators(state.banners.length),
            ],
          );
        } else if (state is Error) {
          return Container(
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red, // Skeleton color
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: const Text("Error"),
          );
        } else {
          return const SkeletonizerCarousel();
        }
      },
    );
  }

  buildCarouselIndicators(int length) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: i == _currentPage ? 7.h : 5.h,
            width: i == _currentPage ? 7.w : 5.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  i == _currentPage ? ColorsStyles.kPrimaryColor : Colors.grey,
            ),
          )
      ],
    );
  }
}
