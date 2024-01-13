// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceDetailScreenEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceDetailScreenGetDataEvent value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetailScreenGetDataEvent value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceDetailScreenGetDataEvent value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceDetailScreenEventCopyWith<PlaceDetailScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailScreenEventCopyWith<$Res> {
  factory $PlaceDetailScreenEventCopyWith(PlaceDetailScreenEvent value,
          $Res Function(PlaceDetailScreenEvent) then) =
      _$PlaceDetailScreenEventCopyWithImpl<$Res, PlaceDetailScreenEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$PlaceDetailScreenEventCopyWithImpl<$Res,
        $Val extends PlaceDetailScreenEvent>
    implements $PlaceDetailScreenEventCopyWith<$Res> {
  _$PlaceDetailScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDetailScreenGetDataEventCopyWith<$Res>
    implements $PlaceDetailScreenEventCopyWith<$Res> {
  factory _$$PlaceDetailScreenGetDataEventCopyWith(
          _$PlaceDetailScreenGetDataEvent value,
          $Res Function(_$PlaceDetailScreenGetDataEvent) then) =
      __$$PlaceDetailScreenGetDataEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$PlaceDetailScreenGetDataEventCopyWithImpl<$Res>
    extends _$PlaceDetailScreenEventCopyWithImpl<$Res,
        _$PlaceDetailScreenGetDataEvent>
    implements _$$PlaceDetailScreenGetDataEventCopyWith<$Res> {
  __$$PlaceDetailScreenGetDataEventCopyWithImpl(
      _$PlaceDetailScreenGetDataEvent _value,
      $Res Function(_$PlaceDetailScreenGetDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PlaceDetailScreenGetDataEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlaceDetailScreenGetDataEvent implements PlaceDetailScreenGetDataEvent {
  const _$PlaceDetailScreenGetDataEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PlaceDetailScreenEvent.getData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailScreenGetDataEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailScreenGetDataEventCopyWith<_$PlaceDetailScreenGetDataEvent>
      get copyWith => __$$PlaceDetailScreenGetDataEventCopyWithImpl<
          _$PlaceDetailScreenGetDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getData,
  }) {
    return getData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getData,
  }) {
    return getData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceDetailScreenGetDataEvent value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetailScreenGetDataEvent value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceDetailScreenGetDataEvent value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class PlaceDetailScreenGetDataEvent implements PlaceDetailScreenEvent {
  const factory PlaceDetailScreenGetDataEvent({required final int id}) =
      _$PlaceDetailScreenGetDataEvent;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailScreenGetDataEventCopyWith<_$PlaceDetailScreenGetDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceDetailScreenBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PlaceDetailViewModel placeDetailViewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceDetailScreenLoadingState value) loading,
    required TResult Function(PlaceDetailScreenLoadedState value) loaded,
    required TResult Function(PlaceDetailScreenErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetailScreenLoadingState value)? loading,
    TResult? Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult? Function(PlaceDetailScreenErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceDetailScreenLoadingState value)? loading,
    TResult Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult Function(PlaceDetailScreenErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailScreenBlocStateCopyWith<$Res> {
  factory $PlaceDetailScreenBlocStateCopyWith(PlaceDetailScreenBlocState value,
          $Res Function(PlaceDetailScreenBlocState) then) =
      _$PlaceDetailScreenBlocStateCopyWithImpl<$Res,
          PlaceDetailScreenBlocState>;
}

/// @nodoc
class _$PlaceDetailScreenBlocStateCopyWithImpl<$Res,
        $Val extends PlaceDetailScreenBlocState>
    implements $PlaceDetailScreenBlocStateCopyWith<$Res> {
  _$PlaceDetailScreenBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlaceDetailScreenLoadingStateCopyWith<$Res> {
  factory _$$PlaceDetailScreenLoadingStateCopyWith(
          _$PlaceDetailScreenLoadingState value,
          $Res Function(_$PlaceDetailScreenLoadingState) then) =
      __$$PlaceDetailScreenLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlaceDetailScreenLoadingStateCopyWithImpl<$Res>
    extends _$PlaceDetailScreenBlocStateCopyWithImpl<$Res,
        _$PlaceDetailScreenLoadingState>
    implements _$$PlaceDetailScreenLoadingStateCopyWith<$Res> {
  __$$PlaceDetailScreenLoadingStateCopyWithImpl(
      _$PlaceDetailScreenLoadingState _value,
      $Res Function(_$PlaceDetailScreenLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlaceDetailScreenLoadingState implements PlaceDetailScreenLoadingState {
  const _$PlaceDetailScreenLoadingState();

  @override
  String toString() {
    return 'PlaceDetailScreenBlocState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailScreenLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PlaceDetailViewModel placeDetailViewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(PlaceDetailScreenLoadingState value) loading,
    required TResult Function(PlaceDetailScreenLoadedState value) loaded,
    required TResult Function(PlaceDetailScreenErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetailScreenLoadingState value)? loading,
    TResult? Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult? Function(PlaceDetailScreenErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceDetailScreenLoadingState value)? loading,
    TResult Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult Function(PlaceDetailScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlaceDetailScreenLoadingState
    implements PlaceDetailScreenBlocState {
  const factory PlaceDetailScreenLoadingState() =
      _$PlaceDetailScreenLoadingState;
}

/// @nodoc
abstract class _$$PlaceDetailScreenLoadedStateCopyWith<$Res> {
  factory _$$PlaceDetailScreenLoadedStateCopyWith(
          _$PlaceDetailScreenLoadedState value,
          $Res Function(_$PlaceDetailScreenLoadedState) then) =
      __$$PlaceDetailScreenLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceDetailViewModel placeDetailViewModel});

  $PlaceDetailViewModelCopyWith<$Res> get placeDetailViewModel;
}

/// @nodoc
class __$$PlaceDetailScreenLoadedStateCopyWithImpl<$Res>
    extends _$PlaceDetailScreenBlocStateCopyWithImpl<$Res,
        _$PlaceDetailScreenLoadedState>
    implements _$$PlaceDetailScreenLoadedStateCopyWith<$Res> {
  __$$PlaceDetailScreenLoadedStateCopyWithImpl(
      _$PlaceDetailScreenLoadedState _value,
      $Res Function(_$PlaceDetailScreenLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeDetailViewModel = null,
  }) {
    return _then(_$PlaceDetailScreenLoadedState(
      placeDetailViewModel: null == placeDetailViewModel
          ? _value.placeDetailViewModel
          : placeDetailViewModel // ignore: cast_nullable_to_non_nullable
              as PlaceDetailViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceDetailViewModelCopyWith<$Res> get placeDetailViewModel {
    return $PlaceDetailViewModelCopyWith<$Res>(_value.placeDetailViewModel,
        (value) {
      return _then(_value.copyWith(placeDetailViewModel: value));
    });
  }
}

/// @nodoc

class _$PlaceDetailScreenLoadedState implements PlaceDetailScreenLoadedState {
  const _$PlaceDetailScreenLoadedState({required this.placeDetailViewModel});

  @override
  final PlaceDetailViewModel placeDetailViewModel;

  @override
  String toString() {
    return 'PlaceDetailScreenBlocState.loaded(placeDetailViewModel: $placeDetailViewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailScreenLoadedState &&
            (identical(other.placeDetailViewModel, placeDetailViewModel) ||
                other.placeDetailViewModel == placeDetailViewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeDetailViewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailScreenLoadedStateCopyWith<_$PlaceDetailScreenLoadedState>
      get copyWith => __$$PlaceDetailScreenLoadedStateCopyWithImpl<
          _$PlaceDetailScreenLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PlaceDetailViewModel placeDetailViewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(placeDetailViewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(placeDetailViewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(placeDetailViewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceDetailScreenLoadingState value) loading,
    required TResult Function(PlaceDetailScreenLoadedState value) loaded,
    required TResult Function(PlaceDetailScreenErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetailScreenLoadingState value)? loading,
    TResult? Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult? Function(PlaceDetailScreenErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceDetailScreenLoadingState value)? loading,
    TResult Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult Function(PlaceDetailScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlaceDetailScreenLoadedState
    implements PlaceDetailScreenBlocState {
  const factory PlaceDetailScreenLoadedState(
          {required final PlaceDetailViewModel placeDetailViewModel}) =
      _$PlaceDetailScreenLoadedState;

  PlaceDetailViewModel get placeDetailViewModel;
  @JsonKey(ignore: true)
  _$$PlaceDetailScreenLoadedStateCopyWith<_$PlaceDetailScreenLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceDetailScreenErrorStateCopyWith<$Res> {
  factory _$$PlaceDetailScreenErrorStateCopyWith(
          _$PlaceDetailScreenErrorState value,
          $Res Function(_$PlaceDetailScreenErrorState) then) =
      __$$PlaceDetailScreenErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$PlaceDetailScreenErrorStateCopyWithImpl<$Res>
    extends _$PlaceDetailScreenBlocStateCopyWithImpl<$Res,
        _$PlaceDetailScreenErrorState>
    implements _$$PlaceDetailScreenErrorStateCopyWith<$Res> {
  __$$PlaceDetailScreenErrorStateCopyWithImpl(
      _$PlaceDetailScreenErrorState _value,
      $Res Function(_$PlaceDetailScreenErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$PlaceDetailScreenErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlaceDetailScreenErrorState implements PlaceDetailScreenErrorState {
  const _$PlaceDetailScreenErrorState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PlaceDetailScreenBlocState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailScreenErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailScreenErrorStateCopyWith<_$PlaceDetailScreenErrorState>
      get copyWith => __$$PlaceDetailScreenErrorStateCopyWithImpl<
          _$PlaceDetailScreenErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PlaceDetailViewModel placeDetailViewModel) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PlaceDetailViewModel placeDetailViewModel)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceDetailScreenLoadingState value) loading,
    required TResult Function(PlaceDetailScreenLoadedState value) loaded,
    required TResult Function(PlaceDetailScreenErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetailScreenLoadingState value)? loading,
    TResult? Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult? Function(PlaceDetailScreenErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceDetailScreenLoadingState value)? loading,
    TResult Function(PlaceDetailScreenLoadedState value)? loaded,
    TResult Function(PlaceDetailScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PlaceDetailScreenErrorState
    implements PlaceDetailScreenBlocState {
  const factory PlaceDetailScreenErrorState(
      {required final String errorMessage}) = _$PlaceDetailScreenErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$PlaceDetailScreenErrorStateCopyWith<_$PlaceDetailScreenErrorState>
      get copyWith => throw _privateConstructorUsedError;
}
