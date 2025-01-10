import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie/features/login/data/models/user_model/address.dart';
import 'package:foodie/features/login/data/models/user_model/foodie_user.dart';

class FoodieFirebaseProfile {
  Future<void> loginUsingEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signupUsingEmailAndPassword(
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
        userId: user.uid, firstName: firstName, lastName: lastName);
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> forgotPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<void> addUserToFirestore(
      {required String userId,
      required String firstName,
      required String lastName}) async {
    await FirebaseFirestore.instance.collection('users').doc(userId).set(
      {
        'firstName': firstName,
        'lastName': lastName,
      },
    );
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
    foodieUser.email = user.email!;
    return foodieUser;
  }

  Future<void> addAddress(
      {required FoodieUser foodieUser, required Address address}) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(foodieUser.id)
        .collection('addresses')
        .add(address.toJson());
  }

  Future<List<Address>> getUserAddresses({required FoodieUser foodieUser}) {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(foodieUser.id)
        .collection('addresses')
        .get()
        .then((snapshot) =>
            snapshot.docs.map((doc) => Address.fromJson(doc.data())).toList());
  }
}
