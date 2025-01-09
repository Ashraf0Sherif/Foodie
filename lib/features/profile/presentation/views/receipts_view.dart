import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/widgets/custom_elevated_button.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/theming/ui_constants.dart';
import '../widgets/no_addresses_found.dart';

class ReceiptsView extends StatelessWidget {
  const ReceiptsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.kViewBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              'Receipts',
              style: FontStyles.font24SecondaryColorBold,
            ),
          ),
          SliverToBoxAdapter(
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
          ),
        ],
      ),
    );
  }
}
