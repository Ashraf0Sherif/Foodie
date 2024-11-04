import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';
import 'firebase_options.dart';
import 'foodie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    Foodie(
      appRouter: AppRouter(),
    ),
  );
}
