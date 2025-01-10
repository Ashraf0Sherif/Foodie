import '../../../../core/firebase/foodie_firebase_profile.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/firebase/models/firebase_result/firebase_result.dart';

class SignUpRepo {
  final FoodieFirebaseProfile foodieFirebaseProfile;

  SignUpRepo(this.foodieFirebaseProfile);

  Future<FirebaseResult<void>> signupUsingEmailAndPassword(
      {required String email,
      required String password,
      required String firstName,
      required String lastName}) async {
    try {
      await foodieFirebaseProfile.signupUsingEmailAndPassword(
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName);
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
