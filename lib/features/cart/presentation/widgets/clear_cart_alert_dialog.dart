import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cart_cubit/cart_cubit.dart';

class ClearCartAlertDialog extends StatelessWidget {
  const ClearCartAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure?'),
      content: const Text('Do you want to clear the cart?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            context.read<CartCubit>().clearCart();
            Navigator.pop(context);
          },
          child: const Text('Clear'),
        ),
      ],
    );
  }
}
