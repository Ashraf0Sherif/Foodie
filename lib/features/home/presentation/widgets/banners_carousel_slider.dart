import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/colors.dart';
import 'package:foodie/features/home/presentation/widgets/banner.dart';

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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          CarouselSlider(
            items: const [
              CustomBanner(
                imagePath: 'assets/images/image 2.png',
              ),
              CustomBanner(
                imagePath: 'assets/images/image 3.png',
              ),
              CustomBanner(
                imagePath: 'assets/images/image 4.png',
              ),
            ],
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
          buildCarouselIndicators(),
        ],
      ),
    );
  }

  buildCarouselIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
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
