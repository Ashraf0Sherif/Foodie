import 'package:bloc/bloc.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';
import 'package:foodie/features/home/data/repos/foodie_food_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firebase/models/firebase_exceptions/firebase_exceptions.dart';

part 'food_categories_cubit.freezed.dart';
part 'food_categories_state.dart';

class FoodCategoriesCubit extends Cubit<FoodCategoriesState> {
  final FoodieFoodRepo foodieFoodRepo;

  FoodCategoriesCubit(this.foodieFoodRepo)
      : super(const FoodCategoriesState.initial());

  void emitFoodCategoriesStates() async {

    emit(const FoodCategoriesState.loading());
    final response = await foodieFoodRepo.getCategories();
    response.when(
      success: (foodCategories) {
        emit(FoodCategoriesState.success(foodCategories: foodCategories));
      },
      failure: (error) {
        emit(FoodCategoriesState.error(
            error: FirebaseExceptions.getErrorMessage(error)));
      },
    );
  }
}
