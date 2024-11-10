import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:foodie/features/signUp/data/repos/sign_up_repo.dart';
import '../../../../core/firebase/firebase_exceptions.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;

  SignUpCubit(this.signUpRepo) : super(const SignUpState.initial());
  final formKey = GlobalKey<FormState>();
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
        username: '');
    response.when(success: (user) {
      emit(SignUpState.signUpSuccess(user));
    }, failure: (error) {
      emit(SignUpState.signUpError(
          error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
