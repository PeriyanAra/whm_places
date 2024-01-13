// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(ThemeMode themeMode) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(ThemeMode themeMode)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(ThemeMode themeMode)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsScreenGetDataEvent value) getData,
    required TResult Function(SettingsScreenChangeThemeEvent value) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenGetDataEvent value)? getData,
    TResult? Function(SettingsScreenChangeThemeEvent value)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenGetDataEvent value)? getData,
    TResult Function(SettingsScreenChangeThemeEvent value)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsScreenEventCopyWith<$Res> {
  factory $SettingsScreenEventCopyWith(
          SettingsScreenEvent value, $Res Function(SettingsScreenEvent) then) =
      _$SettingsScreenEventCopyWithImpl<$Res, SettingsScreenEvent>;
}

/// @nodoc
class _$SettingsScreenEventCopyWithImpl<$Res, $Val extends SettingsScreenEvent>
    implements $SettingsScreenEventCopyWith<$Res> {
  _$SettingsScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsScreenGetDataEventCopyWith<$Res> {
  factory _$$SettingsScreenGetDataEventCopyWith(
          _$SettingsScreenGetDataEvent value,
          $Res Function(_$SettingsScreenGetDataEvent) then) =
      __$$SettingsScreenGetDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsScreenGetDataEventCopyWithImpl<$Res>
    extends _$SettingsScreenEventCopyWithImpl<$Res,
        _$SettingsScreenGetDataEvent>
    implements _$$SettingsScreenGetDataEventCopyWith<$Res> {
  __$$SettingsScreenGetDataEventCopyWithImpl(
      _$SettingsScreenGetDataEvent _value,
      $Res Function(_$SettingsScreenGetDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsScreenGetDataEvent implements SettingsScreenGetDataEvent {
  const _$SettingsScreenGetDataEvent();

  @override
  String toString() {
    return 'SettingsScreenEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsScreenGetDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(ThemeMode themeMode) changeTheme,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(ThemeMode themeMode)? changeTheme,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(ThemeMode themeMode)? changeTheme,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsScreenGetDataEvent value) getData,
    required TResult Function(SettingsScreenChangeThemeEvent value) changeTheme,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenGetDataEvent value)? getData,
    TResult? Function(SettingsScreenChangeThemeEvent value)? changeTheme,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenGetDataEvent value)? getData,
    TResult Function(SettingsScreenChangeThemeEvent value)? changeTheme,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class SettingsScreenGetDataEvent implements SettingsScreenEvent {
  const factory SettingsScreenGetDataEvent() = _$SettingsScreenGetDataEvent;
}

/// @nodoc
abstract class _$$SettingsScreenChangeThemeEventCopyWith<$Res> {
  factory _$$SettingsScreenChangeThemeEventCopyWith(
          _$SettingsScreenChangeThemeEvent value,
          $Res Function(_$SettingsScreenChangeThemeEvent) then) =
      __$$SettingsScreenChangeThemeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$SettingsScreenChangeThemeEventCopyWithImpl<$Res>
    extends _$SettingsScreenEventCopyWithImpl<$Res,
        _$SettingsScreenChangeThemeEvent>
    implements _$$SettingsScreenChangeThemeEventCopyWith<$Res> {
  __$$SettingsScreenChangeThemeEventCopyWithImpl(
      _$SettingsScreenChangeThemeEvent _value,
      $Res Function(_$SettingsScreenChangeThemeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$SettingsScreenChangeThemeEvent(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SettingsScreenChangeThemeEvent
    implements SettingsScreenChangeThemeEvent {
  const _$SettingsScreenChangeThemeEvent({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsScreenEvent.changeTheme(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsScreenChangeThemeEvent &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsScreenChangeThemeEventCopyWith<_$SettingsScreenChangeThemeEvent>
      get copyWith => __$$SettingsScreenChangeThemeEventCopyWithImpl<
          _$SettingsScreenChangeThemeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(ThemeMode themeMode) changeTheme,
  }) {
    return changeTheme(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(ThemeMode themeMode)? changeTheme,
  }) {
    return changeTheme?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(ThemeMode themeMode)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsScreenGetDataEvent value) getData,
    required TResult Function(SettingsScreenChangeThemeEvent value) changeTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenGetDataEvent value)? getData,
    TResult? Function(SettingsScreenChangeThemeEvent value)? changeTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenGetDataEvent value)? getData,
    TResult Function(SettingsScreenChangeThemeEvent value)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class SettingsScreenChangeThemeEvent implements SettingsScreenEvent {
  const factory SettingsScreenChangeThemeEvent(
      {required final ThemeMode themeMode}) = _$SettingsScreenChangeThemeEvent;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$SettingsScreenChangeThemeEventCopyWith<_$SettingsScreenChangeThemeEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingsScreenViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingsScreenViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingsScreenViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsScreenLoadingState value) loading,
    required TResult Function(SettingsScreenLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenLoadingState value)? loading,
    TResult? Function(SettingsScreenLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenLoadingState value)? loading,
    TResult Function(SettingsScreenLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsScreenStateCopyWith<$Res> {
  factory $SettingsScreenStateCopyWith(
          SettingsScreenState value, $Res Function(SettingsScreenState) then) =
      _$SettingsScreenStateCopyWithImpl<$Res, SettingsScreenState>;
}

/// @nodoc
class _$SettingsScreenStateCopyWithImpl<$Res, $Val extends SettingsScreenState>
    implements $SettingsScreenStateCopyWith<$Res> {
  _$SettingsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsScreenLoadingStateCopyWith<$Res> {
  factory _$$SettingsScreenLoadingStateCopyWith(
          _$SettingsScreenLoadingState value,
          $Res Function(_$SettingsScreenLoadingState) then) =
      __$$SettingsScreenLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsScreenLoadingStateCopyWithImpl<$Res>
    extends _$SettingsScreenStateCopyWithImpl<$Res,
        _$SettingsScreenLoadingState>
    implements _$$SettingsScreenLoadingStateCopyWith<$Res> {
  __$$SettingsScreenLoadingStateCopyWithImpl(
      _$SettingsScreenLoadingState _value,
      $Res Function(_$SettingsScreenLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsScreenLoadingState implements SettingsScreenLoadingState {
  const _$SettingsScreenLoadingState();

  @override
  String toString() {
    return 'SettingsScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsScreenLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingsScreenViewModel viewModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingsScreenViewModel viewModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingsScreenViewModel viewModel)? loaded,
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
    required TResult Function(SettingsScreenLoadingState value) loading,
    required TResult Function(SettingsScreenLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenLoadingState value)? loading,
    TResult? Function(SettingsScreenLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenLoadingState value)? loading,
    TResult Function(SettingsScreenLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingsScreenLoadingState implements SettingsScreenState {
  const factory SettingsScreenLoadingState() = _$SettingsScreenLoadingState;
}

/// @nodoc
abstract class _$$SettingsScreenLoadedStateCopyWith<$Res> {
  factory _$$SettingsScreenLoadedStateCopyWith(
          _$SettingsScreenLoadedState value,
          $Res Function(_$SettingsScreenLoadedState) then) =
      __$$SettingsScreenLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({SettingsScreenViewModel viewModel});

  $SettingsScreenViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$SettingsScreenLoadedStateCopyWithImpl<$Res>
    extends _$SettingsScreenStateCopyWithImpl<$Res, _$SettingsScreenLoadedState>
    implements _$$SettingsScreenLoadedStateCopyWith<$Res> {
  __$$SettingsScreenLoadedStateCopyWithImpl(_$SettingsScreenLoadedState _value,
      $Res Function(_$SettingsScreenLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$SettingsScreenLoadedState(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as SettingsScreenViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsScreenViewModelCopyWith<$Res> get viewModel {
    return $SettingsScreenViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$SettingsScreenLoadedState implements SettingsScreenLoadedState {
  const _$SettingsScreenLoadedState({required this.viewModel});

  @override
  final SettingsScreenViewModel viewModel;

  @override
  String toString() {
    return 'SettingsScreenState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsScreenLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsScreenLoadedStateCopyWith<_$SettingsScreenLoadedState>
      get copyWith => __$$SettingsScreenLoadedStateCopyWithImpl<
          _$SettingsScreenLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SettingsScreenViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SettingsScreenViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SettingsScreenViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsScreenLoadingState value) loading,
    required TResult Function(SettingsScreenLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsScreenLoadingState value)? loading,
    TResult? Function(SettingsScreenLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsScreenLoadingState value)? loading,
    TResult Function(SettingsScreenLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingsScreenLoadedState implements SettingsScreenState {
  const factory SettingsScreenLoadedState(
          {required final SettingsScreenViewModel viewModel}) =
      _$SettingsScreenLoadedState;

  SettingsScreenViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$SettingsScreenLoadedStateCopyWith<_$SettingsScreenLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
