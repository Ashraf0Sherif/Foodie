// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReceiptState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Receipt> receipts) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Receipt> receipts)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Receipt> receipts)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ReceiptLoading value) loading,
    required TResult Function(ReceiptError value) error,
    required TResult Function(ReceiptSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReceiptLoading value)? loading,
    TResult? Function(ReceiptError value)? error,
    TResult? Function(ReceiptSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReceiptLoading value)? loading,
    TResult Function(ReceiptError value)? error,
    TResult Function(ReceiptSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptStateCopyWith<$Res> {
  factory $ReceiptStateCopyWith(
          ReceiptState value, $Res Function(ReceiptState) then) =
      _$ReceiptStateCopyWithImpl<$Res, ReceiptState>;
}

/// @nodoc
class _$ReceiptStateCopyWithImpl<$Res, $Val extends ReceiptState>
    implements $ReceiptStateCopyWith<$Res> {
  _$ReceiptStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ReceiptStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReceiptState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Receipt> receipts) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Receipt> receipts)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Receipt> receipts)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(ReceiptLoading value) loading,
    required TResult Function(ReceiptError value) error,
    required TResult Function(ReceiptSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReceiptLoading value)? loading,
    TResult? Function(ReceiptError value)? error,
    TResult? Function(ReceiptSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReceiptLoading value)? loading,
    TResult Function(ReceiptError value)? error,
    TResult Function(ReceiptSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReceiptState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReceiptLoadingImplCopyWith<$Res> {
  factory _$$ReceiptLoadingImplCopyWith(_$ReceiptLoadingImpl value,
          $Res Function(_$ReceiptLoadingImpl) then) =
      __$$ReceiptLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiptLoadingImplCopyWithImpl<$Res>
    extends _$ReceiptStateCopyWithImpl<$Res, _$ReceiptLoadingImpl>
    implements _$$ReceiptLoadingImplCopyWith<$Res> {
  __$$ReceiptLoadingImplCopyWithImpl(
      _$ReceiptLoadingImpl _value, $Res Function(_$ReceiptLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReceiptLoadingImpl implements ReceiptLoading {
  const _$ReceiptLoadingImpl();

  @override
  String toString() {
    return 'ReceiptState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReceiptLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Receipt> receipts) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Receipt> receipts)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Receipt> receipts)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(ReceiptLoading value) loading,
    required TResult Function(ReceiptError value) error,
    required TResult Function(ReceiptSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReceiptLoading value)? loading,
    TResult? Function(ReceiptError value)? error,
    TResult? Function(ReceiptSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReceiptLoading value)? loading,
    TResult Function(ReceiptError value)? error,
    TResult Function(ReceiptSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReceiptLoading implements ReceiptState {
  const factory ReceiptLoading() = _$ReceiptLoadingImpl;
}

/// @nodoc
abstract class _$$ReceiptErrorImplCopyWith<$Res> {
  factory _$$ReceiptErrorImplCopyWith(
          _$ReceiptErrorImpl value, $Res Function(_$ReceiptErrorImpl) then) =
      __$$ReceiptErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ReceiptErrorImplCopyWithImpl<$Res>
    extends _$ReceiptStateCopyWithImpl<$Res, _$ReceiptErrorImpl>
    implements _$$ReceiptErrorImplCopyWith<$Res> {
  __$$ReceiptErrorImplCopyWithImpl(
      _$ReceiptErrorImpl _value, $Res Function(_$ReceiptErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ReceiptErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiptErrorImpl implements ReceiptError {
  const _$ReceiptErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ReceiptState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptErrorImplCopyWith<_$ReceiptErrorImpl> get copyWith =>
      __$$ReceiptErrorImplCopyWithImpl<_$ReceiptErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Receipt> receipts) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Receipt> receipts)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Receipt> receipts)? success,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(ReceiptLoading value) loading,
    required TResult Function(ReceiptError value) error,
    required TResult Function(ReceiptSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReceiptLoading value)? loading,
    TResult? Function(ReceiptError value)? error,
    TResult? Function(ReceiptSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReceiptLoading value)? loading,
    TResult Function(ReceiptError value)? error,
    TResult Function(ReceiptSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReceiptError implements ReceiptState {
  const factory ReceiptError({required final String error}) =
      _$ReceiptErrorImpl;

  String get error;

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptErrorImplCopyWith<_$ReceiptErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiptSuccessImplCopyWith<$Res> {
  factory _$$ReceiptSuccessImplCopyWith(_$ReceiptSuccessImpl value,
          $Res Function(_$ReceiptSuccessImpl) then) =
      __$$ReceiptSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Receipt> receipts});
}

/// @nodoc
class __$$ReceiptSuccessImplCopyWithImpl<$Res>
    extends _$ReceiptStateCopyWithImpl<$Res, _$ReceiptSuccessImpl>
    implements _$$ReceiptSuccessImplCopyWith<$Res> {
  __$$ReceiptSuccessImplCopyWithImpl(
      _$ReceiptSuccessImpl _value, $Res Function(_$ReceiptSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = null,
  }) {
    return _then(_$ReceiptSuccessImpl(
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<Receipt>,
    ));
  }
}

/// @nodoc

class _$ReceiptSuccessImpl implements ReceiptSuccess {
  const _$ReceiptSuccessImpl({required final List<Receipt> receipts})
      : _receipts = receipts;

  final List<Receipt> _receipts;
  @override
  List<Receipt> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  String toString() {
    return 'ReceiptState.success(receipts: $receipts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptSuccessImpl &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_receipts));

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptSuccessImplCopyWith<_$ReceiptSuccessImpl> get copyWith =>
      __$$ReceiptSuccessImplCopyWithImpl<_$ReceiptSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Receipt> receipts) success,
  }) {
    return success(receipts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Receipt> receipts)? success,
  }) {
    return success?.call(receipts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Receipt> receipts)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(receipts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ReceiptLoading value) loading,
    required TResult Function(ReceiptError value) error,
    required TResult Function(ReceiptSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ReceiptLoading value)? loading,
    TResult? Function(ReceiptError value)? error,
    TResult? Function(ReceiptSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ReceiptLoading value)? loading,
    TResult Function(ReceiptError value)? error,
    TResult Function(ReceiptSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ReceiptSuccess implements ReceiptState {
  const factory ReceiptSuccess({required final List<Receipt> receipts}) =
      _$ReceiptSuccessImpl;

  List<Receipt> get receipts;

  /// Create a copy of ReceiptState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptSuccessImplCopyWith<_$ReceiptSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
