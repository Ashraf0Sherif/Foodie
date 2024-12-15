import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';
import 'package:meta/meta.dart';

import '../../../home/data/models/food_item/food_item.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final List<FoodCategory> foodCategories;

  SearchCubit(this.foodCategories) : super(SearchInitial());

  void search(String query) {
    emit(SearchLoading());
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        final searchedItems = foodCategories
            .map((category) => category.foodItems)
            .expand((items) => items)
            .where((item) =>
                item.title.toLowerCase().contains(query.toLowerCase()))
            .toList();
        if (searchedItems.isEmpty) {
          emit(SearchNoResults());
        } else {

          emit(SearchSuccess(searchedItems));
        }
      },
    );
  }
}
