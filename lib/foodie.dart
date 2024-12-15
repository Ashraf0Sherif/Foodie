import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/helpers/shared_pref_keys.dart';
import 'package:foodie/core/routing/navigator_observer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class Foodie extends StatelessWidget {
  const Foodie({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        navigatorObservers: [MyNavigatorObserver()],
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: isFirstTime
            ? Routes.kOnboardingView
            : (FirebaseAuth.instance.currentUser != null)
                ? Routes.kLandingView
                : Routes.kLoginView,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(),
          //scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          textTheme: GoogleFonts.robotoTextTheme(),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              shape: WidgetStateProperty.resolveWith<OutlinedBorder>((_) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      12.0), // Change this to your desired border radius
                );
              }),
              overlayColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.blue
                        .withOpacity(0.1); // Change this to your desired color
                  }
                  return Colors.transparent; // Default color
                },
              ),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.black),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorsStyles.kPrimaryColor),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorsStyles.kPrimaryColor,
                width: 1.8,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIconColor: Colors.grey,
          ),
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.black,
            selectionColor: Colors.blue.withOpacity(0.3),
            selectionHandleColor: Colors.black,
          ),
        ),
        //routerConfig: ,
      ),
    );
  }
}
