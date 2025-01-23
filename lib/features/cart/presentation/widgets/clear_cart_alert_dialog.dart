import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../logic/cart_cubit/cart_cubit.dart';

class ClearCartAlertDialog extends StatelessWidget {
  const ClearCartAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).areYouSure), // Localized
      content: Text(S.of(context).clearCartConfirmation), // Localized
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(S.of(context).cancel), // Localized
        ),
        TextButton(
          onPressed: () {
            context.read<CartCubit>().clearCart();
            Navigator.pop(context);
          },
          child: Text(S.of(context).clear), // Localized
        ),
      ],
    );
  }
}
