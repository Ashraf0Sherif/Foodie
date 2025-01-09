import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';

import '../../../../core/firebase/foodie_firebase_profile.dart';
import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../../../core/firebase/models/firebase_result/firebase_result.dart';

class LoginRepo {
  final FoodieFirebaseAuth customFirebase;

  LoginRepo(this.customFirebase);

  Future<FirebaseResult<FoodieUser>> loginUsingEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await customFirebase.loginUsingEmailAndPassword(
        email: email,
        password: password,
      );
      var foodieUser = await customFirebase.getCurrentUser();
      return FirebaseResult.success(foodieUser);
    } catch (error) {
      return FirebaseResult.failure(
          FirebaseExceptions.getFirebaseException(error));
    }
  }
}
