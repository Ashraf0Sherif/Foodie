part of 'banner_cubit.dart';

@freezed
class BannerState<T> with _$BannerState {
  const factory BannerState.initial() = _Initial;

  const factory BannerState.loading() = Loading;

  const factory BannerState.success({required List<BannerModel> banners}) = Success;

  const factory BannerState.error({required String error}) = Error;
}
