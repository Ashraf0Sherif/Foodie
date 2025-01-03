// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
    required TResult Function() noResults,
    required TResult Function() noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
    TResult? Function()? noResults,
    TResult? Function()? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
    TResult Function(String error)? error,
    TResult Function()? noResults,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchNoResults value) noResults,
    required TResult Function(SearchNoInternet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchNoResults value)? noResults,
    TResult? Function(SearchNoInternet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchError value)? error,
    TResult Function(SearchNoResults value)? noResults,
    TResult Function(SearchNoInternet value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
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
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
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
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
    required TResult Function() noResults,
    required TResult Function() noInternet,
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
    TResult? Function()? noResults,
    TResult? Function()? noInternet,
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
    TResult Function()? noResults,
    TResult Function()? noInternet,
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
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchNoResults value) noResults,
    required TResult Function(SearchNoInternet value) noInternet,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchNoResults value)? noResults,
    TResult? Function(SearchNoInternet value)? noInternet,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchError value)? error,
    TResult Function(SearchNoResults value)? noResults,
    TResult Function(SearchNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FoodItem> foodItems});
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItems = null,
  }) {
    return _then(_$SearchLoadingImpl(
      foodItems: null == foodItems
          ? _value._foodItems
          : foodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
    ));
  }
}

/// @nodoc

class _$SearchLoadingImpl implements SearchLoading {
  const _$SearchLoadingImpl({required final List<FoodItem> foodItems})
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
    return 'SearchState.loading(foodItems: $foodItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._foodItems, _foodItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foodItems));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadingImplCopyWith<_$SearchLoadingImpl> get copyWith =>
      __$$SearchLoadingImplCopyWithImpl<_$SearchLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
    required TResult Function() noResults,
    required TResult Function() noInternet,
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
    TResult? Function()? noResults,
    TResult? Function()? noInternet,
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
    TResult Function()? noResults,
    TResult Function()? noInternet,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchNoResults value) noResults,
    required TResult Function(SearchNoInternet value) noInternet,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchNoResults value)? noResults,
    TResult? Function(SearchNoInternet value)? noInternet,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchError value)? error,
    TResult Function(SearchNoResults value)? noResults,
    TResult Function(SearchNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading({required final List<FoodItem> foodItems}) =
      _$SearchLoadingImpl;

  List<FoodItem> get foodItems;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLoadingImplCopyWith<_$SearchLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<$Res> {
  factory _$$SearchSuccessImplCopyWith(
          _$SearchSuccessImpl value, $Res Function(_$SearchSuccessImpl) then) =
      __$$SearchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FoodItem> foodItems});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccessImpl>
    implements _$$SearchSuccessImplCopyWith<$Res> {
  __$$SearchSuccessImplCopyWithImpl(
      _$SearchSuccessImpl _value, $Res Function(_$SearchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItems = null,
  }) {
    return _then(_$SearchSuccessImpl(
      foodItems: null == foodItems
          ? _value._foodItems
          : foodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl implements SearchSuccess {
  const _$SearchSuccessImpl({required final List<FoodItem> foodItems})
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
    return 'SearchState.success(foodItems: $foodItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._foodItems, _foodItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foodItems));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<_$SearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
    required TResult Function() noResults,
    required TResult Function() noInternet,
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
    TResult? Function()? noResults,
    TResult? Function()? noInternet,
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
    TResult Function()? noResults,
    TResult Function()? noInternet,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchNoResults value) noResults,
    required TResult Function(SearchNoInternet value) noInternet,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchNoResults value)? noResults,
    TResult? Function(SearchNoInternet value)? noInternet,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchError value)? error,
    TResult Function(SearchNoResults value)? noResults,
    TResult Function(SearchNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess implements SearchState {
  const factory SearchSuccess({required final List<FoodItem> foodItems}) =
      _$SearchSuccessImpl;

  List<FoodItem> get foodItems;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<$Res> {
  factory _$$SearchErrorImplCopyWith(
          _$SearchErrorImpl value, $Res Function(_$SearchErrorImpl) then) =
      __$$SearchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchErrorImpl>
    implements _$$SearchErrorImplCopyWith<$Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl _value, $Res Function(_$SearchErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl implements SearchError {
  const _$SearchErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<_$SearchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<FoodItem> foodItems) loading,
    required TResult Function(List<FoodItem> foodItems) success,
    required TResult Function(String error) error,
    required TResult Function() noResults,
    required TResult Function() noInternet,
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
    TResult? Function()? noResults,
    TResult? Function()? noInternet,
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
    TResult Function()? noResults,
    TResult Function()? noInternet,
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
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchNoResults value) noResults,
    required TResult Function(SearchNoInternet value) noInternet,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchNoResults value)? noResults,
    TResult? Function(SearchNoInternet value)? noInternet,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchError value)? error,
    TResult Function(SearchNoResults value)? noResults,
    TResult Function(SearchNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchError implements SearchState {
  const factory SearchError({required final String error}) = _$SearchErrorImpl;

  String get error;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchNoResultsImplCopyWith<$Res> {
  factory _$$SearchNoResultsImplCopyWith(_$SearchNoResultsImpl value,
          $Res Function(_$SearchNoResultsImpl) then) =
      __$$SearchNoResultsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchNoResultsImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchNoResultsImpl>
    implements _$$SearchNoResultsImplCopyWith<$Res> {
  __$$SearchNoResultsImplCopyWithImpl(
      _$SearchNoResultsImpl _value, $Res Function(_$SearchNoResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchNoResultsImpl implements SearchNoResults {
  const _$SearchNoResultsImpl();

  @override
  String toString() {
    return 'SearchState.noResults()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchNoResultsImpl);
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
    required TResult Function() noResults,
    required TResult Function() noInternet,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
    TResult? Function()? noResults,
    TResult? Function()? noInternet,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
    TResult Function(String error)? error,
    TResult Function()? noResults,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchNoResults value) noResults,
    required TResult Function(SearchNoInternet value) noInternet,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchNoResults value)? noResults,
    TResult? Function(SearchNoInternet value)? noInternet,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchError value)? error,
    TResult Function(SearchNoResults value)? noResults,
    TResult Function(SearchNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }
}

abstract class SearchNoResults implements SearchState {
  const factory SearchNoResults() = _$SearchNoResultsImpl;
}

/// @nodoc
abstract class _$$SearchNoInternetImplCopyWith<$Res> {
  factory _$$SearchNoInternetImplCopyWith(_$SearchNoInternetImpl value,
          $Res Function(_$SearchNoInternetImpl) then) =
      __$$SearchNoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchNoInternetImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchNoInternetImpl>
    implements _$$SearchNoInternetImplCopyWith<$Res> {
  __$$SearchNoInternetImplCopyWithImpl(_$SearchNoInternetImpl _value,
      $Res Function(_$SearchNoInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchNoInternetImpl implements SearchNoInternet {
  const _$SearchNoInternetImpl();

  @override
  String toString() {
    return 'SearchState.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchNoInternetImpl);
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
    required TResult Function() noResults,
    required TResult Function() noInternet,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<FoodItem> foodItems)? loading,
    TResult? Function(List<FoodItem> foodItems)? success,
    TResult? Function(String error)? error,
    TResult? Function()? noResults,
    TResult? Function()? noInternet,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<FoodItem> foodItems)? loading,
    TResult Function(List<FoodItem> foodItems)? success,
    TResult Function(String error)? error,
    TResult Function()? noResults,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchSuccess value) success,
    required TResult Function(SearchError value) error,
    required TResult Function(SearchNoResults value) noResults,
    required TResult Function(SearchNoInternet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchSuccess value)? success,
    TResult? Function(SearchError value)? error,
    TResult? Function(SearchNoResults value)? noResults,
    TResult? Function(SearchNoInternet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchSuccess value)? success,
    TResult Function(SearchError value)? error,
    TResult Function(SearchNoResults value)? noResults,
    TResult Function(SearchNoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class SearchNoInternet implements SearchState {
  const factory SearchNoInternet() = _$SearchNoInternetImpl;
}
