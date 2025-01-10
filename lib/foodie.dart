import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/logic/internet_connection_cubit/internet_connection_cubit.dart';
import 'package:foodie/core/routing/navigator_observer.dart';
import 'package:foodie/core/theming/foodie_theme.dart';
import 'package:foodie/features/cart/logic/cart_cubit/cart_cubit.dart';

import 'core/helpers/shared_pref_keys.dart';
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
      child: MultiBlocProvider(
        providers: [
          BlocProvider<InternetConnectionCubit>(
            create: (context) =>
                InternetConnectionCubit()..setupInternetConnectionListener(),
          ),
          BlocProvider(
            create: (context) => CartCubit(),
          ),
        ],
        child: MaterialApp(
          navigatorObservers: [MyNavigatorObserver()],
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute:
              isFirstTime ? Routes.kOnboardingView : Routes.kLandingView,
          theme: foodieTheme,
        ),
      ),
    );
  }
}
