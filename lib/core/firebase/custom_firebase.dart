import 'package:firebase_auth/firebase_auth.dart';


class CustomFirebase {
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

  // Future<UserCredential> loginUsingGoogle() async {
  //   // final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //   //
  //   // final GoogleSignInAuthentication googleAuth =
  //   //     await googleUser!.authentication;
  //   //
  //   // final AuthCredential credential = GoogleAuthProvider.credential(
  //   //   accessToken: googleAuth.accessToken,
  //   //   idToken: googleAuth.idToken,
  //   // );
  //   // UserCredential userCredential =
  //   //     await FirebaseAuth.instance.signInWithCredential(credential);
  //   // return userCredential;
  // }

  Future<UserCredential> signupUsingEmailAndPassword({
    required String email,
    required String password,
    required String username,
  }) async {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    User user = userCredential.user!;
    await user.updateDisplayName(username);
    await user.reload();
    user = FirebaseAuth.instance.currentUser!;
    return userCredential;
  }

  Future<void> resetPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
