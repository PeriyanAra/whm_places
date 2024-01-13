// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnectivity,
    required TResult Function() changeStateToConnected,
    required TResult Function() changeStateToUnconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkConnectivity,
    TResult? Function()? changeStateToConnected,
    TResult? Function()? changeStateToUnconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnectivity,
    TResult Function()? changeStateToConnected,
    TResult Function()? changeStateToUnconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityCheckEvent value) checkConnectivity,
    required TResult Function(ChangeStateToConnectedEvent value)
        changeStateToConnected,
    required TResult Function(ChangeStateToUnconnectedEvent value)
        changeStateToUnconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult? Function(ChangeStateToConnectedEvent value)?
        changeStateToConnected,
    TResult? Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult Function(ChangeStateToConnectedEvent value)? changeStateToConnected,
    TResult Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res, ConnectivityEvent>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res, $Val extends ConnectivityEvent>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectivityCheckEventCopyWith<$Res> {
  factory _$$ConnectivityCheckEventCopyWith(_$ConnectivityCheckEvent value,
          $Res Function(_$ConnectivityCheckEvent) then) =
      __$$ConnectivityCheckEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityCheckEventCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$ConnectivityCheckEvent>
    implements _$$ConnectivityCheckEventCopyWith<$Res> {
  __$$ConnectivityCheckEventCopyWithImpl(_$ConnectivityCheckEvent _value,
      $Res Function(_$ConnectivityCheckEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectivityCheckEvent implements ConnectivityCheckEvent {
  const _$ConnectivityCheckEvent();

  @override
  String toString() {
    return 'ConnectivityEvent.checkConnectivity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectivityCheckEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnectivity,
    required TResult Function() changeStateToConnected,
    required TResult Function() changeStateToUnconnected,
  }) {
    return checkConnectivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkConnectivity,
    TResult? Function()? changeStateToConnected,
    TResult? Function()? changeStateToUnconnected,
  }) {
    return checkConnectivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnectivity,
    TResult Function()? changeStateToConnected,
    TResult Function()? changeStateToUnconnected,
    required TResult orElse(),
  }) {
    if (checkConnectivity != null) {
      return checkConnectivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityCheckEvent value) checkConnectivity,
    required TResult Function(ChangeStateToConnectedEvent value)
        changeStateToConnected,
    required TResult Function(ChangeStateToUnconnectedEvent value)
        changeStateToUnconnected,
  }) {
    return checkConnectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult? Function(ChangeStateToConnectedEvent value)?
        changeStateToConnected,
    TResult? Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
  }) {
    return checkConnectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult Function(ChangeStateToConnectedEvent value)? changeStateToConnected,
    TResult Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
    required TResult orElse(),
  }) {
    if (checkConnectivity != null) {
      return checkConnectivity(this);
    }
    return orElse();
  }
}

abstract class ConnectivityCheckEvent implements ConnectivityEvent {
  const factory ConnectivityCheckEvent() = _$ConnectivityCheckEvent;
}

/// @nodoc
abstract class _$$ChangeStateToConnectedEventCopyWith<$Res> {
  factory _$$ChangeStateToConnectedEventCopyWith(
          _$ChangeStateToConnectedEvent value,
          $Res Function(_$ChangeStateToConnectedEvent) then) =
      __$$ChangeStateToConnectedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeStateToConnectedEventCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$ChangeStateToConnectedEvent>
    implements _$$ChangeStateToConnectedEventCopyWith<$Res> {
  __$$ChangeStateToConnectedEventCopyWithImpl(
      _$ChangeStateToConnectedEvent _value,
      $Res Function(_$ChangeStateToConnectedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeStateToConnectedEvent implements ChangeStateToConnectedEvent {
  const _$ChangeStateToConnectedEvent();

  @override
  String toString() {
    return 'ConnectivityEvent.changeStateToConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStateToConnectedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnectivity,
    required TResult Function() changeStateToConnected,
    required TResult Function() changeStateToUnconnected,
  }) {
    return changeStateToConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkConnectivity,
    TResult? Function()? changeStateToConnected,
    TResult? Function()? changeStateToUnconnected,
  }) {
    return changeStateToConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnectivity,
    TResult Function()? changeStateToConnected,
    TResult Function()? changeStateToUnconnected,
    required TResult orElse(),
  }) {
    if (changeStateToConnected != null) {
      return changeStateToConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityCheckEvent value) checkConnectivity,
    required TResult Function(ChangeStateToConnectedEvent value)
        changeStateToConnected,
    required TResult Function(ChangeStateToUnconnectedEvent value)
        changeStateToUnconnected,
  }) {
    return changeStateToConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult? Function(ChangeStateToConnectedEvent value)?
        changeStateToConnected,
    TResult? Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
  }) {
    return changeStateToConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult Function(ChangeStateToConnectedEvent value)? changeStateToConnected,
    TResult Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
    required TResult orElse(),
  }) {
    if (changeStateToConnected != null) {
      return changeStateToConnected(this);
    }
    return orElse();
  }
}

abstract class ChangeStateToConnectedEvent implements ConnectivityEvent {
  const factory ChangeStateToConnectedEvent() = _$ChangeStateToConnectedEvent;
}

/// @nodoc
abstract class _$$ChangeStateToUnconnectedEventCopyWith<$Res> {
  factory _$$ChangeStateToUnconnectedEventCopyWith(
          _$ChangeStateToUnconnectedEvent value,
          $Res Function(_$ChangeStateToUnconnectedEvent) then) =
      __$$ChangeStateToUnconnectedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeStateToUnconnectedEventCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res,
        _$ChangeStateToUnconnectedEvent>
    implements _$$ChangeStateToUnconnectedEventCopyWith<$Res> {
  __$$ChangeStateToUnconnectedEventCopyWithImpl(
      _$ChangeStateToUnconnectedEvent _value,
      $Res Function(_$ChangeStateToUnconnectedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeStateToUnconnectedEvent implements ChangeStateToUnconnectedEvent {
  const _$ChangeStateToUnconnectedEvent();

  @override
  String toString() {
    return 'ConnectivityEvent.changeStateToUnconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStateToUnconnectedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnectivity,
    required TResult Function() changeStateToConnected,
    required TResult Function() changeStateToUnconnected,
  }) {
    return changeStateToUnconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkConnectivity,
    TResult? Function()? changeStateToConnected,
    TResult? Function()? changeStateToUnconnected,
  }) {
    return changeStateToUnconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnectivity,
    TResult Function()? changeStateToConnected,
    TResult Function()? changeStateToUnconnected,
    required TResult orElse(),
  }) {
    if (changeStateToUnconnected != null) {
      return changeStateToUnconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityCheckEvent value) checkConnectivity,
    required TResult Function(ChangeStateToConnectedEvent value)
        changeStateToConnected,
    required TResult Function(ChangeStateToUnconnectedEvent value)
        changeStateToUnconnected,
  }) {
    return changeStateToUnconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult? Function(ChangeStateToConnectedEvent value)?
        changeStateToConnected,
    TResult? Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
  }) {
    return changeStateToUnconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityCheckEvent value)? checkConnectivity,
    TResult Function(ChangeStateToConnectedEvent value)? changeStateToConnected,
    TResult Function(ChangeStateToUnconnectedEvent value)?
        changeStateToUnconnected,
    required TResult orElse(),
  }) {
    if (changeStateToUnconnected != null) {
      return changeStateToUnconnected(this);
    }
    return orElse();
  }
}

abstract class ChangeStateToUnconnectedEvent implements ConnectivityEvent {
  const factory ChangeStateToUnconnectedEvent() =
      _$ChangeStateToUnconnectedEvent;
}

/// @nodoc
mixin _$ConnectivityState {
  bool get isMessageVisible => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMessageVisible) initial,
    required TResult Function(bool isMessageVisible) connected,
    required TResult Function(bool isMessageVisible) unConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMessageVisible)? initial,
    TResult? Function(bool isMessageVisible)? connected,
    TResult? Function(bool isMessageVisible)? unConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMessageVisible)? initial,
    TResult Function(bool isMessageVisible)? connected,
    TResult Function(bool isMessageVisible)? unConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityInitialState value) initial,
    required TResult Function(ConnectivityConnectedState value) connected,
    required TResult Function(ConnectivityUnconnectedState value) unConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitialState value)? initial,
    TResult? Function(ConnectivityConnectedState value)? connected,
    TResult? Function(ConnectivityUnconnectedState value)? unConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitialState value)? initial,
    TResult Function(ConnectivityConnectedState value)? connected,
    TResult Function(ConnectivityUnconnectedState value)? unConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStateCopyWith<ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
  @useResult
  $Res call({bool isMessageVisible});
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMessageVisible = null,
  }) {
    return _then(_value.copyWith(
      isMessageVisible: null == isMessageVisible
          ? _value.isMessageVisible
          : isMessageVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectivityInitialStateCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$ConnectivityInitialStateCopyWith(_$ConnectivityInitialState value,
          $Res Function(_$ConnectivityInitialState) then) =
      __$$ConnectivityInitialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMessageVisible});
}

/// @nodoc
class __$$ConnectivityInitialStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectivityInitialState>
    implements _$$ConnectivityInitialStateCopyWith<$Res> {
  __$$ConnectivityInitialStateCopyWithImpl(_$ConnectivityInitialState _value,
      $Res Function(_$ConnectivityInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMessageVisible = null,
  }) {
    return _then(_$ConnectivityInitialState(
      isMessageVisible: null == isMessageVisible
          ? _value.isMessageVisible
          : isMessageVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectivityInitialState implements ConnectivityInitialState {
  const _$ConnectivityInitialState({required this.isMessageVisible});

  @override
  final bool isMessageVisible;

  @override
  String toString() {
    return 'ConnectivityState.initial(isMessageVisible: $isMessageVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityInitialState &&
            (identical(other.isMessageVisible, isMessageVisible) ||
                other.isMessageVisible == isMessageVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMessageVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityInitialStateCopyWith<_$ConnectivityInitialState>
      get copyWith =>
          __$$ConnectivityInitialStateCopyWithImpl<_$ConnectivityInitialState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMessageVisible) initial,
    required TResult Function(bool isMessageVisible) connected,
    required TResult Function(bool isMessageVisible) unConnected,
  }) {
    return initial(isMessageVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMessageVisible)? initial,
    TResult? Function(bool isMessageVisible)? connected,
    TResult? Function(bool isMessageVisible)? unConnected,
  }) {
    return initial?.call(isMessageVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMessageVisible)? initial,
    TResult Function(bool isMessageVisible)? connected,
    TResult Function(bool isMessageVisible)? unConnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isMessageVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityInitialState value) initial,
    required TResult Function(ConnectivityConnectedState value) connected,
    required TResult Function(ConnectivityUnconnectedState value) unConnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitialState value)? initial,
    TResult? Function(ConnectivityConnectedState value)? connected,
    TResult? Function(ConnectivityUnconnectedState value)? unConnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitialState value)? initial,
    TResult Function(ConnectivityConnectedState value)? connected,
    TResult Function(ConnectivityUnconnectedState value)? unConnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ConnectivityInitialState implements ConnectivityState {
  const factory ConnectivityInitialState(
      {required final bool isMessageVisible}) = _$ConnectivityInitialState;

  @override
  bool get isMessageVisible;
  @override
  @JsonKey(ignore: true)
  _$$ConnectivityInitialStateCopyWith<_$ConnectivityInitialState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectivityConnectedStateCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$ConnectivityConnectedStateCopyWith(
          _$ConnectivityConnectedState value,
          $Res Function(_$ConnectivityConnectedState) then) =
      __$$ConnectivityConnectedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMessageVisible});
}

/// @nodoc
class __$$ConnectivityConnectedStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectivityConnectedState>
    implements _$$ConnectivityConnectedStateCopyWith<$Res> {
  __$$ConnectivityConnectedStateCopyWithImpl(
      _$ConnectivityConnectedState _value,
      $Res Function(_$ConnectivityConnectedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMessageVisible = null,
  }) {
    return _then(_$ConnectivityConnectedState(
      isMessageVisible: null == isMessageVisible
          ? _value.isMessageVisible
          : isMessageVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectivityConnectedState implements ConnectivityConnectedState {
  const _$ConnectivityConnectedState({required this.isMessageVisible});

  @override
  final bool isMessageVisible;

  @override
  String toString() {
    return 'ConnectivityState.connected(isMessageVisible: $isMessageVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityConnectedState &&
            (identical(other.isMessageVisible, isMessageVisible) ||
                other.isMessageVisible == isMessageVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMessageVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityConnectedStateCopyWith<_$ConnectivityConnectedState>
      get copyWith => __$$ConnectivityConnectedStateCopyWithImpl<
          _$ConnectivityConnectedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMessageVisible) initial,
    required TResult Function(bool isMessageVisible) connected,
    required TResult Function(bool isMessageVisible) unConnected,
  }) {
    return connected(isMessageVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMessageVisible)? initial,
    TResult? Function(bool isMessageVisible)? connected,
    TResult? Function(bool isMessageVisible)? unConnected,
  }) {
    return connected?.call(isMessageVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMessageVisible)? initial,
    TResult Function(bool isMessageVisible)? connected,
    TResult Function(bool isMessageVisible)? unConnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(isMessageVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityInitialState value) initial,
    required TResult Function(ConnectivityConnectedState value) connected,
    required TResult Function(ConnectivityUnconnectedState value) unConnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitialState value)? initial,
    TResult? Function(ConnectivityConnectedState value)? connected,
    TResult? Function(ConnectivityUnconnectedState value)? unConnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitialState value)? initial,
    TResult Function(ConnectivityConnectedState value)? connected,
    TResult Function(ConnectivityUnconnectedState value)? unConnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityConnectedState implements ConnectivityState {
  const factory ConnectivityConnectedState(
      {required final bool isMessageVisible}) = _$ConnectivityConnectedState;

  @override
  bool get isMessageVisible;
  @override
  @JsonKey(ignore: true)
  _$$ConnectivityConnectedStateCopyWith<_$ConnectivityConnectedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectivityUnconnectedStateCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$ConnectivityUnconnectedStateCopyWith(
          _$ConnectivityUnconnectedState value,
          $Res Function(_$ConnectivityUnconnectedState) then) =
      __$$ConnectivityUnconnectedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMessageVisible});
}

/// @nodoc
class __$$ConnectivityUnconnectedStateCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res,
        _$ConnectivityUnconnectedState>
    implements _$$ConnectivityUnconnectedStateCopyWith<$Res> {
  __$$ConnectivityUnconnectedStateCopyWithImpl(
      _$ConnectivityUnconnectedState _value,
      $Res Function(_$ConnectivityUnconnectedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMessageVisible = null,
  }) {
    return _then(_$ConnectivityUnconnectedState(
      isMessageVisible: null == isMessageVisible
          ? _value.isMessageVisible
          : isMessageVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectivityUnconnectedState implements ConnectivityUnconnectedState {
  const _$ConnectivityUnconnectedState({required this.isMessageVisible});

  @override
  final bool isMessageVisible;

  @override
  String toString() {
    return 'ConnectivityState.unConnected(isMessageVisible: $isMessageVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityUnconnectedState &&
            (identical(other.isMessageVisible, isMessageVisible) ||
                other.isMessageVisible == isMessageVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMessageVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityUnconnectedStateCopyWith<_$ConnectivityUnconnectedState>
      get copyWith => __$$ConnectivityUnconnectedStateCopyWithImpl<
          _$ConnectivityUnconnectedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMessageVisible) initial,
    required TResult Function(bool isMessageVisible) connected,
    required TResult Function(bool isMessageVisible) unConnected,
  }) {
    return unConnected(isMessageVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMessageVisible)? initial,
    TResult? Function(bool isMessageVisible)? connected,
    TResult? Function(bool isMessageVisible)? unConnected,
  }) {
    return unConnected?.call(isMessageVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMessageVisible)? initial,
    TResult Function(bool isMessageVisible)? connected,
    TResult Function(bool isMessageVisible)? unConnected,
    required TResult orElse(),
  }) {
    if (unConnected != null) {
      return unConnected(isMessageVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityInitialState value) initial,
    required TResult Function(ConnectivityConnectedState value) connected,
    required TResult Function(ConnectivityUnconnectedState value) unConnected,
  }) {
    return unConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitialState value)? initial,
    TResult? Function(ConnectivityConnectedState value)? connected,
    TResult? Function(ConnectivityUnconnectedState value)? unConnected,
  }) {
    return unConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitialState value)? initial,
    TResult Function(ConnectivityConnectedState value)? connected,
    TResult Function(ConnectivityUnconnectedState value)? unConnected,
    required TResult orElse(),
  }) {
    if (unConnected != null) {
      return unConnected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityUnconnectedState implements ConnectivityState {
  const factory ConnectivityUnconnectedState(
      {required final bool isMessageVisible}) = _$ConnectivityUnconnectedState;

  @override
  bool get isMessageVisible;
  @override
  @JsonKey(ignore: true)
  _$$ConnectivityUnconnectedStateCopyWith<_$ConnectivityUnconnectedState>
      get copyWith => throw _privateConstructorUsedError;
}
