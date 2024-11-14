import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/di/dependency_injection.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/features/home/presentation/views/home_view.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_cubit.dart';
import '../../features/forgot_password/logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/login/logic/login_cubit/login_cubit.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../../features/forgot_password/presentation/views/forgot_password_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/signUp/presentation/views/sign_up_view.dart';

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
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const SignUpView(),
                ));
      case Routes.kForgotPasswordView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ForgotPasswordCubit>(),
                  child: const ResetPasswordView(),
                ));
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
