import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../helpers/shared_pref_helper.dart';
import '../../helpers/shared_pref_keys.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  void changeLanguage({required String language}) async {
    await SharedPrefHelper.setData(SharedPrefKeys.currentLocal, language);
    currentLocal = language;
    emit(LanguageChanged());
  }
}
