import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodie/features/home/data/models/food_item/food_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../data/repos/foodie_food_repo.dart';

part 'food_items_cubit.freezed.dart';
part 'food_items_state.dart';

class FoodItemsCubit extends Cubit<FoodItemsState> {
  FoodItemsCubit(this.foodieFoodRepo) : super(const FoodItemsState.initial());
  final FoodieFoodRepo foodieFoodRepo;
  final ScrollController scrollController = ScrollController();
  Map<String, List<FoodItem>> foodItemsMap = {};
  Map<String, bool> isCategoryExpanded = {};
  String? currentCategoryId;

  void emitFoodItemsStates({required String categoryId}) async {
    currentCategoryId = categoryId;
    if (foodItemsMap.containsKey(categoryId)) {
      emit(FoodItemsState.success(foodItems: foodItemsMap[categoryId]!));
    } else {
      emit(const FoodItemsState.loading(foodItems: []));
      final response =
          await foodieFoodRepo.getFoodItems(categoryId: categoryId);
      response.when(
        success: (foodItems) {
          foodItemsMap[categoryId] = foodItems;
          emit(FoodItemsState.success(foodItems: foodItemsMap[categoryId]!));
        },
        failure: (error) {
          emit(FoodItemsState.error(
              error: FirebaseExceptions.getErrorMessage(error)));
        },
      );
    }
    _setupScrollController();
  }

  void emitFoodItemsPage(
      {required String categoryId, required FoodItem lastFoodItem}) async {
    if (state is FoodItemsLoading || isCategoryExpanded[categoryId] == true) {
      return;
    }
    emit(FoodItemsState.loading(foodItems: foodItemsMap[categoryId]!));

    final response = await foodieFoodRepo.getFoodItems(
        categoryId: categoryId, lastFoodItem: lastFoodItem);
    response.when(
      success: (foodItems) {
        var oldFoodItems = foodItemsMap[categoryId]!;
        if (foodItemsMap[categoryId]!.length ==
            [...oldFoodItems, ...foodItems].length) {
          isCategoryExpanded[categoryId] = true;
        } else {
          foodItemsMap[categoryId] = [...oldFoodItems, ...foodItems];
        }

        emit(
          FoodItemsState.success(foodItems: foodItemsMap[categoryId]!),
        );
      },
      failure: (error) {
        emit(FoodItemsState.success(foodItems: foodItemsMap[categoryId]!));
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
          var currentLastItem = foodItemsMap[currentCategoryId]!.last;
          emitFoodItemsPage(
              categoryId: currentCategoryId!, lastFoodItem: currentLastItem);
        }
      },
    );
  }
}
