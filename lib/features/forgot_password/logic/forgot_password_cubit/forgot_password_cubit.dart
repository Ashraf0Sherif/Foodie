import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodie/features/forgot_password/data/repos/forgot_password_repo.dart';

import '../../../../core/firebase/firebase_exceptions.dart';
import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepo forgotPasswordRepo;

  ForgotPasswordCubit(this.forgotPasswordRepo)
      : super(const ForgotPasswordState.initial());
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  void emitForgotPasswordStates() async {
    emit(const ForgotPasswordState.loading());
    final response =
        await forgotPasswordRepo.forgotPassword(email: emailController.text);
    response.when(success: (_) {
      emit(const ForgotPasswordState.success());
    }, failure: (error) {
      emit(ForgotPasswordState.error(
          error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
