import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../home/data/models/food_item/food_item.dart';
import '../../../home/data/repos/foodie_food_repo.dart';

part 'search_cubit.freezed.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final FoodieFoodRepo foodieFoodRepo;
  final TextEditingController searchController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  List<FoodItem> foodItems = [];
  bool isLastPage = false;

  SearchCubit(this.foodieFoodRepo) : super(const SearchState.initial());

  void emitSearchStates() async {
    emit(const SearchLoading(foodItems: []));
    final response =
        await foodieFoodRepo.searchFoodItems(query: searchController.text);
    response.when(
      success: (foodItems) {
        if (foodItems.isEmpty) {
          emit(const SearchNoResults());
        } else {
          this.foodItems = foodItems;
          isLastPage = false;
          emit(SearchSuccess(foodItems: foodItems));
          _setupScrollController();
        }
      },
      failure: (error) {
        emit(
          SearchError(
            error: FirebaseExceptions.getErrorMessage(error),
          ),
        );
      },
    );
  }

  void emitSearchPage() async {
    if (state is SearchLoading || isLastPage) {
      return;
    }
    emit(SearchLoading(foodItems: foodItems));
    final response = await foodieFoodRepo.searchFoodItems(
        query: searchController.text, lastFoodItem: foodItems.last);
    response.when(
      success: (foodItems) {
        if (this.foodItems.length == [...this.foodItems, ...foodItems].length) {
          isLastPage = true;
        } else {
          this.foodItems = [...this.foodItems, ...foodItems];
        }
        emit(SearchSuccess(foodItems: this.foodItems));
      },
      failure: (error) {
        emit(SearchSuccess(foodItems: foodItems));
      },
    );
  }

  void _setupScrollController() {
    double threshold = 200.0;
    scrollController.addListener(
      () {
        if (scrollController.position.maxScrollExtent -
                scrollController.position.pixels <=
            threshold) {
          emitSearchPage();
        }
      },
    );
  }
}
