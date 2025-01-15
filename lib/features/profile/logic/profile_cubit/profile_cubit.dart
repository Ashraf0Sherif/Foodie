import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/media_service/media_service.dart';
import '../../../login/data/models/user_model/address.dart';
import '../../data/repos/profile_repo.dart';

part 'profile_cubit.freezed.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo profileRepo;
  BuildContext? cubitContext;
  FoodieUser? foodieUser;

  ProfileCubit(this.profileRepo) : super(const ProfileState.initial());

  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController addressTitleController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController floorController = TextEditingController();
  final TextEditingController buildingController = TextEditingController();
  final TextEditingController apartmentController = TextEditingController();

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
      username: "${firstNameController.text} ${lastNameController.text}",
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

  void changeUserAvatar() async {
    File? image = await MediaService.getImageFromGallery();
    if (image != null) {
      emit(const ProfileState.loading());
      var response = await profileRepo.changeUserAvatar(image: image);
      response.when(
        success: (avatarUrl) {
          foodieUser!.avatarUrl = avatarUrl;
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

  void addAddress() async {
    emit(const ProfileState.loading());
    final address = Address(
      title: addressTitleController.text,
      street: streetController.text,
      floor: floorController.text,
      building: buildingController.text,
      apartment: apartmentController.text,
    );
    final response =
        await profileRepo.addAddress(foodieUser: foodieUser!, address: address);
    response.when(
      success: (address) {
        if (foodieUser!.addresses == null) {
          foodieUser!.addresses = [];
        }
        foodieUser!.addresses!.add(address);
        emit(const ProfileState.success());
      },
      failure: (error) {
        emit(ProfileState.error(
            error: FirebaseExceptions.getErrorMessage(error)));
      },
    );
  }

  void removeAddress({required Address address}) async {
    emit(const ProfileState.loading());
    final response = await profileRepo.deleteAddress(
        foodieUser: foodieUser!, addressId: address.id);
    response.when(
      success: (_) {
        foodieUser!.addresses!.remove(address);
        emit(const ProfileState.success());
      },
      failure: (error) {
        emit(ProfileState.error(
            error: FirebaseExceptions.getErrorMessage(error)));
      },
    );
  }

  void updateAddress({required Address address}) async {
    if (address.title == addressTitleController.text &&
        address.street == streetController.text &&
        address.floor == floorController.text &&
        address.building == buildingController.text &&
        address.apartment == apartmentController.text) {
      return;
    }
    emit(const ProfileState.loading());
    final updatedAddress = Address(
      title: addressTitleController.text,
      street: streetController.text,
      floor: floorController.text,
      building: buildingController.text,
      apartment: apartmentController.text,
    );
    updatedAddress.id = address.id;
    final response = await profileRepo.updateAddress(
        foodieUser: foodieUser!, address: updatedAddress);
    response.when(
      success: (_) {
        foodieUser!.addresses!.remove(address);
        foodieUser!.addresses!.add(updatedAddress);
        emit(const ProfileState.success());
      },
      failure: (error) {
        emit(ProfileState.error(
            error: FirebaseExceptions.getErrorMessage(error)));
      },
    );
  }
}
