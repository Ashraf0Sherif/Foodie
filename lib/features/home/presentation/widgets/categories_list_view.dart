import 'package:flutter/material.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';

import 'categoires_list_view_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.categories});

  final List<FoodCategory> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return CategoriesListViewItem(
          category: categories[index],
          index: index,
        );
      },
    );
  }
}
