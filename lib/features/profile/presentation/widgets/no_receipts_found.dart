import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/ui_constants.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import 'no_addresses_found.dart';
class NoReceiptsFound extends StatelessWidget {
  const NoReceiptsFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
        child: NoItemsFound(
          svgImage: AssetsData.kNoOrdersSVG,
          title: 'Your order list is empty',
          description:
          'You look like you haven\'t given any addresses yet.',
          button: CustomElevatedButton(
            onPressed: () {
              context.pushNamedAndRemoveUntil(Routes.kLandingView,
                  predicate: (Route<dynamic> route) {
                    return false;
                  });
            },
            text: 'ORDER NOW',
            gradient: ColorsStyles.kButtonGradient,
            width: 200.w,
          ),
        ),
      ),
    );
  }
}
