import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/firebase/custom_firebase.dart';
import '../../../core/firebase/firebase_exceptions.dart';
import '../../../core/firebase/firebase_result.dart';
import '../data/models/user_model/user.dart';
import 'auth_repo.dart';

class AuthRepoImplementation implements AuthRepo {
  final CustomFirebase customFirebase;

  AuthRepoImplementation(this.customFirebase);

  @override
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

  // @override
  // Future<FirebaseResult<UserCredential>> loginUsingGoogle() async {
  //   try {
  //     var user = await customFirebase.loginUsingGoogle();
  //     return FirebaseResult.success(user);
  //   } catch (error) {
  //     return FirebaseResult.failure(
  //         FirebaseExceptions.getFirebaseException(error));
  //   }
  // }

  @override
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

  @override
  Future<FirebaseResult<dynamic>> resetPassword({required String email}) async {
    try {
      await customFirebase.resetPassword(email: email);
      return const FirebaseResult.success(null);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }

  @override
  Future<FirebaseResult<UserModel>> fetchUser({required User firebaseUser}) {
    // TODO: implement fetchUser
    throw UnimplementedError();
  }
}
