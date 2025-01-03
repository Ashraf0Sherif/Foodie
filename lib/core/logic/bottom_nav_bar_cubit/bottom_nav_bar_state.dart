part of 'bottom_nav_bar_cubit.dart';

@immutable
sealed class BottomNavBarState {}

final class BottomNavBarInitial extends BottomNavBarState {}

final class BottomNavBarIndexChanged extends BottomNavBarState {
  BottomNavBarIndexChanged();
}
