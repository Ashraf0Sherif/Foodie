import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/routing/routes.dart';

import '../../logic/login_cubit/login_cubit.dart';
import '../../logic/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
          success: (loginResponse) {
            context.pop();
            context.pushNamedAndRemoveUntil(Routes.kHomeView,
                predicate: (Route<dynamic> route) {
              return false;
            });
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
