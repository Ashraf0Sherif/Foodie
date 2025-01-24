import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
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
      required String username,
      required String phoneNumber}) async {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    User user = userCredential.user!;
    await user.updateDisplayName(username);
    await user.reload();
    await user.sendEmailVerification();
    user = FirebaseAuth.instance.currentUser!;
    await addUserToFirestore(userId: user.uid, phoneNumber: phoneNumber);
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> forgotPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<void> addUserToFirestore(
      {required String userId, required String phoneNumber}) async {
    await FirebaseFirestore.instance.collection('users').doc(userId).set(
      {
        'totalOrders': 0,
        'totalSpent': 0.0,
        'phoneNumber': phoneNumber,
      },
    );
  }

  Future<FoodieUser> updateFoodieUser(
      {required String username,
      required String email,
      required String phoneNumber,
      required String password,
      required String currentPassword,
      required FoodieUser foodieUser}) async {
    User user = FirebaseAuth.instance.currentUser!;
    if (password != currentPassword && password.isNotEmpty) {
      _changePassword(currentPassword, password);
    }
    if (username != user.displayName) await user.updateDisplayName(username);
    await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
      'phoneNumber': phoneNumber,
    }, SetOptions(merge: true));
    foodieUser.phoneNumber = phoneNumber;
    if (foodieUser.email != email) {
      await user.verifyBeforeUpdateEmail(email);
    }
    foodieUser.username = username;
    return foodieUser;
  }

  void _changePassword(String currentPassword, String newPassword) async {
    final user = FirebaseAuth.instance.currentUser;
    final cred = EmailAuthProvider.credential(
        email: user!.email!, password: currentPassword);
    user.reauthenticateWithCredential(cred).then(
      (value) {
        user.updatePassword(newPassword);
      },
    );
  }

  Future<FoodieUser> getCurrentUser() async {
    await FirebaseAuth.instance.currentUser!.reload();
    User user = FirebaseAuth.instance.currentUser!;
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();
    final foodieUser =
        FoodieUser.fromJson(snapshot.data() as Map<String, dynamic>);
    foodieUser.id = user.uid;
    foodieUser.email = user.email!;
    foodieUser.username = user.displayName!;
    foodieUser.avatarUrl = user.photoURL;
    foodieUser.addresses = await _getUserAddresses(foodieUser: foodieUser);
    return foodieUser;
  }

  Future<Address> addAddress(
      {required FoodieUser foodieUser, required Address address}) async {
    final docRef = await FirebaseFirestore.instance
        .collection('users')
        .doc(foodieUser.id)
        .collection('addresses')
        .add(address.toJson());
    address.id = docRef.id;
    return address;
  }

  Future<List<Address>> _getUserAddresses({required FoodieUser foodieUser}) {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(foodieUser.id)
        .collection('addresses')
        .get()
        .then((snapshot) => snapshot.docs.map((doc) {
              final address = Address.fromJson(doc.data());
              address.id = doc.id;
              return address;
            }).toList());
  }

  Future<void> deleteAddress(
      {required FoodieUser foodieUser, required String addressId}) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(foodieUser.id)
        .collection('addresses')
        .doc(addressId)
        .delete();
  }

  Future<void> updateAddress(
      {required FoodieUser foodieUser, required Address address}) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(foodieUser.id)
        .collection('addresses')
        .doc(address.id)
        .set(address.toJson(), SetOptions(merge: true));
  }

  Future<String> changeUserAvatar({required File image}) async {
    final foodieUser = FirebaseAuth.instance.currentUser!;

    final storageRef = FirebaseStorage.instance
        .ref()
        .child('user_avatars/${foodieUser.uid}.jpg');
    final uploadTask = storageRef.putFile(image);
    final snapshot = await uploadTask.whenComplete(() {});
    final avatarUrl = await snapshot.ref.getDownloadURL();
    foodieUser.updatePhotoURL(
      avatarUrl,
    );
    return avatarUrl;
  }
}
