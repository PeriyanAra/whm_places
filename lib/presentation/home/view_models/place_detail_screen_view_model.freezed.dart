// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceDetailViewModel {
  int get id => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DistanceViewModel? get distanceViewModel =>
      throw _privateConstructorUsedError;
  int get difficulty => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceDetailViewModelCopyWith<PlaceDetailViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailViewModelCopyWith<$Res> {
  factory $PlaceDetailViewModelCopyWith(PlaceDetailViewModel value,
          $Res Function(PlaceDetailViewModel) then) =
      _$PlaceDetailViewModelCopyWithImpl<$Res, PlaceDetailViewModel>;
  @useResult
  $Res call(
      {int id,
      String imagePath,
      String title,
      String description,
      DistanceViewModel? distanceViewModel,
      int difficulty,
      double latitude,
      double longitude});

  $DistanceViewModelCopyWith<$Res>? get distanceViewModel;
}

/// @nodoc
class _$PlaceDetailViewModelCopyWithImpl<$Res,
        $Val extends PlaceDetailViewModel>
    implements $PlaceDetailViewModelCopyWith<$Res> {
  _$PlaceDetailViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? title = null,
    Object? description = null,
    Object? distanceViewModel = freezed,
    Object? difficulty = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      distanceViewModel: freezed == distanceViewModel
          ? _value.distanceViewModel
          : distanceViewModel // ignore: cast_nullable_to_non_nullable
              as DistanceViewModel?,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DistanceViewModelCopyWith<$Res>? get distanceViewModel {
    if (_value.distanceViewModel == null) {
      return null;
    }

    return $DistanceViewModelCopyWith<$Res>(_value.distanceViewModel!, (value) {
      return _then(_value.copyWith(distanceViewModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceDetailViewModelCopyWith<$Res>
    implements $PlaceDetailViewModelCopyWith<$Res> {
  factory _$$_PlaceDetailViewModelCopyWith(_$_PlaceDetailViewModel value,
          $Res Function(_$_PlaceDetailViewModel) then) =
      __$$_PlaceDetailViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imagePath,
      String title,
      String description,
      DistanceViewModel? distanceViewModel,
      int difficulty,
      double latitude,
      double longitude});

  @override
  $DistanceViewModelCopyWith<$Res>? get distanceViewModel;
}

/// @nodoc
class __$$_PlaceDetailViewModelCopyWithImpl<$Res>
    extends _$PlaceDetailViewModelCopyWithImpl<$Res, _$_PlaceDetailViewModel>
    implements _$$_PlaceDetailViewModelCopyWith<$Res> {
  __$$_PlaceDetailViewModelCopyWithImpl(_$_PlaceDetailViewModel _value,
      $Res Function(_$_PlaceDetailViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imagePath = null,
    Object? title = null,
    Object? description = null,
    Object? distanceViewModel = freezed,
    Object? difficulty = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_PlaceDetailViewModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      distanceViewModel: freezed == distanceViewModel
          ? _value.distanceViewModel
          : distanceViewModel // ignore: cast_nullable_to_non_nullable
              as DistanceViewModel?,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PlaceDetailViewModel implements _PlaceDetailViewModel {
  const _$_PlaceDetailViewModel(
      {required this.id,
      required this.imagePath,
      required this.title,
      required this.description,
      required this.distanceViewModel,
      required this.difficulty,
      required this.latitude,
      required this.longitude});

  @override
  final int id;
  @override
  final String imagePath;
  @override
  final String title;
  @override
  final String description;
  @override
  final DistanceViewModel? distanceViewModel;
  @override
  final int difficulty;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'PlaceDetailViewModel(id: $id, imagePath: $imagePath, title: $title, description: $description, distanceViewModel: $distanceViewModel, difficulty: $difficulty, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDetailViewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.distanceViewModel, distanceViewModel) ||
                other.distanceViewModel == distanceViewModel) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath, title,
      description, distanceViewModel, difficulty, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceDetailViewModelCopyWith<_$_PlaceDetailViewModel> get copyWith =>
      __$$_PlaceDetailViewModelCopyWithImpl<_$_PlaceDetailViewModel>(
          this, _$identity);
}

abstract class _PlaceDetailViewModel implements PlaceDetailViewModel {
  const factory _PlaceDetailViewModel(
      {required final int id,
      required final String imagePath,
      required final String title,
      required final String description,
      required final DistanceViewModel? distanceViewModel,
      required final int difficulty,
      required final double latitude,
      required final double longitude}) = _$_PlaceDetailViewModel;

  @override
  int get id;
  @override
  String get imagePath;
  @override
  String get title;
  @override
  String get description;
  @override
  DistanceViewModel? get distanceViewModel;
  @override
  int get difficulty;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDetailViewModelCopyWith<_$_PlaceDetailViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
