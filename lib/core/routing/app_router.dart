import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/di/dependency_injection.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_cubit.dart';

import '../../features/forgot_password/logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/forgot_password/presentation/views/forgot_password_view.dart';
import '../../features/login/logic/login_cubit/login_cubit.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/signUp/presentation/views/sign_up_view.dart';
import '../logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import '../widgets/landing_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.kOnboardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.kLoginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(getIt()),
                  child: const LoginView(),
                ));
      case Routes.kRegisterView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SignUpCubit(getIt()),
                  child: const SignUpView(),
                ));
      case Routes.kForgotPasswordView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => ForgotPasswordCubit(getIt()),
                  child: const ResetPasswordView(),
                ));
      case Routes.kLandingView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => BottomNavBarCubit(),
                  child: const LandingView(),
                ));
      default:
        return null;
    }
  }
}
