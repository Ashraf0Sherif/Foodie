import 'package:flutter/material.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await loginRepo.loginUsingEmailAndPassword(
        email: emailController.text, password: passwordController.text);
    response.when(success: (user) {
      emit(LoginState.success(user));
    }, failure: (error) {
      emit(LoginState.error(error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
