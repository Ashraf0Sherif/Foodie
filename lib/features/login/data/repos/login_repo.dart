import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/firebase/custom_firebase.dart';
import '../../../../core/firebase/firebase_exceptions.dart';
import '../../../../core/firebase/firebase_result.dart';

class LoginRepo {
  final CustomFirebase customFirebase;

  LoginRepo(this.customFirebase);

  Future<FirebaseResult<UserCredential>> loginUsingEmailAndPassword(
      {required String email, required String password}) async {
    try {
      var response = await customFirebase.loginUsingEmailAndPassword(
          email: email, password: password);
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
