import 'package:bloc/bloc.dart';
import 'package:foodie/features/home/data/models/food_category/food_category.dart';
import 'package:foodie/features/home/data/repos/foodie_food_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../firebase/models/firebase_exceptions/firebase_exceptions.dart';

part 'food_items_state.dart';

part 'food_items_cubit.freezed.dart';

class FoodieFoodCubit extends Cubit<FoodieFoodState> {
  final FoodieFoodRepo foodieFoodRepo;

  FoodieFoodCubit(this.foodieFoodRepo) : super(const FoodieFoodState.initial());

  void emitFoodStates() async {
    emit(const FoodieFoodState.loading());
    final response = await foodieFoodRepo.getCategories();
    response.when(success: (foodCategories) {
      emit(FoodieFoodState.success(foodCategories: foodCategories));
    }, failure: (error) {
      emit(FoodieFoodState.error(
          error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
