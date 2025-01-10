import 'package:flutter/material.dart';
import 'package:foodie/features/profile/presentation/widgets/success_receipts.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

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
          SuccessReceipts(),
        ],
      ),
    );
  }
}
