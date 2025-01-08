part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _PaymentInitial;

  const factory PaymentState.loading() = PaymentLoading;

  const factory PaymentState.success({required String paymentKey}) =
      PaymentSuccess;


  const factory PaymentState.failure({required String error}) = PaymentFailure;
}
