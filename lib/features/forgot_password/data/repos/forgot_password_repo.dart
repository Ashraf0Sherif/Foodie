import '../../../../core/firebase/custom_firebase.dart';
import '../../../../core/firebase/firebase_exceptions.dart';
import '../../../../core/firebase/firebase_result.dart';

class ForgotPasswordRepo {
  final CustomFirebase customFirebase;

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
