import 'package:bloc/bloc.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
  await dotenv.load(fileName: 'assets/e.env');
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );
  await getIsFirstTime();
  await getCurrentLocal();
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

getCurrentLocal() async {
  if (await SharedPrefHelper.getString(SharedPrefKeys.currentLocal) == null ||
      await SharedPrefHelper.getString(SharedPrefKeys.currentLocal) == '') {
    await SharedPrefHelper.setData(SharedPrefKeys.currentLocal, 'en');
    currentLocal = 'en';
  } else {
    currentLocal =
        await SharedPrefHelper.getString(SharedPrefKeys.currentLocal);
  }
}
