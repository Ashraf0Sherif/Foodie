import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/routing/app_router.dart';
import 'package:foodie/features/home/logic/food_items_cubit/food_items_cubit.dart';

import '../../features/home/data/models/food_item/food_item.dart';
import '../../features/home/presentation/widgets/food_item/food_item_card.dart';

class FoodItemsSliverListView extends StatelessWidget {
  const FoodItemsSliverListView({
    super.key,
    required this.foodItems,
  });

  final List<FoodItem> foodItems;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: context.read<FoodItemsCubit>().state is FoodItemsLoading
          ? foodItems.length + 1
          : foodItems.length,
      itemBuilder: (BuildContext context, int index) {
        if (index < foodItems.length) {
          return FoodItemCard(foodItem: foodItems[index]);
        } else {
          Timer(const Duration(microseconds: 30), () {
            context.read<FoodItemsCubit>().scrollController.jumpTo(context
                .read<FoodItemsCubit>()
                .scrollController
                .position
                .maxScrollExtent);
          });
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
