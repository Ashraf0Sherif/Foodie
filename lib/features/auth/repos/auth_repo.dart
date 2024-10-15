import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/firebase/firebase_result.dart';
import '../data/models/user_model/user.dart';

abstract class AuthRepo {
  Future<FirebaseResult<UserCredential>> loginUsingEmailAndPassword(
      {required String email, required String password});

  //Future<FirebaseResult<UserCredential>> loginUsingGoogle();

  Future<FirebaseResult<UserCredential>> signupUsingEmailAndPassword(
      {required String email,
      required String password,
      required String username});

  Future<FirebaseResult<UserModel>> fetchUser({required User firebaseUser});

  Future<void> resetPassword({required String email});
}
