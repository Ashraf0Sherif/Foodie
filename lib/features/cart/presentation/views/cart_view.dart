import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/theming/styles.dart';
import 'package:foodie/core/widgets/food_items_list_view.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/custom_elevated_button.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_sharp,
              ),
            ),
          ],
          title: Text(
            'Cart',
            style: FontStyles.font20BlackMedium,
          ),
        ),
        const FoodItemsSliverListView(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0.w, vertical: 20.h),
            child: CustomElevatedButton(
              onPressed: () {},
              text: 'CHECKOUT\n\$12.99',
              gradient: ColorsStyles.kButtonGradient,
            ),
          ),
        ),
      ],
    );
  }
}

/*
CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_sharp,
              ),
            ),
          ],
          title: Text(
            'Cart',
            style: FontStyles.font20BlackMedium,
          ),
        ),
        BlocBuilder<SubjectBloc, SubjectState>(
          builder: (context, state) {
            return State();
          },
        )
 */