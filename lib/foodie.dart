import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/logic/internet_connection_cubit/internet_connection_cubit.dart';
import 'package:foodie/core/logic/language_cubit/language_cubit.dart';
import 'package:foodie/core/routing/navigator_observer.dart';
import 'package:foodie/core/theming/foodie_theme.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';

import 'core/helpers/shared_pref_keys.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'generated/l10n.dart';

class Foodie extends StatelessWidget {
  const Foodie({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<InternetConnectionCubit>(
            create: (context) =>
                InternetConnectionCubit()..setupInternetConnectionListener(),
          ),
          BlocProvider(
            create: (context) => CartCubit(),
          ),
          BlocProvider(
            create: (context) => LanguageCubit(),
          ),
        ],
        child: BlocBuilder<LanguageCubit, LanguageState>(
          builder: (context, state) {
            return Container(
              color: Colors.blue[50],
              child: SafeArea(
                child: MaterialApp(
                  locale: Locale(currentLanguage),
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                  navigatorObservers: [MyNavigatorObserver()],
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: appRouter.generateRoute,
                  initialRoute: isFirstTime
                      ? Routes.kOnboardingView
                      : (FirebaseAuth.instance.currentUser != null &&
                              FirebaseAuth.instance.currentUser!.emailVerified)
                          ? Routes.kLandingView
                          : Routes.kLoginView,
                  theme: foodieTheme(context), // Pass context to the theme
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
