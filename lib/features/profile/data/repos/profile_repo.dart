import 'package:foodie/core/firebase/models/firebase_result/firebase_result.dart';
import 'package:foodie/features/login/data/models/user_model/address.dart';

import '../../../../core/firebase/foodie_firebase_profile.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../login/data/models/user_model/foodie_user.dart';

class ProfileRepo {
  final FoodieFirebaseAuth foodieFirebaseAuth;

  ProfileRepo(this.foodieFirebaseAuth);

  Future<FirebaseResult<void>> logout() async {
    try {
      await foodieFirebaseAuth.logout();
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  Future<FirebaseResult<void>> addAddress(
      {required FoodieUser foodieUser, required Address address}) async {
    try {
      await foodieFirebaseAuth.addAddress(
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
          await foodieFirebaseAuth.getUserAddresses(foodieUser: foodieUser);
      return FirebaseResult.success(addresses);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
