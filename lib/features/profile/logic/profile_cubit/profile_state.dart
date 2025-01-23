part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitial;

  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.error({required String error}) = ProfileError;

  const factory ProfileState.success() =
      ProfileSuccess;
}
