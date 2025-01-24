import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/show_snack_bar.dart';
import '../../logic/payment_cubit/payment_cubit.dart';

class PaymentBlocListener extends StatelessWidget {
  const PaymentBlocListener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentFailure) {
          showSnackBar(context, message: state.error, color: Colors.red);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
