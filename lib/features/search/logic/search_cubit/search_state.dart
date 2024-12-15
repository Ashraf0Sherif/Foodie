part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<FoodItem> foodItems;

  SearchSuccess(this.foodItems);
}

final class SearchNoResults extends SearchState {}
