import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_exceptions.freezed.dart';

@freezed
abstract class FirebaseExceptions with _$FirebaseExceptions {
  const factory FirebaseExceptions.emailAlreadyExists() = EmailAlreadyExists;

  const factory FirebaseExceptions.invalidEmail() = InvalidEmail;

  const factory FirebaseExceptions.invalidPassword() = InvalidPassword;

  const factory FirebaseExceptions.invalidCredential() = InvalidCredential;

  const factory FirebaseExceptions.wrongPassword() = WrongPassword;

  const factory FirebaseExceptions.weakPassword() = WeakPassword;

  const factory FirebaseExceptions.formatException() = FormatException;

  const factory FirebaseExceptions.noInternetConnection() =
      NoInternetConnection;

  const factory FirebaseExceptions.unexpectedError() = UnexpectedError;

  const factory FirebaseExceptions.userNotFound() = UserNotFound;

  static FirebaseExceptions getFirebaseException(error) {
    if (error is Exception) {
      try {
        FirebaseExceptions firebaseExceptions;
        if (error is FirebaseAuthException) {
          switch (error.code) {
            case "invalid-credential":
              firebaseExceptions = const FirebaseExceptions.invalidCredential();
              break;
            case "invalid-email":
              firebaseExceptions = const FirebaseExceptions.invalidEmail();
              break;
            case "weak-password":
              firebaseExceptions = const FirebaseExceptions.weakPassword();
              break;
            case "email-already-in-use":
              firebaseExceptions =
                  const FirebaseExceptions.emailAlreadyExists();
              break;
            case "user-not-found":
              firebaseExceptions = const FirebaseExceptions.userNotFound();
              break;
            case "wrong-password":
              firebaseExceptions = const FirebaseExceptions.wrongPassword();
              break;
            case "No Internet Connection":
              firebaseExceptions =
                  const FirebaseExceptions.noInternetConnection();
              break;
            default:
              firebaseExceptions =
                  const FirebaseExceptions.noInternetConnection();
              break;
          }
        } else if (error is SocketException) {
          firebaseExceptions = const FirebaseExceptions.noInternetConnection();
        } else {
          firebaseExceptions = const FirebaseExceptions.unexpectedError();
        }
        return firebaseExceptions;
      } on FormatException {
        return const FirebaseExceptions.formatException();
      } catch (_) {
        return const FirebaseExceptions.unexpectedError();
      }
    } else {
      return const FirebaseExceptions.unexpectedError();
    }
  }

  static String getErrorMessage(FirebaseExceptions firebaseExceptions) {
    var errorMessage = "";
    firebaseExceptions.when(
      emailAlreadyExists: () =>
          errorMessage = "There is already an user with this email",
      invalidEmail: () => errorMessage = "Invalid email",
      invalidPassword: () => errorMessage = "Invalid password",
      invalidCredential: () =>
          errorMessage = "Something wrong , check your email and password !",
      wrongPassword: () => errorMessage = "Wrong password",
      weakPassword: () => errorMessage = "Weak password",
      formatException: () => errorMessage = "Unexpected error occurred",
      noInternetConnection: () => errorMessage = "No internet connection",
      unexpectedError: () => errorMessage = "Unexpected error occurred",
      userNotFound: () => errorMessage = "There is no such a user",
    );
    return errorMessage;
  }
}
