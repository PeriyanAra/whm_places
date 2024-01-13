// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) {
  return _PlaceDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceDto {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get title => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get difficulty => throw _privateConstructorUsedError;
  dynamic get latitude => throw _privateConstructorUsedError;
  dynamic get longitude => throw _privateConstructorUsedError;
  dynamic get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDtoCopyWith<PlaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDtoCopyWith<$Res> {
  factory $PlaceDtoCopyWith(PlaceDto value, $Res Function(PlaceDto) then) =
      _$PlaceDtoCopyWithImpl<$Res, PlaceDto>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic title,
      dynamic image,
      dynamic description,
      dynamic difficulty,
      dynamic latitude,
      dynamic longitude,
      dynamic createdDate});
}

/// @nodoc
class _$PlaceDtoCopyWithImpl<$Res, $Val extends PlaceDto>
    implements $PlaceDtoCopyWith<$Res> {
  _$PlaceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? difficulty = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceDtoCopyWith<$Res> implements $PlaceDtoCopyWith<$Res> {
  factory _$$_PlaceDtoCopyWith(
          _$_PlaceDto value, $Res Function(_$_PlaceDto) then) =
      __$$_PlaceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic title,
      dynamic image,
      dynamic description,
      dynamic difficulty,
      dynamic latitude,
      dynamic longitude,
      dynamic createdDate});
}

/// @nodoc
class __$$_PlaceDtoCopyWithImpl<$Res>
    extends _$PlaceDtoCopyWithImpl<$Res, _$_PlaceDto>
    implements _$$_PlaceDtoCopyWith<$Res> {
  __$$_PlaceDtoCopyWithImpl(
      _$_PlaceDto _value, $Res Function(_$_PlaceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? difficulty = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_$_PlaceDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceDto extends _PlaceDto {
  const _$_PlaceDto(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.difficulty,
      required this.latitude,
      required this.longitude,
      required this.createdDate})
      : super._();

  factory _$_PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDtoFromJson(json);

  @override
  final dynamic id;
  @override
  final dynamic title;
  @override
  final dynamic image;
  @override
  final dynamic description;
  @override
  final dynamic difficulty;
  @override
  final dynamic latitude;
  @override
  final dynamic longitude;
  @override
  final dynamic createdDate;

  @override
  String toString() {
    return 'PlaceDto(id: $id, title: $title, image: $image, description: $description, difficulty: $difficulty, latitude: $latitude, longitude: $longitude, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.createdDate, createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(createdDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceDtoCopyWith<_$_PlaceDto> get copyWith =>
      __$$_PlaceDtoCopyWithImpl<_$_PlaceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDtoToJson(
      this,
    );
  }
}

abstract class _PlaceDto extends PlaceDto {
  const factory _PlaceDto(
      {required final dynamic id,
      required final dynamic title,
      required final dynamic image,
      required final dynamic description,
      required final dynamic difficulty,
      required final dynamic latitude,
      required final dynamic longitude,
      required final dynamic createdDate}) = _$_PlaceDto;
  const _PlaceDto._() : super._();

  factory _PlaceDto.fromJson(Map<String, dynamic> json) = _$_PlaceDto.fromJson;

  @override
  dynamic get id;
  @override
  dynamic get title;
  @override
  dynamic get image;
  @override
  dynamic get description;
  @override
  dynamic get difficulty;
  @override
  dynamic get latitude;
  @override
  dynamic get longitude;
  @override
  dynamic get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDtoCopyWith<_$_PlaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
