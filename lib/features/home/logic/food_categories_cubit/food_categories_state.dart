part of 'food_categories_cubit.dart';

@freezed
class FoodCategoriesState with _$FoodCategoriesState {
  const factory FoodCategoriesState.initial() = Initial;

  const factory FoodCategoriesState.loading() = Loading;

  const factory FoodCategoriesState.success({required List<FoodCategory> foodCategories}) = Success;

  const factory FoodCategoriesState.error({required String error}) = Error;
}
