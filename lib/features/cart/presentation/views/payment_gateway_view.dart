import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/cart/data/models/receipt.dart';
import 'package:foodie/features/profile/logic/profile_cubit/profile_cubit.dart';

import '../../../../generated/l10n.dart';
import '../../logic/cart_cubit/cart_cubit.dart';

class PaymentGatewayView extends StatefulWidget {
  const PaymentGatewayView(
      {super.key, required this.paymentToken, required this.onSuccess});

  final String paymentToken;
  final Function(Receipt receipt) onSuccess;

  @override
  State<PaymentGatewayView> createState() => _PaymentGatewayViewState();
}

class _PaymentGatewayViewState extends State<PaymentGatewayView> {
  InAppWebViewController? _controller;

  void startPayment() {
    _controller?.loadUrl(
      urlRequest: URLRequest(
        url: WebUri('${dotenv.env['PAYMENT_IFRAME']}=${widget.paymentToken}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).paymentGateway), // Localized
      ),
      body: InAppWebView(
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true),
        ),
        onWebViewCreated: (controller) {
          _controller = controller;
          startPayment();
        },
        onLoadStop: (controller, url) {
          if (url != null &&
              url.queryParameters.containsKey('success') &&
              url.queryParameters['success'] == 'true') {
            final receipt = Receipt();
            receipt.orderId = url.queryParameters['order'];
            receipt.paymentId = int.parse(url.queryParameters['id']!);
            receipt.amountCents =
                int.parse(url.queryParameters['amount_cents']!);
            receipt.date = url.queryParameters['created_at']!.split('T')[0];
            _addReceipt(receipt: receipt);
            _increaseUserTotalOrdersAndTotalSpent(amount: receipt.amountCents!);
            context.pop();
            widget.onSuccess(receipt);
          }
        },
      ),
    );
  }

  _addReceipt({required Receipt receipt}) async {
    await FirebaseFirestore.instance
        .collection('receipts')
        .doc(receipt.orderId)
        .set(
      {
        'foodItems': context
            .read<CartCubit>()
            .cartItems
            .map((foodItem) =>
                {'id': foodItem.id, 'quantity': foodItem.quantity})
            .toList(),
      },
    );
  }

  _increaseUserTotalOrdersAndTotalSpent({required int amount}) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({'totalOrders': FieldValue.increment(1)});

    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({'totalSpent': FieldValue.increment(amount / 100)});
  }
}

class PaymentGatewayArgs {
  final String paymentKey;
  final Function(Receipt) onSuccess;

  PaymentGatewayArgs({
    required this.paymentKey,
    required this.onSuccess,
  });
}
