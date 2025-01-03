// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_connection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InternetConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notConnected,
    required TResult Function() connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notConnected,
    TResult? Function()? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notConnected,
    TResult Function()? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialConnection value) initial,
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(Connected value) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialConnection value)? initial,
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(Connected value)? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialConnection value)? initial,
    TResult Function(NotConnected value)? notConnected,
    TResult Function(Connected value)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionStateCopyWith<$Res> {
  factory $InternetConnectionStateCopyWith(InternetConnectionState value,
          $Res Function(InternetConnectionState) then) =
      _$InternetConnectionStateCopyWithImpl<$Res, InternetConnectionState>;
}

/// @nodoc
class _$InternetConnectionStateCopyWithImpl<$Res,
        $Val extends InternetConnectionState>
    implements $InternetConnectionStateCopyWith<$Res> {
  _$InternetConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternetConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialConnectionImplCopyWith<$Res> {
  factory _$$InitialConnectionImplCopyWith(_$InitialConnectionImpl value,
          $Res Function(_$InitialConnectionImpl) then) =
      __$$InitialConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialConnectionImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$InitialConnectionImpl>
    implements _$$InitialConnectionImplCopyWith<$Res> {
  __$$InitialConnectionImplCopyWithImpl(_$InitialConnectionImpl _value,
      $Res Function(_$InitialConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialConnectionImpl implements InitialConnection {
  const _$InitialConnectionImpl();

  @override
  String toString() {
    return 'InternetConnectionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notConnected,
    required TResult Function() connected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notConnected,
    TResult? Function()? connected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notConnected,
    TResult Function()? connected,
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
    required TResult Function(InitialConnection value) initial,
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(Connected value) connected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialConnection value)? initial,
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(Connected value)? connected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialConnection value)? initial,
    TResult Function(NotConnected value)? notConnected,
    TResult Function(Connected value)? connected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialConnection implements InternetConnectionState {
  const factory InitialConnection() = _$InitialConnectionImpl;
}

/// @nodoc
abstract class _$$NotConnectedImplCopyWith<$Res> {
  factory _$$NotConnectedImplCopyWith(
          _$NotConnectedImpl value, $Res Function(_$NotConnectedImpl) then) =
      __$$NotConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectedImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$NotConnectedImpl>
    implements _$$NotConnectedImplCopyWith<$Res> {
  __$$NotConnectedImplCopyWithImpl(
      _$NotConnectedImpl _value, $Res Function(_$NotConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotConnectedImpl implements NotConnected {
  const _$NotConnectedImpl();

  @override
  String toString() {
    return 'InternetConnectionState.notConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notConnected,
    required TResult Function() connected,
  }) {
    return notConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notConnected,
    TResult? Function()? connected,
  }) {
    return notConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notConnected,
    TResult Function()? connected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialConnection value) initial,
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(Connected value) connected,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialConnection value)? initial,
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(Connected value)? connected,
  }) {
    return notConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialConnection value)? initial,
    TResult Function(NotConnected value)? notConnected,
    TResult Function(Connected value)? connected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class NotConnected implements InternetConnectionState {
  const factory NotConnected() = _$NotConnectedImpl;
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternetConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectedImpl implements Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'InternetConnectionState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notConnected,
    required TResult Function() connected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notConnected,
    TResult? Function()? connected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notConnected,
    TResult Function()? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialConnection value) initial,
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(Connected value) connected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialConnection value)? initial,
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(Connected value)? connected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialConnection value)? initial,
    TResult Function(NotConnected value)? notConnected,
    TResult Function(Connected value)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements InternetConnectionState {
  const factory Connected() = _$ConnectedImpl;
}
