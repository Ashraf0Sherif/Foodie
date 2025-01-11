import 'dart:io';

import 'package:foodie/core/firebase/models/firebase_result/firebase_result.dart';
import 'package:foodie/features/login/data/models/user_model/address.dart';

import '../../../../core/firebase/foodie_firebase_profile.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../login/data/models/user_model/foodie_user.dart';

class ProfileRepo {
  final FoodieFirebaseProfile foodieFirebaseProfile;

  ProfileRepo(this.foodieFirebaseProfile);

  Future<FirebaseResult<void>> logout() async {
    try {
      await foodieFirebaseProfile.logout();
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<FoodieUser>> getCurrentUser() async {
    try {
      var foodieUser = await foodieFirebaseProfile.getCurrentUser();
      return FirebaseResult.success(foodieUser);
    } catch (error) {
      print(error);
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<FoodieUser>> updateFoodieUser(
      {required String username,
      required String email,
      required String phoneNumber,
      required String password,
      required String currentPassword,
      required FoodieUser oldFoodieUser}) async {
    try {
      var foodieUser = await foodieFirebaseProfile.updateFoodieUser(
        username: username,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
        currentPassword: currentPassword,
        foodieUser: oldFoodieUser,
      );
      return FirebaseResult.success(foodieUser);
    } catch (error) {
      print(error);
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<String>> changeUserAvatar({required File image}) async {
    try {
      var avatarUrl =
          await foodieFirebaseProfile.changeUserAvatar(image: image);
      return FirebaseResult.success(avatarUrl);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<void>> addAddress(
      {required FoodieUser foodieUser, required Address address}) async {
    try {
      await foodieFirebaseProfile.addAddress(
          foodieUser: foodieUser, address: address);
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<List<Address>>> getUserAddresses(
      {required FoodieUser foodieUser}) async {
    try {
      var addresses =
          await foodieFirebaseProfile.getUserAddresses(foodieUser: foodieUser);
      return FirebaseResult.success(addresses);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
