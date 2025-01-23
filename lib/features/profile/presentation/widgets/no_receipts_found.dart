import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/ui_constants.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/no_items_found.dart';
import '../../../../generated/l10n.dart';
class NoReceiptsFound extends StatelessWidget {
  const NoReceiptsFound({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
        child: NoItemsFound(
          svgImage: AssetsData.kNoOrdersSVG,
          title: S.of(context).emptyOrderListTitle,
          description: S.of(context).emptyOrderListDescription,
          button: CustomElevatedButton(
            onPressed: () {
              context.pushNamedAndRemoveUntil(Routes.kLandingView,
                  predicate: (Route<dynamic> route) {
                    return false;
                  });
            },
            text: S.of(context).orderNow,
            gradient: ColorsStyles.kButtonGradient,
            width: 200.w,
          ),
        ),
      ),
    );
  }
}
