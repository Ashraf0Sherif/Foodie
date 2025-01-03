part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.loading({required List<FoodItem> foodItems}) =
      SearchLoading;

  const factory SearchState.success({required List<FoodItem> foodItems}) =
      SearchSuccess;

  const factory SearchState.error({required String error}) = SearchError;

  const factory SearchState.noResults() = SearchNoResults;

  const factory SearchState.noInternet() = SearchNoInternet;

  const factory SearchState.emptySearch() = SearchEmptySearch;
}
