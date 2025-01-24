import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/widgets/sliver_view_app_bar.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:foodie/features/profile/logic/receipt_cubit/receipt_cubit.dart';
import 'package:foodie/features/profile/presentation/widgets/receipts_sliver_list.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/no_items_found.dart';
import '../../../../generated/l10n.dart';

class ReceiptsView extends StatelessWidget {
  const ReceiptsView({super.key, required this.foodieUser});

  final FoodieUser foodieUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsStyles.kViewBackground,
      body: CustomScrollView(
        slivers: [
          SliverViewAppBar(title: S.of(context).receipts),
          BlocBuilder<ReceiptCubit, ReceiptState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SliverToBoxAdapter(child: SizedBox());
                },
                success: (receipts) {
                  if (receipts.isEmpty) {
                    return SliverToBoxAdapter(
                      child: NoItemsFound(
                        svgImage: AssetsData.kEmptyCartSVG,
                        title: S.of(context).noReceiptsFound,
                        description: S.of(context).startFirstOrder,
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
                      title: S.of(context).somethingWentWrong,
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
      ),
    );
  }
}
