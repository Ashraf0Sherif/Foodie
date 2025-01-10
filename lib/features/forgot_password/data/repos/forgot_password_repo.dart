import '../../../../core/firebase/foodie_firebase_profile.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/firebase/models/firebase_result/firebase_result.dart';

class ForgotPasswordRepo {
  final FoodieFirebaseProfile foodieFirebaseProfile;

  ForgotPasswordRepo(this.foodieFirebaseProfile);

  Future<FirebaseResult<dynamic>> forgotPassword({required String email}) async {
    try {
      await foodieFirebaseProfile.forgotPassword(email: email);
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
