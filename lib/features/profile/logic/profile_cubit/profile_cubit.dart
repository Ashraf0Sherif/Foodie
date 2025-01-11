import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/media_service/media_service.dart';
import '../../data/repos/profile_repo.dart';

part 'profile_cubit.freezed.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo profileRepo;
  FoodieUser? foodieUser;

  ProfileCubit(this.profileRepo) : super(const ProfileState.initial());

  final formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController currentPasswordController =
      TextEditingController();
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

  void updateFoodieUser() async {
    emit(const ProfileState.loading());
    final response = await profileRepo.updateFoodieUser(
      username: usernameController.text,
      email: emailController.text,
      phoneNumber: phoneNumberController.text,
      password: passwordController.text,
      currentPassword: currentPasswordController.text,
      oldFoodieUser: foodieUser!,
    );
    response.when(
      success: (foodieUser) {
        this.foodieUser = foodieUser;
        passwordController.clear();
        currentPasswordController.clear();
        emit(const ProfileState.success());
      },
      failure: (error) {
        emit(ProfileState.error(
            error: FirebaseExceptions.getErrorMessage(error)));
      },
    );
  }

  Future<void> changeUserAvatar() async {
    File? image = await MediaService.getImageFromGallery();
    if (image != null) {
      emit(const ProfileState.loading());
      var response = await profileRepo.changeUserAvatar(image: image);
      response.when(
        success: (avatarUrl) {
          foodieUser!.avatarUrl = avatarUrl;
          print(foodieUser!.avatarUrl);
          emit(const ProfileState.success());
        },
        failure: (FirebaseExceptions firebaseExceptions) {
          emit(
            ProfileState.error(
              error: FirebaseExceptions.getErrorMessage(firebaseExceptions),
            ),
          );
        },
      );
    }
  }
}
