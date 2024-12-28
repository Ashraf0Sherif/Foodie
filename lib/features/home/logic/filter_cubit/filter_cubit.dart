import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterInitial());

  void changeFilter({required int index, required String categoryId}) {
    emit(FilterIndexChanged(index: index, categoryId: categoryId));
  }
}
