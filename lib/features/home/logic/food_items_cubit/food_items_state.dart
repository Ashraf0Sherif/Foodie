part of 'food_items_cubit.dart';

@freezed
class FoodItemsState with _$FoodItemsState {
  const factory FoodItemsState.initial() = _FoodItemsInitial;

  const factory FoodItemsState.loading({required List<FoodItem> foodItems}) =
      FoodItemsLoading;

  const factory FoodItemsState.success({required List<FoodItem> foodItems}) =
      FoodItemsSuccess;

  const factory FoodItemsState.error({required String error}) = FoodItemsError;
}
