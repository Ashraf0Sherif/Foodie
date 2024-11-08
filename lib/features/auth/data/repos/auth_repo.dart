import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/firebase/custom_firebase.dart';
import '../../../../core/firebase/firebase_exceptions.dart';
import '../../../../core/firebase/firebase_result.dart';

class AuthRepo {
  final CustomFirebase customFirebase;

  AuthRepo(this.customFirebase);

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

  Future<FirebaseResult<dynamic>> resetPassword({required String email}) async {
    try {
      await customFirebase.resetPassword(email: email);
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
