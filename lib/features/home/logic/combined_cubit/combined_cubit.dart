import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'combined_state.dart';

class CombinedCubit extends Cubit<CombinedState> {
  int counter = 0;

  CombinedCubit() : super(CombinedInitial());

  void incrementCounter() {
    counter++;
    print(counter);
    if (counter == 2) {
      emit(CombinedNoItems());
    }
  }
}
