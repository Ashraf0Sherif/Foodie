import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt.g.dart';

@JsonSerializable()
class Receipt {
  @JsonKey(name: 'id')
  final String paymentId;
  @JsonKey(name: 'order')
  final String orderId;
  @JsonKey(name: 'amount_cents')
  final String amountCents;
  @JsonKey(
    name: 'created_at',
    fromJson: _extractDate,
  )
  final String createdAt;

  Receipt({
    required this.paymentId,
    required this.orderId,
    required this.amountCents,
    required this.createdAt,
  });

  factory Receipt.fromJson(Map<String, dynamic> json) =>
      _$ReceiptFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiptToJson(this);

  static String _extractDate(String dateTime) {
    return dateTime.split('T').first;
  }
}

