import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/logic/food_items/food_items_cubit.dart';
import 'categories_list_view.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodieFoodCubit, FoodieFoodState>(
      buildWhen: (previous, current) =>
          current is Success || current is Error || current is Loading,
      builder: (context, state) {
        return state.maybeWhen(success: (foodCategories) {
          return CategoriesListView(
            categories: foodCategories,
          );
        }, error: (error) {
          return const Center(child: Text('Error loading categories'));
        }, orElse: () {
          return const SizedBox();
        });
      },
    );
  }
}
