import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/internet_connection_helper.dart';
import '../../../../core/models/firebase_exceptions/firebase_exceptions.dart';
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

  SearchCubit(this.foodieFoodRepo) : super(const SearchState.emptySearch());

  void emitSearchStates() async {
    if (!InternetConnectionHelper.isConnectedToInternet) {
      emit(const SearchState.noInternet());
      return;
    }
    if (searchController.text.isEmpty) {
      emit(const SearchState.emptySearch());
      return;
    }
    emit(const SearchLoading(foodItems: []));
    final response =
        await foodieFoodRepo.searchFoodItems(query: searchController.text);
    response.when(
      success: (foodItems) {
        if (foodItems.isEmpty) {
          emit(const SearchState.noResults());
        } else {
          this.foodItems = foodItems;
          isLastPage = false;
          emit(SearchState.success(foodItems: foodItems));
          _setupScrollController();
        }
      },
      failure: (error) {
        emit(
          SearchState.error(
            error: FirebaseExceptions.getErrorMessage(error),
          ),
        );
      },
    );
  }

  void emitSearchPage() async {
    if (state is SearchLoading ||
        isLastPage ||
        !InternetConnectionHelper.isConnectedToInternet) {
      return;
    }
    emit(SearchState.loading(foodItems: foodItems));
    final response = await foodieFoodRepo.searchFoodItems(
        query: searchController.text, lastFoodItem: foodItems.last);
    response.when(
      success: (foodItems) {
        if (this.foodItems.length == [...this.foodItems, ...foodItems].length &&
            InternetConnectionHelper.isConnectedToInternet) {
          isLastPage = true;
        } else {
          this.foodItems = [...this.foodItems, ...foodItems];
        }
        emit(SearchState.success(foodItems: this.foodItems));
      },
      failure: (error) {
        emit(SearchState.success(foodItems: foodItems));
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
