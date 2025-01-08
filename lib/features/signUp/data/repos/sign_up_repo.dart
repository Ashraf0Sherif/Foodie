import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/firebase/foodie_firebase_auth.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/firebase/models/firebase_result/firebase_result.dart';

class SignUpRepo {
  final FoodieFirebaseAuth customFirebase;

  SignUpRepo(this.customFirebase);

  Future<FirebaseResult<UserCredential>> signupUsingEmailAndPassword(
      {required String email,
      required String password,
      required String firstName,
      required String lastName}) async {
    try {
      var response = await customFirebase.signupUsingEmailAndPassword(
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName);
      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
