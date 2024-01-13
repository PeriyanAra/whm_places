// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsScreenViewModel {
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsScreenViewModelCopyWith<SettingsScreenViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsScreenViewModelCopyWith<$Res> {
  factory $SettingsScreenViewModelCopyWith(SettingsScreenViewModel value,
          $Res Function(SettingsScreenViewModel) then) =
      _$SettingsScreenViewModelCopyWithImpl<$Res, SettingsScreenViewModel>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$SettingsScreenViewModelCopyWithImpl<$Res,
        $Val extends SettingsScreenViewModel>
    implements $SettingsScreenViewModelCopyWith<$Res> {
  _$SettingsScreenViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsScreenViewModelCopyWith<$Res>
    implements $SettingsScreenViewModelCopyWith<$Res> {
  factory _$$_SettingsScreenViewModelCopyWith(_$_SettingsScreenViewModel value,
          $Res Function(_$_SettingsScreenViewModel) then) =
      __$$_SettingsScreenViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$_SettingsScreenViewModelCopyWithImpl<$Res>
    extends _$SettingsScreenViewModelCopyWithImpl<$Res,
        _$_SettingsScreenViewModel>
    implements _$$_SettingsScreenViewModelCopyWith<$Res> {
  __$$_SettingsScreenViewModelCopyWithImpl(_$_SettingsScreenViewModel _value,
      $Res Function(_$_SettingsScreenViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$_SettingsScreenViewModel(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_SettingsScreenViewModel implements _SettingsScreenViewModel {
  const _$_SettingsScreenViewModel({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsScreenViewModel(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsScreenViewModel &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsScreenViewModelCopyWith<_$_SettingsScreenViewModel>
      get copyWith =>
          __$$_SettingsScreenViewModelCopyWithImpl<_$_SettingsScreenViewModel>(
              this, _$identity);
}

abstract class _SettingsScreenViewModel implements SettingsScreenViewModel {
  const factory _SettingsScreenViewModel({required final ThemeMode themeMode}) =
      _$_SettingsScreenViewModel;

  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsScreenViewModelCopyWith<_$_SettingsScreenViewModel>
      get copyWith => throw _privateConstructorUsedError;
}
