import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:foodie/core/helpers/extensions.dart';
import 'package:foodie/features/cart/data/models/receipt.dart';

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
        title: const Text('Payment Gateway'),
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
            context.pop();
            widget.onSuccess(Receipt.fromJson(url.queryParameters));
          } else if (url != null &&
              url.queryParameters.containsKey('success') &&
              url.queryParameters['success'] == 'false') {}
        },
      ),
    );
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
