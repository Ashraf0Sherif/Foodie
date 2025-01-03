import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    emit(BottomNavBarIndexChanged());
  }
}
