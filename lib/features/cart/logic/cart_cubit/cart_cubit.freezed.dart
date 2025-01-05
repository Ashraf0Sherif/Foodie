// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItem> cartItems) notEmptyCart,
    required TResult Function() emptyCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult? Function()? emptyCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult Function()? emptyCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartNotEmpty value) notEmptyCart,
    required TResult Function(CartEmpty value) emptyCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartNotEmpty value)? notEmptyCart,
    TResult? Function(CartEmpty value)? emptyCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartNotEmpty value)? notEmptyCart,
    TResult Function(CartEmpty value)? emptyCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
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
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
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
    required TResult Function(List<FoodItem> cartItems) notEmptyCart,
    required TResult Function() emptyCart,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult? Function()? emptyCart,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult Function()? emptyCart,
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
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartNotEmpty value) notEmptyCart,
    required TResult Function(CartEmpty value) emptyCart,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartNotEmpty value)? notEmptyCart,
    TResult? Function(CartEmpty value)? emptyCart,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartNotEmpty value)? notEmptyCart,
    TResult Function(CartEmpty value)? emptyCart,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CartLoadingImplCopyWith<$Res> {
  factory _$$CartLoadingImplCopyWith(
          _$CartLoadingImpl value, $Res Function(_$CartLoadingImpl) then) =
      __$$CartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingImpl>
    implements _$$CartLoadingImplCopyWith<$Res> {
  __$$CartLoadingImplCopyWithImpl(
      _$CartLoadingImpl _value, $Res Function(_$CartLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartLoadingImpl implements CartLoading {
  const _$CartLoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItem> cartItems) notEmptyCart,
    required TResult Function() emptyCart,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult? Function()? emptyCart,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult Function()? emptyCart,
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
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartNotEmpty value) notEmptyCart,
    required TResult Function(CartEmpty value) emptyCart,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartNotEmpty value)? notEmptyCart,
    TResult? Function(CartEmpty value)? emptyCart,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartNotEmpty value)? notEmptyCart,
    TResult Function(CartEmpty value)? emptyCart,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartLoading implements CartState {
  const factory CartLoading() = _$CartLoadingImpl;
}

/// @nodoc
abstract class _$$CartNotEmptyImplCopyWith<$Res> {
  factory _$$CartNotEmptyImplCopyWith(
          _$CartNotEmptyImpl value, $Res Function(_$CartNotEmptyImpl) then) =
      __$$CartNotEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FoodItem> cartItems});
}

/// @nodoc
class __$$CartNotEmptyImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartNotEmptyImpl>
    implements _$$CartNotEmptyImplCopyWith<$Res> {
  __$$CartNotEmptyImplCopyWithImpl(
      _$CartNotEmptyImpl _value, $Res Function(_$CartNotEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartNotEmptyImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>,
    ));
  }
}

/// @nodoc

class _$CartNotEmptyImpl implements CartNotEmpty {
  const _$CartNotEmptyImpl({required final List<FoodItem> cartItems})
      : _cartItems = cartItems;

  final List<FoodItem> _cartItems;
  @override
  List<FoodItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.notEmptyCart(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartNotEmptyImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartNotEmptyImplCopyWith<_$CartNotEmptyImpl> get copyWith =>
      __$$CartNotEmptyImplCopyWithImpl<_$CartNotEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItem> cartItems) notEmptyCart,
    required TResult Function() emptyCart,
  }) {
    return notEmptyCart(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult? Function()? emptyCart,
  }) {
    return notEmptyCart?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult Function()? emptyCart,
    required TResult orElse(),
  }) {
    if (notEmptyCart != null) {
      return notEmptyCart(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartNotEmpty value) notEmptyCart,
    required TResult Function(CartEmpty value) emptyCart,
  }) {
    return notEmptyCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartNotEmpty value)? notEmptyCart,
    TResult? Function(CartEmpty value)? emptyCart,
  }) {
    return notEmptyCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartNotEmpty value)? notEmptyCart,
    TResult Function(CartEmpty value)? emptyCart,
    required TResult orElse(),
  }) {
    if (notEmptyCart != null) {
      return notEmptyCart(this);
    }
    return orElse();
  }
}

abstract class CartNotEmpty implements CartState {
  const factory CartNotEmpty({required final List<FoodItem> cartItems}) =
      _$CartNotEmptyImpl;

  List<FoodItem> get cartItems;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartNotEmptyImplCopyWith<_$CartNotEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartEmptyImplCopyWith<$Res> {
  factory _$$CartEmptyImplCopyWith(
          _$CartEmptyImpl value, $Res Function(_$CartEmptyImpl) then) =
      __$$CartEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartEmptyImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartEmptyImpl>
    implements _$$CartEmptyImplCopyWith<$Res> {
  __$$CartEmptyImplCopyWithImpl(
      _$CartEmptyImpl _value, $Res Function(_$CartEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CartEmptyImpl implements CartEmpty {
  const _$CartEmptyImpl();

  @override
  String toString() {
    return 'CartState.emptyCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<FoodItem> cartItems) notEmptyCart,
    required TResult Function() emptyCart,
  }) {
    return emptyCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult? Function()? emptyCart,
  }) {
    return emptyCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<FoodItem> cartItems)? notEmptyCart,
    TResult Function()? emptyCart,
    required TResult orElse(),
  }) {
    if (emptyCart != null) {
      return emptyCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(CartNotEmpty value) notEmptyCart,
    required TResult Function(CartEmpty value) emptyCart,
  }) {
    return emptyCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(CartNotEmpty value)? notEmptyCart,
    TResult? Function(CartEmpty value)? emptyCart,
  }) {
    return emptyCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(CartNotEmpty value)? notEmptyCart,
    TResult Function(CartEmpty value)? emptyCart,
    required TResult orElse(),
  }) {
    if (emptyCart != null) {
      return emptyCart(this);
    }
    return orElse();
  }
}

abstract class CartEmpty implements CartState {
  const factory CartEmpty() = _$CartEmptyImpl;
}
