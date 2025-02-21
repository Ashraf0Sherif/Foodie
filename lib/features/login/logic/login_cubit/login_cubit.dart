import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/firebase_exceptions/firebase_exceptions.dart';
import '../../data/repos/login_repo.dart';
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
    response.when(success: (userCredential) {
      emit(const LoginState.success());
    }, failure: (error) {
      emit(LoginState.error(error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
