import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodie/core/di/dependency_injection.dart';

import 'core/helpers/shared_pref_helper.dart';
import 'core/helpers/shared_pref_keys.dart';
import 'core/helpers/simple_bloc_observer.dart';
import 'core/routing/app_router.dart';
import 'firebase_options.dart';
import 'foodie.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: false,
  );
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
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
