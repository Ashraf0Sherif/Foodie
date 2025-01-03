import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodie/core/logic/internet_connection_cubit/internet_connection_cubit.dart';
import 'package:foodie/core/routing/navigator_observer.dart';
import 'package:foodie/core/theming/foodie_theme.dart';

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
      child: BlocProvider(
        create: (context) =>
            InternetConnectionCubit()..setupInternetConnectionListener(),
        child: MaterialApp(
          navigatorObservers: [MyNavigatorObserver()],
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.kLandingView,
          theme: foodieTheme,
        ),
      ),
    );
  }
}
