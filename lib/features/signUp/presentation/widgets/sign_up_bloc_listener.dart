import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/core/helpers/show_snack_bar.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_state.dart';

import '../../../../core/routing/routes.dart';
import '../../../../generated/l10n.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpError ||
          current is SignUpSuccess ||
          current is SignUpLoading,
      listener: (context, state) {
        state.whenOrNull(
          signUpLoading: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()));
          },
          signUpSuccess: () {
            context.pop();
            context.pushNamedAndRemoveUntil(
              Routes.kLoginView,
              predicate: (Route<dynamic> route) {
                return false;
              },
            );
            showSnackBar(context, message: S.of(context).verificationEmailSent);
          },
          signUpError: (error) {
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
