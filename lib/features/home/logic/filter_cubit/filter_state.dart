part of 'filter_cubit.dart';

@immutable
sealed class FilterState {}

final class FilterInitial extends FilterState {}
final class FilterIndexChanged extends FilterState {
  final int index;

  FilterIndexChanged({required this.index});
}
