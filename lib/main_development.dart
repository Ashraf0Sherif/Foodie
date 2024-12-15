import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodie/core/di/dependency_injection.dart';

import 'core/helpers/shared_pref_helper.dart';
import 'core/helpers/shared_pref_keys.dart';
import 'core/routing/app_router.dart';
import 'core/routing/navigator_observer.dart';
import 'firebase_options.dart';
import 'foodie.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );
  await getIsFirstTime();
  runApp(
    Foodie(
      appRouter: AppRouter(),
    ),
  );
}

getIsFirstTime() async {
  if (await SharedPrefHelper.getBool(SharedPrefKeys.kIsFirstTime) == false) {
    isFirstTime = false;
  }
}
