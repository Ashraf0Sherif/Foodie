import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/di/dependency_injection.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:foodie/features/home/presentation/views/home_view.dart';

import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/register_view.dart';
import '../../features/auth/presentation/views/reset_password_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.kLoginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));
      case Routes.kRegisterView:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.kResetPasswordView:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      case Routes.kOnboardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.kHomeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
