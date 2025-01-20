import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodie/features/signUp/data/repos/sign_up_repo.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;

  SignUpCubit(this.signUpRepo) : super(const SignUpState.initial());
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  void emitSignUpStates() async {
    emit(const SignUpState.signUpLoading());
    final response = await signUpRepo.signupUsingEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
        username: "${firstnameController.text} ${lastnameController.text}");
    response.when(success: (_) {
      emit(const SignUpState.signUpSuccess());
    }, failure: (error) {
      emit(SignUpState.signUpError(
          error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
