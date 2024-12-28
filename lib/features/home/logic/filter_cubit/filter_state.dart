part of 'filter_cubit.dart';

@immutable
sealed class FilterState {}

final class FilterInitial extends FilterState {}

final class FilterIndexChanged extends FilterState {
  final int index;
  final String categoryId;

  FilterIndexChanged({required this.index, required this.categoryId});
}
