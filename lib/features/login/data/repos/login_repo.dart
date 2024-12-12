import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/firebase/foodie_firebase_auth.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/firebase/models/firebase_result/firebase_result.dart';

class LoginRepo {
  final FoodieFirebaseAuth customFirebase;

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
