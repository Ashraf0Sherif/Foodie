import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/spacing.dart';

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
        margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopBar(),
          ],
        ),
      )),
    );
  }
}
