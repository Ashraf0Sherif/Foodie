import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/show_snack_bar.dart';
import 'package:foodie/core/routing/routes.dart';

import '../../../../generated/l10n.dart';
import '../../logic/login_cubit/login_cubit.dart';
import '../../logic/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginError ||
          current is LoginSuccess ||
          current is LoginLoading,
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            if (FirebaseAuth.instance.currentUser!.emailVerified) {
              context.pushNamedAndRemoveUntil(
                Routes.kLandingView,
                predicate: (Route<dynamic> route) {
                  return false;
                },
              );
            } else {
              showSnackBar(context, message: S.of(context).pleaseVerifyEmail);
            }
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
        ),
        content: Text(error),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text(S.of(context).gotIt),
          )
        ],
      ),
    );
  }
}
