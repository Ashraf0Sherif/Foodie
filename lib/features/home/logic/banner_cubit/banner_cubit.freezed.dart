// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BannerModel> banners) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BannerLoading<T> value) loading,
    required TResult Function(BannerSuccess<T> value) success,
    required TResult Function(BannerError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BannerLoading<T> value)? loading,
    TResult? Function(BannerSuccess<T> value)? success,
    TResult? Function(BannerError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BannerLoading<T> value)? loading,
    TResult Function(BannerSuccess<T> value)? success,
    TResult Function(BannerError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<T, $Res> {
  factory $BannerStateCopyWith(
          BannerState<T> value, $Res Function(BannerState<T>) then) =
      _$BannerStateCopyWithImpl<T, $Res, BannerState<T>>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<T, $Res, $Val extends BannerState<T>>
    implements $BannerStateCopyWith<T, $Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$BannerStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BannerState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BannerModel> banners) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BannerLoading<T> value) loading,
    required TResult Function(BannerSuccess<T> value) success,
    required TResult Function(BannerError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BannerLoading<T> value)? loading,
    TResult? Function(BannerSuccess<T> value)? success,
    TResult? Function(BannerError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BannerLoading<T> value)? loading,
    TResult Function(BannerSuccess<T> value)? success,
    TResult Function(BannerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements BannerState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$BannerLoadingImplCopyWith<T, $Res> {
  factory _$$BannerLoadingImplCopyWith(_$BannerLoadingImpl<T> value,
          $Res Function(_$BannerLoadingImpl<T>) then) =
      __$$BannerLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BannerLoadingImplCopyWithImpl<T, $Res>
    extends _$BannerStateCopyWithImpl<T, $Res, _$BannerLoadingImpl<T>>
    implements _$$BannerLoadingImplCopyWith<T, $Res> {
  __$$BannerLoadingImplCopyWithImpl(_$BannerLoadingImpl<T> _value,
      $Res Function(_$BannerLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BannerLoadingImpl<T> implements BannerLoading<T> {
  const _$BannerLoadingImpl();

  @override
  String toString() {
    return 'BannerState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BannerLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BannerModel> banners) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BannerLoading<T> value) loading,
    required TResult Function(BannerSuccess<T> value) success,
    required TResult Function(BannerError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BannerLoading<T> value)? loading,
    TResult? Function(BannerSuccess<T> value)? success,
    TResult? Function(BannerError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BannerLoading<T> value)? loading,
    TResult Function(BannerSuccess<T> value)? success,
    TResult Function(BannerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BannerLoading<T> implements BannerState<T> {
  const factory BannerLoading() = _$BannerLoadingImpl<T>;
}

/// @nodoc
abstract class _$$BannerSuccessImplCopyWith<T, $Res> {
  factory _$$BannerSuccessImplCopyWith(_$BannerSuccessImpl<T> value,
          $Res Function(_$BannerSuccessImpl<T>) then) =
      __$$BannerSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<BannerModel> banners});
}

/// @nodoc
class __$$BannerSuccessImplCopyWithImpl<T, $Res>
    extends _$BannerStateCopyWithImpl<T, $Res, _$BannerSuccessImpl<T>>
    implements _$$BannerSuccessImplCopyWith<T, $Res> {
  __$$BannerSuccessImplCopyWithImpl(_$BannerSuccessImpl<T> _value,
      $Res Function(_$BannerSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
  }) {
    return _then(_$BannerSuccessImpl<T>(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
    ));
  }
}

/// @nodoc

class _$BannerSuccessImpl<T> implements BannerSuccess<T> {
  const _$BannerSuccessImpl({required final List<BannerModel> banners})
      : _banners = banners;

  final List<BannerModel> _banners;
  @override
  List<BannerModel> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  String toString() {
    return 'BannerState<$T>.success(banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerSuccessImplCopyWith<T, _$BannerSuccessImpl<T>> get copyWith =>
      __$$BannerSuccessImplCopyWithImpl<T, _$BannerSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BannerModel> banners) success,
    required TResult Function(String error) error,
  }) {
    return success(banners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(banners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(banners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BannerLoading<T> value) loading,
    required TResult Function(BannerSuccess<T> value) success,
    required TResult Function(BannerError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BannerLoading<T> value)? loading,
    TResult? Function(BannerSuccess<T> value)? success,
    TResult? Function(BannerError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BannerLoading<T> value)? loading,
    TResult Function(BannerSuccess<T> value)? success,
    TResult Function(BannerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BannerSuccess<T> implements BannerState<T> {
  const factory BannerSuccess({required final List<BannerModel> banners}) =
      _$BannerSuccessImpl<T>;

  List<BannerModel> get banners;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerSuccessImplCopyWith<T, _$BannerSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BannerErrorImplCopyWith<T, $Res> {
  factory _$$BannerErrorImplCopyWith(_$BannerErrorImpl<T> value,
          $Res Function(_$BannerErrorImpl<T>) then) =
      __$$BannerErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$BannerErrorImplCopyWithImpl<T, $Res>
    extends _$BannerStateCopyWithImpl<T, $Res, _$BannerErrorImpl<T>>
    implements _$$BannerErrorImplCopyWith<T, $Res> {
  __$$BannerErrorImplCopyWithImpl(
      _$BannerErrorImpl<T> _value, $Res Function(_$BannerErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$BannerErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BannerErrorImpl<T> implements BannerError<T> {
  const _$BannerErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'BannerState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerErrorImplCopyWith<T, _$BannerErrorImpl<T>> get copyWith =>
      __$$BannerErrorImplCopyWithImpl<T, _$BannerErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BannerModel> banners) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BannerModel> banners)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BannerModel> banners)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(BannerLoading<T> value) loading,
    required TResult Function(BannerSuccess<T> value) success,
    required TResult Function(BannerError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(BannerLoading<T> value)? loading,
    TResult? Function(BannerSuccess<T> value)? success,
    TResult? Function(BannerError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(BannerLoading<T> value)? loading,
    TResult Function(BannerSuccess<T> value)? success,
    TResult Function(BannerError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BannerError<T> implements BannerState<T> {
  const factory BannerError({required final String error}) =
      _$BannerErrorImpl<T>;

  String get error;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerErrorImplCopyWith<T, _$BannerErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
