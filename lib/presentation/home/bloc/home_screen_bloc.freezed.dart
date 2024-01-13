// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(VoidCallback onFinished) refreshData,
    required TResult Function(String searchText) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(VoidCallback onFinished)? refreshData,
    TResult? Function(String searchText)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(VoidCallback onFinished)? refreshData,
    TResult Function(String searchText)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenGetDataEvent value) getData,
    required TResult Function(HomeScreenRefreshDataEvent value) refreshData,
    required TResult Function(HomeScreenSearchEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenGetDataEvent value)? getData,
    TResult? Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult? Function(HomeScreenSearchEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenGetDataEvent value)? getData,
    TResult Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult Function(HomeScreenSearchEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeScreenGetDataEventCopyWith<$Res> {
  factory _$$HomeScreenGetDataEventCopyWith(_$HomeScreenGetDataEvent value,
          $Res Function(_$HomeScreenGetDataEvent) then) =
      __$$HomeScreenGetDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeScreenGetDataEventCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$HomeScreenGetDataEvent>
    implements _$$HomeScreenGetDataEventCopyWith<$Res> {
  __$$HomeScreenGetDataEventCopyWithImpl(_$HomeScreenGetDataEvent _value,
      $Res Function(_$HomeScreenGetDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeScreenGetDataEvent implements HomeScreenGetDataEvent {
  const _$HomeScreenGetDataEvent();

  @override
  String toString() {
    return 'HomeScreenEvent.getData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeScreenGetDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(VoidCallback onFinished) refreshData,
    required TResult Function(String searchText) search,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(VoidCallback onFinished)? refreshData,
    TResult? Function(String searchText)? search,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(VoidCallback onFinished)? refreshData,
    TResult Function(String searchText)? search,
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
    required TResult Function(HomeScreenGetDataEvent value) getData,
    required TResult Function(HomeScreenRefreshDataEvent value) refreshData,
    required TResult Function(HomeScreenSearchEvent value) search,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenGetDataEvent value)? getData,
    TResult? Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult? Function(HomeScreenSearchEvent value)? search,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenGetDataEvent value)? getData,
    TResult Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult Function(HomeScreenSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class HomeScreenGetDataEvent implements HomeScreenEvent {
  const factory HomeScreenGetDataEvent() = _$HomeScreenGetDataEvent;
}

/// @nodoc
abstract class _$$HomeScreenRefreshDataEventCopyWith<$Res> {
  factory _$$HomeScreenRefreshDataEventCopyWith(
          _$HomeScreenRefreshDataEvent value,
          $Res Function(_$HomeScreenRefreshDataEvent) then) =
      __$$HomeScreenRefreshDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({VoidCallback onFinished});
}

/// @nodoc
class __$$HomeScreenRefreshDataEventCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$HomeScreenRefreshDataEvent>
    implements _$$HomeScreenRefreshDataEventCopyWith<$Res> {
  __$$HomeScreenRefreshDataEventCopyWithImpl(
      _$HomeScreenRefreshDataEvent _value,
      $Res Function(_$HomeScreenRefreshDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onFinished = null,
  }) {
    return _then(_$HomeScreenRefreshDataEvent(
      onFinished: null == onFinished
          ? _value.onFinished
          : onFinished // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$HomeScreenRefreshDataEvent implements HomeScreenRefreshDataEvent {
  const _$HomeScreenRefreshDataEvent({required this.onFinished});

  @override
  final VoidCallback onFinished;

  @override
  String toString() {
    return 'HomeScreenEvent.refreshData(onFinished: $onFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenRefreshDataEvent &&
            (identical(other.onFinished, onFinished) ||
                other.onFinished == onFinished));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onFinished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenRefreshDataEventCopyWith<_$HomeScreenRefreshDataEvent>
      get copyWith => __$$HomeScreenRefreshDataEventCopyWithImpl<
          _$HomeScreenRefreshDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(VoidCallback onFinished) refreshData,
    required TResult Function(String searchText) search,
  }) {
    return refreshData(onFinished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(VoidCallback onFinished)? refreshData,
    TResult? Function(String searchText)? search,
  }) {
    return refreshData?.call(onFinished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(VoidCallback onFinished)? refreshData,
    TResult Function(String searchText)? search,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(onFinished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenGetDataEvent value) getData,
    required TResult Function(HomeScreenRefreshDataEvent value) refreshData,
    required TResult Function(HomeScreenSearchEvent value) search,
  }) {
    return refreshData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenGetDataEvent value)? getData,
    TResult? Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult? Function(HomeScreenSearchEvent value)? search,
  }) {
    return refreshData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenGetDataEvent value)? getData,
    TResult Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult Function(HomeScreenSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (refreshData != null) {
      return refreshData(this);
    }
    return orElse();
  }
}

abstract class HomeScreenRefreshDataEvent implements HomeScreenEvent {
  const factory HomeScreenRefreshDataEvent(
      {required final VoidCallback onFinished}) = _$HomeScreenRefreshDataEvent;

  VoidCallback get onFinished;
  @JsonKey(ignore: true)
  _$$HomeScreenRefreshDataEventCopyWith<_$HomeScreenRefreshDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenSearchEventCopyWith<$Res> {
  factory _$$HomeScreenSearchEventCopyWith(_$HomeScreenSearchEvent value,
          $Res Function(_$HomeScreenSearchEvent) then) =
      __$$HomeScreenSearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$HomeScreenSearchEventCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$HomeScreenSearchEvent>
    implements _$$HomeScreenSearchEventCopyWith<$Res> {
  __$$HomeScreenSearchEventCopyWithImpl(_$HomeScreenSearchEvent _value,
      $Res Function(_$HomeScreenSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$HomeScreenSearchEvent(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeScreenSearchEvent implements HomeScreenSearchEvent {
  const _$HomeScreenSearchEvent({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'HomeScreenEvent.search(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenSearchEvent &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenSearchEventCopyWith<_$HomeScreenSearchEvent> get copyWith =>
      __$$HomeScreenSearchEventCopyWithImpl<_$HomeScreenSearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getData,
    required TResult Function(VoidCallback onFinished) refreshData,
    required TResult Function(String searchText) search,
  }) {
    return search(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getData,
    TResult? Function(VoidCallback onFinished)? refreshData,
    TResult? Function(String searchText)? search,
  }) {
    return search?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getData,
    TResult Function(VoidCallback onFinished)? refreshData,
    TResult Function(String searchText)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenGetDataEvent value) getData,
    required TResult Function(HomeScreenRefreshDataEvent value) refreshData,
    required TResult Function(HomeScreenSearchEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenGetDataEvent value)? getData,
    TResult? Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult? Function(HomeScreenSearchEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenGetDataEvent value)? getData,
    TResult Function(HomeScreenRefreshDataEvent value)? refreshData,
    TResult Function(HomeScreenSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class HomeScreenSearchEvent implements HomeScreenEvent {
  const factory HomeScreenSearchEvent({required final String searchText}) =
      _$HomeScreenSearchEvent;

  String get searchText;
  @JsonKey(ignore: true)
  _$$HomeScreenSearchEventCopyWith<_$HomeScreenSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HomeScreenViewModel homeScreenViewModel) loaded,
    required TResult Function(String errorMessage, bool showModal) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult? Function(String errorMessage, bool showModal)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult Function(String errorMessage, bool showModal)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenLoadingState value) loading,
    required TResult Function(HomeScreenLoadedState value) loaded,
    required TResult Function(HomeScreenErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenLoadingState value)? loading,
    TResult? Function(HomeScreenLoadedState value)? loaded,
    TResult? Function(HomeScreenErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenLoadingState value)? loading,
    TResult Function(HomeScreenLoadedState value)? loaded,
    TResult Function(HomeScreenErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeScreenLoadingStateCopyWith<$Res> {
  factory _$$HomeScreenLoadingStateCopyWith(_$HomeScreenLoadingState value,
          $Res Function(_$HomeScreenLoadingState) then) =
      __$$HomeScreenLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeScreenLoadingStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenLoadingState>
    implements _$$HomeScreenLoadingStateCopyWith<$Res> {
  __$$HomeScreenLoadingStateCopyWithImpl(_$HomeScreenLoadingState _value,
      $Res Function(_$HomeScreenLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeScreenLoadingState implements HomeScreenLoadingState {
  const _$HomeScreenLoadingState();

  @override
  String toString() {
    return 'HomeScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeScreenLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HomeScreenViewModel homeScreenViewModel) loaded,
    required TResult Function(String errorMessage, bool showModal) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult? Function(String errorMessage, bool showModal)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult Function(String errorMessage, bool showModal)? error,
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
    required TResult Function(HomeScreenLoadingState value) loading,
    required TResult Function(HomeScreenLoadedState value) loaded,
    required TResult Function(HomeScreenErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenLoadingState value)? loading,
    TResult? Function(HomeScreenLoadedState value)? loaded,
    TResult? Function(HomeScreenErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenLoadingState value)? loading,
    TResult Function(HomeScreenLoadedState value)? loaded,
    TResult Function(HomeScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeScreenLoadingState implements HomeScreenState {
  const factory HomeScreenLoadingState() = _$HomeScreenLoadingState;
}

/// @nodoc
abstract class _$$HomeScreenLoadedStateCopyWith<$Res> {
  factory _$$HomeScreenLoadedStateCopyWith(_$HomeScreenLoadedState value,
          $Res Function(_$HomeScreenLoadedState) then) =
      __$$HomeScreenLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeScreenViewModel homeScreenViewModel});

  $HomeScreenViewModelCopyWith<$Res> get homeScreenViewModel;
}

/// @nodoc
class __$$HomeScreenLoadedStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenLoadedState>
    implements _$$HomeScreenLoadedStateCopyWith<$Res> {
  __$$HomeScreenLoadedStateCopyWithImpl(_$HomeScreenLoadedState _value,
      $Res Function(_$HomeScreenLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeScreenViewModel = null,
  }) {
    return _then(_$HomeScreenLoadedState(
      homeScreenViewModel: null == homeScreenViewModel
          ? _value.homeScreenViewModel
          : homeScreenViewModel // ignore: cast_nullable_to_non_nullable
              as HomeScreenViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeScreenViewModelCopyWith<$Res> get homeScreenViewModel {
    return $HomeScreenViewModelCopyWith<$Res>(_value.homeScreenViewModel,
        (value) {
      return _then(_value.copyWith(homeScreenViewModel: value));
    });
  }
}

/// @nodoc

class _$HomeScreenLoadedState implements HomeScreenLoadedState {
  const _$HomeScreenLoadedState({required this.homeScreenViewModel});

  @override
  final HomeScreenViewModel homeScreenViewModel;

  @override
  String toString() {
    return 'HomeScreenState.loaded(homeScreenViewModel: $homeScreenViewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenLoadedState &&
            (identical(other.homeScreenViewModel, homeScreenViewModel) ||
                other.homeScreenViewModel == homeScreenViewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeScreenViewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenLoadedStateCopyWith<_$HomeScreenLoadedState> get copyWith =>
      __$$HomeScreenLoadedStateCopyWithImpl<_$HomeScreenLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HomeScreenViewModel homeScreenViewModel) loaded,
    required TResult Function(String errorMessage, bool showModal) error,
  }) {
    return loaded(homeScreenViewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult? Function(String errorMessage, bool showModal)? error,
  }) {
    return loaded?.call(homeScreenViewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult Function(String errorMessage, bool showModal)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(homeScreenViewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenLoadingState value) loading,
    required TResult Function(HomeScreenLoadedState value) loaded,
    required TResult Function(HomeScreenErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenLoadingState value)? loading,
    TResult? Function(HomeScreenLoadedState value)? loaded,
    TResult? Function(HomeScreenErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenLoadingState value)? loading,
    TResult Function(HomeScreenLoadedState value)? loaded,
    TResult Function(HomeScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeScreenLoadedState implements HomeScreenState {
  const factory HomeScreenLoadedState(
          {required final HomeScreenViewModel homeScreenViewModel}) =
      _$HomeScreenLoadedState;

  HomeScreenViewModel get homeScreenViewModel;
  @JsonKey(ignore: true)
  _$$HomeScreenLoadedStateCopyWith<_$HomeScreenLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeScreenErrorStateCopyWith<$Res> {
  factory _$$HomeScreenErrorStateCopyWith(_$HomeScreenErrorState value,
          $Res Function(_$HomeScreenErrorState) then) =
      __$$HomeScreenErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage, bool showModal});
}

/// @nodoc
class __$$HomeScreenErrorStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenErrorState>
    implements _$$HomeScreenErrorStateCopyWith<$Res> {
  __$$HomeScreenErrorStateCopyWithImpl(_$HomeScreenErrorState _value,
      $Res Function(_$HomeScreenErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? showModal = null,
  }) {
    return _then(_$HomeScreenErrorState(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      showModal: null == showModal
          ? _value.showModal
          : showModal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeScreenErrorState implements HomeScreenErrorState {
  const _$HomeScreenErrorState(
      {required this.errorMessage, required this.showModal});

  @override
  final String errorMessage;
  @override
  final bool showModal;

  @override
  String toString() {
    return 'HomeScreenState.error(errorMessage: $errorMessage, showModal: $showModal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.showModal, showModal) ||
                other.showModal == showModal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, showModal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenErrorStateCopyWith<_$HomeScreenErrorState> get copyWith =>
      __$$HomeScreenErrorStateCopyWithImpl<_$HomeScreenErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(HomeScreenViewModel homeScreenViewModel) loaded,
    required TResult Function(String errorMessage, bool showModal) error,
  }) {
    return error(errorMessage, showModal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult? Function(String errorMessage, bool showModal)? error,
  }) {
    return error?.call(errorMessage, showModal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(HomeScreenViewModel homeScreenViewModel)? loaded,
    TResult Function(String errorMessage, bool showModal)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, showModal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenLoadingState value) loading,
    required TResult Function(HomeScreenLoadedState value) loaded,
    required TResult Function(HomeScreenErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenLoadingState value)? loading,
    TResult? Function(HomeScreenLoadedState value)? loaded,
    TResult? Function(HomeScreenErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenLoadingState value)? loading,
    TResult Function(HomeScreenLoadedState value)? loaded,
    TResult Function(HomeScreenErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeScreenErrorState implements HomeScreenState {
  const factory HomeScreenErrorState(
      {required final String errorMessage,
      required final bool showModal}) = _$HomeScreenErrorState;

  String get errorMessage;
  bool get showModal;
  @JsonKey(ignore: true)
  _$$HomeScreenErrorStateCopyWith<_$HomeScreenErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
