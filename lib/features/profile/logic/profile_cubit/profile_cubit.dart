import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../data/repos/profile_repo.dart';

part 'profile_cubit.freezed.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo profileRepo;
  FoodieUser? foodieUser;

  ProfileCubit(this.profileRepo) : super(const ProfileState.initial());

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  void getFoodieUser() async {
    emit(const ProfileState.loading());
    final response = await profileRepo.getCurrentUser();
    response.when(
      success: (foodieUser) {
        this.foodieUser = foodieUser;
        emit(const ProfileState.success());
      },
      failure: (error) {
        emit(ProfileState.error(
            error: FirebaseExceptions.getErrorMessage(error)));
      },
    );
  }
}
