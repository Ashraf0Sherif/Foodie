import 'package:flutter/material.dart';
import 'package:foodie/core/routing/routes.dart';

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
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.kRegisterView:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.kResetPasswordView:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      case Routes.kOnboardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
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
