import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../logic/forgot_password_cubit/forgot_password_state.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  const ForgotPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
      listenWhen: (previous, current) =>
          current is Error || current is Success || current is Loading,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()));
          },
          success: () {
            context.pushNamedAndRemoveUntil(Routes.kLoginView,
                predicate: (Route<dynamic> route) {
              return false;
            });
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                content: const Text(
                    "Password reset link has been sent to your email"),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Got it'),
                  )
                ],
              ),
            );
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
    context.pop();
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
            child: const Text('Got it'),
          )
        ],
      ),
    );
  }
}
