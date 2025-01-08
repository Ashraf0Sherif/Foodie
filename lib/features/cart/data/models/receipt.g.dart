// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Receipt _$ReceiptFromJson(Map<String, dynamic> json) => Receipt(
      paymentId: json['id'] as String,
      orderId: json['order'] as String,
      amountCents: json['amount_cents'] as String,
      createdAt: Receipt._extractDate(json['created_at'] as String),
    );

Map<String, dynamic> _$ReceiptToJson(Receipt instance) => <String, dynamic>{
      'id': instance.paymentId,
      'order': instance.orderId,
      'amount_cents': instance.amountCents,
      'created_at': instance.createdAt,
    };
