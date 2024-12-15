part of 'food_items_cubit.dart';

@freezed
class FoodieFoodState with _$FoodieFoodState {
  const factory FoodieFoodState.initial() = _Initial;

  const factory FoodieFoodState.loading() = Loading;

  const factory FoodieFoodState.success({required List<FoodCategory> foodCategories}) = Success;

  const factory FoodieFoodState.error({required String error}) = Error;
}
