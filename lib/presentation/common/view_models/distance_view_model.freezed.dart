// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distance_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DistanceViewModel {
  double get distance => throw _privateConstructorUsedError;
  MeasureType get measureType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DistanceViewModelCopyWith<DistanceViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceViewModelCopyWith<$Res> {
  factory $DistanceViewModelCopyWith(
          DistanceViewModel value, $Res Function(DistanceViewModel) then) =
      _$DistanceViewModelCopyWithImpl<$Res, DistanceViewModel>;
  @useResult
  $Res call({double distance, MeasureType measureType});
}

/// @nodoc
class _$DistanceViewModelCopyWithImpl<$Res, $Val extends DistanceViewModel>
    implements $DistanceViewModelCopyWith<$Res> {
  _$DistanceViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? measureType = null,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      measureType: null == measureType
          ? _value.measureType
          : measureType // ignore: cast_nullable_to_non_nullable
              as MeasureType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DistanceViewModelCopyWith<$Res>
    implements $DistanceViewModelCopyWith<$Res> {
  factory _$$_DistanceViewModelCopyWith(_$_DistanceViewModel value,
          $Res Function(_$_DistanceViewModel) then) =
      __$$_DistanceViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double distance, MeasureType measureType});
}

/// @nodoc
class __$$_DistanceViewModelCopyWithImpl<$Res>
    extends _$DistanceViewModelCopyWithImpl<$Res, _$_DistanceViewModel>
    implements _$$_DistanceViewModelCopyWith<$Res> {
  __$$_DistanceViewModelCopyWithImpl(
      _$_DistanceViewModel _value, $Res Function(_$_DistanceViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? measureType = null,
  }) {
    return _then(_$_DistanceViewModel(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      measureType: null == measureType
          ? _value.measureType
          : measureType // ignore: cast_nullable_to_non_nullable
              as MeasureType,
    ));
  }
}

/// @nodoc

class _$_DistanceViewModel implements _DistanceViewModel {
  const _$_DistanceViewModel(
      {required this.distance, required this.measureType});

  @override
  final double distance;
  @override
  final MeasureType measureType;

  @override
  String toString() {
    return 'DistanceViewModel(distance: $distance, measureType: $measureType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistanceViewModel &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.measureType, measureType) ||
                other.measureType == measureType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distance, measureType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DistanceViewModelCopyWith<_$_DistanceViewModel> get copyWith =>
      __$$_DistanceViewModelCopyWithImpl<_$_DistanceViewModel>(
          this, _$identity);
}

abstract class _DistanceViewModel implements DistanceViewModel {
  const factory _DistanceViewModel(
      {required final double distance,
      required final MeasureType measureType}) = _$_DistanceViewModel;

  @override
  double get distance;
  @override
  MeasureType get measureType;
  @override
  @JsonKey(ignore: true)
  _$$_DistanceViewModelCopyWith<_$_DistanceViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
