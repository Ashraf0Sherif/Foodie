import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/di/dependency_injection.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
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
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.debug,
    appleProvider: AppleProvider.appAttest,
  );
  runApp(
    Foodie(
      appRouter: AppRouter(),
    ),
  );
}
