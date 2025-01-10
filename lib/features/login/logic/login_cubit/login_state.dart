import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _LoginInitial;

  const factory LoginState.loading() = LoginLoading;

  const factory LoginState.success() = LoginSuccess;

  const factory LoginState.error({required String error}) = LoginError;
}
