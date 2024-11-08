import 'package:flutter/material.dart';

import '../../../../core/firebase/firebase_exceptions.dart';
import '../../data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo authRepo;

  LoginCubit(this.authRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  void emitLoginStates(
      {required String email, required String password}) async {
    emit(const LoginState.loading());
    final response = await authRepo.loginUsingEmailAndPassword(
        email: email, password: password);
    response.when(success: (user) {
      emit(LoginState.success(user));
    }, failure: (error) {
      emit(LoginState.error(error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
