import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:foodie/features/profile/logic/receipt_cubit/receipt_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/receipts_sliver_list.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
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
                    return const SliverToBoxAdapter(child: SizedBox());
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
                      return ReceiptsSliverList(receipts: receipts);
                    }
                  },
                  error: (error) {
                    return SliverToBoxAdapter(
                      child: NoItemsFound(
                        svgImage: AssetsData.kNoDataSVG,
                        title: 'Something went wrong',
                        description: error,
                      ),
                    );
                  },
                  loading: () {
                    return const ReceiptsSliverList(
                      skeleton: true,
                    );
                  },
                );
              },
            )
          ],
        ));
  }
}
