import '../../../../core/firebase/foodie_firebase_auth.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/firebase/models/firebase_result/firebase_result.dart';

class ForgotPasswordRepo {
  final FoodieFirebaseAuth customFirebase;

  ForgotPasswordRepo(this.customFirebase);

  Future<FirebaseResult<dynamic>> forgotPassword({required String email}) async {
    try {
      await customFirebase.forgotPassword(email: email);
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
