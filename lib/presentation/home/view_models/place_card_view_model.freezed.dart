// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_card_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceCardViewModel {
  int get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  DistanceViewModel? get distanceViewModel =>
      throw _privateConstructorUsedError;
  String get searchedText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCardViewModelCopyWith<PlaceCardViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCardViewModelCopyWith<$Res> {
  factory $PlaceCardViewModelCopyWith(
          PlaceCardViewModel value, $Res Function(PlaceCardViewModel) then) =
      _$PlaceCardViewModelCopyWithImpl<$Res, PlaceCardViewModel>;
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      String placeName,
      DistanceViewModel? distanceViewModel,
      String searchedText});

  $DistanceViewModelCopyWith<$Res>? get distanceViewModel;
}

/// @nodoc
class _$PlaceCardViewModelCopyWithImpl<$Res, $Val extends PlaceCardViewModel>
    implements $PlaceCardViewModelCopyWith<$Res> {
  _$PlaceCardViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? placeName = null,
    Object? distanceViewModel = freezed,
    Object? searchedText = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      distanceViewModel: freezed == distanceViewModel
          ? _value.distanceViewModel
          : distanceViewModel // ignore: cast_nullable_to_non_nullable
              as DistanceViewModel?,
      searchedText: null == searchedText
          ? _value.searchedText
          : searchedText // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_PlaceCardViewModelCopyWith<$Res>
    implements $PlaceCardViewModelCopyWith<$Res> {
  factory _$$_PlaceCardViewModelCopyWith(_$_PlaceCardViewModel value,
          $Res Function(_$_PlaceCardViewModel) then) =
      __$$_PlaceCardViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String imageUrl,
      String placeName,
      DistanceViewModel? distanceViewModel,
      String searchedText});

  @override
  $DistanceViewModelCopyWith<$Res>? get distanceViewModel;
}

/// @nodoc
class __$$_PlaceCardViewModelCopyWithImpl<$Res>
    extends _$PlaceCardViewModelCopyWithImpl<$Res, _$_PlaceCardViewModel>
    implements _$$_PlaceCardViewModelCopyWith<$Res> {
  __$$_PlaceCardViewModelCopyWithImpl(
      _$_PlaceCardViewModel _value, $Res Function(_$_PlaceCardViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? placeName = null,
    Object? distanceViewModel = freezed,
    Object? searchedText = null,
  }) {
    return _then(_$_PlaceCardViewModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      distanceViewModel: freezed == distanceViewModel
          ? _value.distanceViewModel
          : distanceViewModel // ignore: cast_nullable_to_non_nullable
              as DistanceViewModel?,
      searchedText: null == searchedText
          ? _value.searchedText
          : searchedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlaceCardViewModel implements _PlaceCardViewModel {
  const _$_PlaceCardViewModel(
      {required this.id,
      required this.imageUrl,
      required this.placeName,
      required this.distanceViewModel,
      this.searchedText = ''});

  @override
  final int id;
  @override
  final String imageUrl;
  @override
  final String placeName;
  @override
  final DistanceViewModel? distanceViewModel;
  @override
  @JsonKey()
  final String searchedText;

  @override
  String toString() {
    return 'PlaceCardViewModel(id: $id, imageUrl: $imageUrl, placeName: $placeName, distanceViewModel: $distanceViewModel, searchedText: $searchedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceCardViewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.distanceViewModel, distanceViewModel) ||
                other.distanceViewModel == distanceViewModel) &&
            (identical(other.searchedText, searchedText) ||
                other.searchedText == searchedText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, imageUrl, placeName, distanceViewModel, searchedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceCardViewModelCopyWith<_$_PlaceCardViewModel> get copyWith =>
      __$$_PlaceCardViewModelCopyWithImpl<_$_PlaceCardViewModel>(
          this, _$identity);
}

abstract class _PlaceCardViewModel implements PlaceCardViewModel {
  const factory _PlaceCardViewModel(
      {required final int id,
      required final String imageUrl,
      required final String placeName,
      required final DistanceViewModel? distanceViewModel,
      final String searchedText}) = _$_PlaceCardViewModel;

  @override
  int get id;
  @override
  String get imageUrl;
  @override
  String get placeName;
  @override
  DistanceViewModel? get distanceViewModel;
  @override
  String get searchedText;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCardViewModelCopyWith<_$_PlaceCardViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
