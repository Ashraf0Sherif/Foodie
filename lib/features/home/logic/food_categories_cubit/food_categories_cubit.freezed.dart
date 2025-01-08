// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodCategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodCategory> foodCategories) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodCategory> foodCategories)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodCategory> foodCategories)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoodCategoriesInitial value) initial,
    required TResult Function(FoodCategoriesLoading value) loading,
    required TResult Function(FoodCategoriesSuccess value) success,
    required TResult Function(FoodCategoriesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodCategoriesInitial value)? initial,
    TResult? Function(FoodCategoriesLoading value)? loading,
    TResult? Function(FoodCategoriesSuccess value)? success,
    TResult? Function(FoodCategoriesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodCategoriesInitial value)? initial,
    TResult Function(FoodCategoriesLoading value)? loading,
    TResult Function(FoodCategoriesSuccess value)? success,
    TResult Function(FoodCategoriesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodCategoriesStateCopyWith<$Res> {
  factory $FoodCategoriesStateCopyWith(
          FoodCategoriesState value, $Res Function(FoodCategoriesState) then) =
      _$FoodCategoriesStateCopyWithImpl<$Res, FoodCategoriesState>;
}

/// @nodoc
class _$FoodCategoriesStateCopyWithImpl<$Res, $Val extends FoodCategoriesState>
    implements $FoodCategoriesStateCopyWith<$Res> {
  _$FoodCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FoodCategoriesInitialImplCopyWith<$Res> {
  factory _$$FoodCategoriesInitialImplCopyWith(
          _$FoodCategoriesInitialImpl value,
          $Res Function(_$FoodCategoriesInitialImpl) then) =
      __$$FoodCategoriesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodCategoriesInitialImplCopyWithImpl<$Res>
    extends _$FoodCategoriesStateCopyWithImpl<$Res, _$FoodCategoriesInitialImpl>
    implements _$$FoodCategoriesInitialImplCopyWith<$Res> {
  __$$FoodCategoriesInitialImplCopyWithImpl(_$FoodCategoriesInitialImpl _value,
      $Res Function(_$FoodCategoriesInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FoodCategoriesInitialImpl implements FoodCategoriesInitial {
  const _$FoodCategoriesInitialImpl();

  @override
  String toString() {
    return 'FoodCategoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodCategoriesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodCategory> foodCategories) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodCategory> foodCategories)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodCategory> foodCategories)? success,
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
    required TResult Function(FoodCategoriesInitial value) initial,
    required TResult Function(FoodCategoriesLoading value) loading,
    required TResult Function(FoodCategoriesSuccess value) success,
    required TResult Function(FoodCategoriesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodCategoriesInitial value)? initial,
    TResult? Function(FoodCategoriesLoading value)? loading,
    TResult? Function(FoodCategoriesSuccess value)? success,
    TResult? Function(FoodCategoriesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodCategoriesInitial value)? initial,
    TResult Function(FoodCategoriesLoading value)? loading,
    TResult Function(FoodCategoriesSuccess value)? success,
    TResult Function(FoodCategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FoodCategoriesInitial implements FoodCategoriesState {
  const factory FoodCategoriesInitial() = _$FoodCategoriesInitialImpl;
}

/// @nodoc
abstract class _$$FoodCategoriesLoadingImplCopyWith<$Res> {
  factory _$$FoodCategoriesLoadingImplCopyWith(
          _$FoodCategoriesLoadingImpl value,
          $Res Function(_$FoodCategoriesLoadingImpl) then) =
      __$$FoodCategoriesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodCategoriesLoadingImplCopyWithImpl<$Res>
    extends _$FoodCategoriesStateCopyWithImpl<$Res, _$FoodCategoriesLoadingImpl>
    implements _$$FoodCategoriesLoadingImplCopyWith<$Res> {
  __$$FoodCategoriesLoadingImplCopyWithImpl(_$FoodCategoriesLoadingImpl _value,
      $Res Function(_$FoodCategoriesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FoodCategoriesLoadingImpl implements FoodCategoriesLoading {
  const _$FoodCategoriesLoadingImpl();

  @override
  String toString() {
    return 'FoodCategoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodCategoriesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodCategory> foodCategories) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodCategory> foodCategories)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodCategory> foodCategories)? success,
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
    required TResult Function(FoodCategoriesInitial value) initial,
    required TResult Function(FoodCategoriesLoading value) loading,
    required TResult Function(FoodCategoriesSuccess value) success,
    required TResult Function(FoodCategoriesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodCategoriesInitial value)? initial,
    TResult? Function(FoodCategoriesLoading value)? loading,
    TResult? Function(FoodCategoriesSuccess value)? success,
    TResult? Function(FoodCategoriesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodCategoriesInitial value)? initial,
    TResult Function(FoodCategoriesLoading value)? loading,
    TResult Function(FoodCategoriesSuccess value)? success,
    TResult Function(FoodCategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FoodCategoriesLoading implements FoodCategoriesState {
  const factory FoodCategoriesLoading() = _$FoodCategoriesLoadingImpl;
}

/// @nodoc
abstract class _$$FoodCategoriesSuccessImplCopyWith<$Res> {
  factory _$$FoodCategoriesSuccessImplCopyWith(
          _$FoodCategoriesSuccessImpl value,
          $Res Function(_$FoodCategoriesSuccessImpl) then) =
      __$$FoodCategoriesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FoodCategory> foodCategories});
}

/// @nodoc
class __$$FoodCategoriesSuccessImplCopyWithImpl<$Res>
    extends _$FoodCategoriesStateCopyWithImpl<$Res, _$FoodCategoriesSuccessImpl>
    implements _$$FoodCategoriesSuccessImplCopyWith<$Res> {
  __$$FoodCategoriesSuccessImplCopyWithImpl(_$FoodCategoriesSuccessImpl _value,
      $Res Function(_$FoodCategoriesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodCategories = null,
  }) {
    return _then(_$FoodCategoriesSuccessImpl(
      foodCategories: null == foodCategories
          ? _value._foodCategories
          : foodCategories // ignore: cast_nullable_to_non_nullable
              as List<FoodCategory>,
    ));
  }
}

/// @nodoc

class _$FoodCategoriesSuccessImpl implements FoodCategoriesSuccess {
  const _$FoodCategoriesSuccessImpl(
      {required final List<FoodCategory> foodCategories})
      : _foodCategories = foodCategories;

  final List<FoodCategory> _foodCategories;
  @override
  List<FoodCategory> get foodCategories {
    if (_foodCategories is EqualUnmodifiableListView) return _foodCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodCategories);
  }

  @override
  String toString() {
    return 'FoodCategoriesState.success(foodCategories: $foodCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodCategoriesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._foodCategories, _foodCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_foodCategories));

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodCategoriesSuccessImplCopyWith<_$FoodCategoriesSuccessImpl>
      get copyWith => __$$FoodCategoriesSuccessImplCopyWithImpl<
          _$FoodCategoriesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodCategory> foodCategories) success,
    required TResult Function(String error) error,
  }) {
    return success(foodCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodCategory> foodCategories)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(foodCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodCategory> foodCategories)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(foodCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FoodCategoriesInitial value) initial,
    required TResult Function(FoodCategoriesLoading value) loading,
    required TResult Function(FoodCategoriesSuccess value) success,
    required TResult Function(FoodCategoriesError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodCategoriesInitial value)? initial,
    TResult? Function(FoodCategoriesLoading value)? loading,
    TResult? Function(FoodCategoriesSuccess value)? success,
    TResult? Function(FoodCategoriesError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodCategoriesInitial value)? initial,
    TResult Function(FoodCategoriesLoading value)? loading,
    TResult Function(FoodCategoriesSuccess value)? success,
    TResult Function(FoodCategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FoodCategoriesSuccess implements FoodCategoriesState {
  const factory FoodCategoriesSuccess(
          {required final List<FoodCategory> foodCategories}) =
      _$FoodCategoriesSuccessImpl;

  List<FoodCategory> get foodCategories;

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodCategoriesSuccessImplCopyWith<_$FoodCategoriesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoodCategoriesErrorImplCopyWith<$Res> {
  factory _$$FoodCategoriesErrorImplCopyWith(_$FoodCategoriesErrorImpl value,
          $Res Function(_$FoodCategoriesErrorImpl) then) =
      __$$FoodCategoriesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FoodCategoriesErrorImplCopyWithImpl<$Res>
    extends _$FoodCategoriesStateCopyWithImpl<$Res, _$FoodCategoriesErrorImpl>
    implements _$$FoodCategoriesErrorImplCopyWith<$Res> {
  __$$FoodCategoriesErrorImplCopyWithImpl(_$FoodCategoriesErrorImpl _value,
      $Res Function(_$FoodCategoriesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FoodCategoriesErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FoodCategoriesErrorImpl implements FoodCategoriesError {
  const _$FoodCategoriesErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FoodCategoriesState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodCategoriesErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodCategoriesErrorImplCopyWith<_$FoodCategoriesErrorImpl> get copyWith =>
      __$$FoodCategoriesErrorImplCopyWithImpl<_$FoodCategoriesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodCategory> foodCategories) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodCategory> foodCategories)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodCategory> foodCategories)? success,
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
    required TResult Function(FoodCategoriesInitial value) initial,
    required TResult Function(FoodCategoriesLoading value) loading,
    required TResult Function(FoodCategoriesSuccess value) success,
    required TResult Function(FoodCategoriesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FoodCategoriesInitial value)? initial,
    TResult? Function(FoodCategoriesLoading value)? loading,
    TResult? Function(FoodCategoriesSuccess value)? success,
    TResult? Function(FoodCategoriesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FoodCategoriesInitial value)? initial,
    TResult Function(FoodCategoriesLoading value)? loading,
    TResult Function(FoodCategoriesSuccess value)? success,
    TResult Function(FoodCategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FoodCategoriesError implements FoodCategoriesState {
  const factory FoodCategoriesError({required final String error}) =
      _$FoodCategoriesErrorImpl;

  String get error;

  /// Create a copy of FoodCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodCategoriesErrorImplCopyWith<_$FoodCategoriesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
