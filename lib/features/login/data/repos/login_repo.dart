import '../../../../core/firebase/foodie_firebase_profile.dart';
import '../../../../core/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/models/firebase_result/firebase_result.dart';

class LoginRepo {
  final FoodieFirebaseProfile foodieFirebaseProfile;

  LoginRepo(this.foodieFirebaseProfile);

  Future<FirebaseResult<void>> loginUsingEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await foodieFirebaseProfile.loginUsingEmailAndPassword(
          email: email, password: password);
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
