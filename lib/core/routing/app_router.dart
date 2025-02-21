import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/di/dependency_injection.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/features/home/logic/food_items_cubit/food_items_cubit.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';
import 'package:foodie/features/profile/logic/receipt_cubit/receipt_cubit.dart';
import 'package:foodie/features/profile/presentation/views/addresses_view.dart';
import 'package:foodie/features/profile/presentation/views/manage_profile_view.dart';
import 'package:foodie/features/profile/presentation/views/receipt_details_view.dart';
import 'package:foodie/features/profile/presentation/views/receipts_view.dart';
import 'package:foodie/features/search/logic/search_cubit/search_cubit.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_cubit.dart';

import '../../features/cart/data/models/receipt.dart';
import '../../features/cart/presentation/views/payment_gateway_view.dart';
import '../../features/forgot_password/logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/forgot_password/presentation/views/forgot_password_view.dart';
import '../../features/home/logic/banner_cubit/banner_cubit.dart';
import '../../features/home/logic/filter_cubit/filter_cubit.dart';
import '../../features/home/logic/food_categories_cubit/food_categories_cubit.dart';
import '../../features/login/data/models/user_model/foodie_user.dart';
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
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
          settings: const RouteSettings(name: Routes.kOnboardingView),
        );
      case Routes.kLoginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginView(),
          ),
          settings: const RouteSettings(name: Routes.kLoginView),
        );
      case Routes.kRegisterView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignUpCubit(getIt()),
            child: const SignUpView(),
          ),
          settings: const RouteSettings(name: Routes.kRegisterView),
        );
      case Routes.kForgotPasswordView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ForgotPasswordCubit(getIt()),
            child: const ResetPasswordView(),
          ),
          settings: const RouteSettings(name: Routes.kForgotPasswordView),
        );
      case Routes.kPaymentGatewayView:
        return MaterialPageRoute(
          builder: (_) {
            final args = arguments as PaymentGatewayArgs;
            return PaymentGatewayView(
              paymentToken: args.paymentKey,
              onSuccess: args.onSuccess,
            );
          },
          settings: const RouteSettings(name: Routes.kPaymentGatewayView),
        );
      case Routes.kLandingView:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => BannerCubit(getIt())..emitBannerStates(),
              ),
              BlocProvider(
                create: (context) => SearchCubit(getIt()),
              ),
              BlocProvider(
                create: (context) =>
                    FoodCategoriesCubit(getIt())..emitFoodCategoriesStates(),
              ),
              BlocProvider(
                create: (context) => FilterCubit(),
              ),
              BlocProvider(
                create: (context) => BottomNavBarCubit(),
              ),
              BlocProvider(
                create: (context) => FoodItemsCubit(getIt()),
              ),
              BlocProvider(
                create: (context) => ProfileCubit(getIt()),
              ),
            ],
            child: const LandingView(),
          ),
          settings: const RouteSettings(name: Routes.kLandingView),
        );
      case Routes.kAddressView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProfileCubit>.value(
            value: arguments as ProfileCubit,
            child: AddressesView(
              profileCubit: arguments,
            ),
          ),
          settings: const RouteSettings(name: Routes.kAddressView),
        );
      case Routes.kReceiptsView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ReceiptCubit(getIt(), getIt())..getReceipts(),
            child: ReceiptsView(
              foodieUser: arguments as FoodieUser,
            ),
          ),
          settings: const RouteSettings(name: Routes.kReceiptsView),
        );
      case Routes.kReceiptDetailsView:
        return MaterialPageRoute(
          builder: (_) => ReceiptDetailsView(
            receipt: arguments as Receipt,
          ),
          settings: const RouteSettings(name: Routes.kReceiptDetailsView),
        );
      case Routes.kManageProfileView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ProfileCubit>.value(
            value: arguments as ProfileCubit,
            child: const ManageProfileView(),
          ),
          settings: const RouteSettings(name: Routes.kManageProfileView),
        );
      default:
        return null;
    }
  }
}
