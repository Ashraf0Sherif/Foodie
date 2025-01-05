part of 'food_categories_cubit.dart';

@freezed
class FoodCategoriesState with _$FoodCategoriesState {
  const factory FoodCategoriesState.initial() = FoodCategoriesInitial;

  const factory FoodCategoriesState.loading() = FoodCategoriesLoading;

  const factory FoodCategoriesState.success({required List<FoodCategory> foodCategories}) = FoodCategoriesSuccess;

  const factory FoodCategoriesState.error({required String error}) = FoodCategoriesError;
}
