import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/spacing.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:foodie/features/profile/logic/receipt_cubit/receipt_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/success_receipts.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/no_items_found.dart';

class ReceiptsView extends StatelessWidget {
  const ReceiptsView({super.key, required this.foodieUser});

  final FoodieUser foodieUser;

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
            BlocBuilder<ReceiptCubit, ReceiptState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return SliverToBoxAdapter(child: Container());
                  },
                  success: (receipts) {
                    if (receipts.isEmpty) {
                      return const SliverToBoxAdapter(
                        child: NoItemsFound(
                          svgImage: AssetsData.kEmptyCartSVG,
                          title: 'No receipts found',
                          description: 'Start your first order !.',
                        ),
                      );
                    } else {
                      return SuccessReceipts(receipts: receipts);
                    }
                  },
                  error: (error) {
                    return SliverToBoxAdapter(
                        child: Center(child: Text(error)));
                  },
                  loading: () {
                    return SliverToBoxAdapter(
                      child: Column(
                        children: [
                          verticalSpace(MediaQuery.of(context).size.height / 2),
                          const CircularProgressIndicator(),
                        ],
                      ),
                    );
                  },
                );
              },
            )
          ],
        ));
  }
}
