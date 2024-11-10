import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/firebase/custom_firebase.dart';
import '../../../../core/firebase/firebase_exceptions.dart';
import '../../../../core/firebase/firebase_result.dart';

class SignUpRepo {
  final CustomFirebase customFirebase;

  SignUpRepo(this.customFirebase);

  Future<FirebaseResult<UserCredential>> signupUsingEmailAndPassword(
      {required String email,
      required String password,
      required String username}) async {
    try {
      var response = await customFirebase.signupUsingEmailAndPassword(
          email: email, password: password, username: username);
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
