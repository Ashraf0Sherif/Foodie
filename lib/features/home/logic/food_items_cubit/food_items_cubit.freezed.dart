// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodItemsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodItemsInitial value) initial,
    required TResult Function(FoodItemsLoading value) loading,
    required TResult Function(FoodItemsSuccess value) success,
    required TResult Function(FoodItemsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodItemsInitial value)? initial,
    TResult? Function(FoodItemsLoading value)? loading,
    TResult? Function(FoodItemsSuccess value)? success,
    TResult? Function(FoodItemsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodItemsInitial value)? initial,
    TResult Function(FoodItemsLoading value)? loading,
    TResult Function(FoodItemsSuccess value)? success,
    TResult Function(FoodItemsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodItemsStateCopyWith<$Res> {
  factory $FoodItemsStateCopyWith(
          FoodItemsState value, $Res Function(FoodItemsState) then) =
      _$FoodItemsStateCopyWithImpl<$Res, FoodItemsState>;
}

/// @nodoc
class _$FoodItemsStateCopyWithImpl<$Res, $Val extends FoodItemsState>
    implements $FoodItemsStateCopyWith<$Res> {
  _$FoodItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FoodItemsInitialImplCopyWith<$Res> {
  factory _$$FoodItemsInitialImplCopyWith(_$FoodItemsInitialImpl value,
          $Res Function(_$FoodItemsInitialImpl) then) =
      __$$FoodItemsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodItemsInitialImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsInitialImpl>
    implements _$$FoodItemsInitialImplCopyWith<$Res> {
  __$$FoodItemsInitialImplCopyWithImpl(_$FoodItemsInitialImpl _value,
      $Res Function(_$FoodItemsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FoodItemsInitialImpl implements _FoodItemsInitial {
  const _$FoodItemsInitialImpl();

  @override
  String toString() {
    return 'FoodItemsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FoodItemsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
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
    required TResult Function(_FoodItemsInitial value) initial,
    required TResult Function(FoodItemsLoading value) loading,
    required TResult Function(FoodItemsSuccess value) success,
    required TResult Function(FoodItemsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodItemsInitial value)? initial,
    TResult? Function(FoodItemsLoading value)? loading,
    TResult? Function(FoodItemsSuccess value)? success,
    TResult? Function(FoodItemsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodItemsInitial value)? initial,
    TResult Function(FoodItemsLoading value)? loading,
    TResult Function(FoodItemsSuccess value)? success,
    TResult Function(FoodItemsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FoodItemsInitial implements FoodItemsState {
  const factory _FoodItemsInitial() = _$FoodItemsInitialImpl;
}

/// @nodoc
abstract class _$$FoodItemsLoadingImplCopyWith<$Res> {
  factory _$$FoodItemsLoadingImplCopyWith(_$FoodItemsLoadingImpl value,
          $Res Function(_$FoodItemsLoadingImpl) then) =
      __$$FoodItemsLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FoodItem> foodItems});
}

/// @nodoc
class __$$FoodItemsLoadingImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsLoadingImpl>
    implements _$$FoodItemsLoadingImplCopyWith<$Res> {
  __$$FoodItemsLoadingImplCopyWithImpl(_$FoodItemsLoadingImpl _value,
      $Res Function(_$FoodItemsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItems = null,
  }) {
    return _then(_$FoodItemsLoadingImpl(
      foodItems: null == foodItems
          ? _value._foodItems
          : foodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
    ));
  }
}

/// @nodoc

class _$FoodItemsLoadingImpl implements FoodItemsLoading {
  const _$FoodItemsLoadingImpl({required final List<FoodItem> foodItems})
      : _foodItems = foodItems;

  final List<FoodItem> _foodItems;
  @override
  List<FoodItem> get foodItems {
    if (_foodItems is EqualUnmodifiableListView) return _foodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodItems);
  }

  @override
  String toString() {
    return 'FoodItemsState.loading(foodItems: $foodItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemsLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._foodItems, _foodItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foodItems));

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemsLoadingImplCopyWith<_$FoodItemsLoadingImpl> get copyWith =>
      __$$FoodItemsLoadingImplCopyWithImpl<_$FoodItemsLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
  }) {
    return loading(foodItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call(foodItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(foodItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodItemsInitial value) initial,
    required TResult Function(FoodItemsLoading value) loading,
    required TResult Function(FoodItemsSuccess value) success,
    required TResult Function(FoodItemsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodItemsInitial value)? initial,
    TResult? Function(FoodItemsLoading value)? loading,
    TResult? Function(FoodItemsSuccess value)? success,
    TResult? Function(FoodItemsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodItemsInitial value)? initial,
    TResult Function(FoodItemsLoading value)? loading,
    TResult Function(FoodItemsSuccess value)? success,
    TResult Function(FoodItemsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FoodItemsLoading implements FoodItemsState {
  const factory FoodItemsLoading({required final List<FoodItem> foodItems}) =
      _$FoodItemsLoadingImpl;

  List<FoodItem> get foodItems;

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodItemsLoadingImplCopyWith<_$FoodItemsLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoodItemsSuccessImplCopyWith<$Res> {
  factory _$$FoodItemsSuccessImplCopyWith(_$FoodItemsSuccessImpl value,
          $Res Function(_$FoodItemsSuccessImpl) then) =
      __$$FoodItemsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FoodItem> foodItems});
}

/// @nodoc
class __$$FoodItemsSuccessImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsSuccessImpl>
    implements _$$FoodItemsSuccessImplCopyWith<$Res> {
  __$$FoodItemsSuccessImplCopyWithImpl(_$FoodItemsSuccessImpl _value,
      $Res Function(_$FoodItemsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItems = null,
  }) {
    return _then(_$FoodItemsSuccessImpl(
      foodItems: null == foodItems
          ? _value._foodItems
          : foodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
    ));
  }
}

/// @nodoc

class _$FoodItemsSuccessImpl implements FoodItemsSuccess {
  const _$FoodItemsSuccessImpl({required final List<FoodItem> foodItems})
      : _foodItems = foodItems;

  final List<FoodItem> _foodItems;
  @override
  List<FoodItem> get foodItems {
    if (_foodItems is EqualUnmodifiableListView) return _foodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodItems);
  }

  @override
  String toString() {
    return 'FoodItemsState.success(foodItems: $foodItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._foodItems, _foodItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foodItems));

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemsSuccessImplCopyWith<_$FoodItemsSuccessImpl> get copyWith =>
      __$$FoodItemsSuccessImplCopyWithImpl<_$FoodItemsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
  }) {
    return success(foodItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(foodItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(foodItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodItemsInitial value) initial,
    required TResult Function(FoodItemsLoading value) loading,
    required TResult Function(FoodItemsSuccess value) success,
    required TResult Function(FoodItemsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodItemsInitial value)? initial,
    TResult? Function(FoodItemsLoading value)? loading,
    TResult? Function(FoodItemsSuccess value)? success,
    TResult? Function(FoodItemsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodItemsInitial value)? initial,
    TResult Function(FoodItemsLoading value)? loading,
    TResult Function(FoodItemsSuccess value)? success,
    TResult Function(FoodItemsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FoodItemsSuccess implements FoodItemsState {
  const factory FoodItemsSuccess({required final List<FoodItem> foodItems}) =
      _$FoodItemsSuccessImpl;

  List<FoodItem> get foodItems;

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodItemsSuccessImplCopyWith<_$FoodItemsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoodItemsErrorImplCopyWith<$Res> {
  factory _$$FoodItemsErrorImplCopyWith(_$FoodItemsErrorImpl value,
          $Res Function(_$FoodItemsErrorImpl) then) =
      __$$FoodItemsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FoodItemsErrorImplCopyWithImpl<$Res>
    extends _$FoodItemsStateCopyWithImpl<$Res, _$FoodItemsErrorImpl>
    implements _$$FoodItemsErrorImplCopyWith<$Res> {
  __$$FoodItemsErrorImplCopyWithImpl(
      _$FoodItemsErrorImpl _value, $Res Function(_$FoodItemsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FoodItemsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FoodItemsErrorImpl implements FoodItemsError {
  const _$FoodItemsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FoodItemsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemsErrorImplCopyWith<_$FoodItemsErrorImpl> get copyWith =>
      __$$FoodItemsErrorImplCopyWithImpl<_$FoodItemsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
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
    required TResult Function(_FoodItemsInitial value) initial,
    required TResult Function(FoodItemsLoading value) loading,
    required TResult Function(FoodItemsSuccess value) success,
    required TResult Function(FoodItemsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodItemsInitial value)? initial,
    TResult? Function(FoodItemsLoading value)? loading,
    TResult? Function(FoodItemsSuccess value)? success,
    TResult? Function(FoodItemsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodItemsInitial value)? initial,
    TResult Function(FoodItemsLoading value)? loading,
    TResult Function(FoodItemsSuccess value)? success,
    TResult Function(FoodItemsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FoodItemsError implements FoodItemsState {
  const factory FoodItemsError({required final String error}) =
      _$FoodItemsErrorImpl;

  String get error;

  /// Create a copy of FoodItemsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodItemsErrorImplCopyWith<_$FoodItemsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
