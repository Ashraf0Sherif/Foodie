import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/banners_carousel_slider.dart';
import '../widgets/home_top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 16.h, bottom: 28.h),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopBar(),
            BannersCarouselSlider()
          ],
        ),
      )),
    );
  }
}
