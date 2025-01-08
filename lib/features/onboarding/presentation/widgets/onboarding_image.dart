import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/assets.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SvgPicture.asset(
            AssetsData.kLogoLowOpacitySVG,
            width: 300,
          ),
        ),
        Center(
          child: Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white.withOpacity(0.0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.0, 1.0],
              ),
            ),
            child: SvgPicture.asset(
              AssetsData.kOnBoardingImageSVG,
              width: 300,
            ),
          ),
        ),
      ],
    );
  }
}
