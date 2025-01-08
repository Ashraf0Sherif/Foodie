import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/di/dependency_injection.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'core/helpers/shared_pref_keys.dart';
import 'core/routing/app_router.dart';
import 'firebase_options.dart';
import 'foodie.dart';

void main() async {
  setupGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  // To fix hidden text issue in release mode
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(fileName: 'assets/e.env');
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
