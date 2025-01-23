part of 'receipt_cubit.dart';

@freezed
class ReceiptState with _$ReceiptState {
  const factory ReceiptState.initial() = _Initial;

  const factory ReceiptState.loading() = ReceiptLoading;

  const factory ReceiptState.error({required String error}) = ReceiptError;

  const factory ReceiptState.success({required List<Receipt> receipts}) =
      ReceiptSuccess;
}
