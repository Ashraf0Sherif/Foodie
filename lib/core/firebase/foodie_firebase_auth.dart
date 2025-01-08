import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';

class FoodieFirebaseAuth {
  Future<UserCredential> loginUsingEmailAndPassword({
    required String email,
    required String password,
  }) async {
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }

  Future<UserCredential> signupUsingEmailAndPassword(
      {required String email,
      required String password,
      required String firstName,
      required String lastName}) async {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    User user = userCredential.user!;
    await user.updateDisplayName("$firstName $lastName");
    await user.reload();
    user = FirebaseAuth.instance.currentUser!;
    await addUserToFirestore(
        user: user, firstName: firstName, lastName: lastName);
    return userCredential;
  }

  Future<void> addUserToFirestore(
      {required User user,
      required String firstName,
      required String lastName}) async {
    await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
      'firstName': firstName,
      'lastName': lastName,
      'email': user.email,
    });
  }

  Future<FoodieUser> getCurrentUser() async {
    User user = FirebaseAuth.instance.currentUser!;
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();
    final foodieUser =
        FoodieUser.fromJson(snapshot.data() as Map<String, dynamic>);
    foodieUser.id = user.uid;
    return foodieUser;
  }

  Future<void> forgotPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
