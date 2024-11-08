import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class Foodie extends StatelessWidget {
  const Foodie({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.kOnboardingView,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(),
          scaffoldBackgroundColor: Colors.white,
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
