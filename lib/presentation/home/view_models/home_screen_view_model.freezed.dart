// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenViewModel {
  List<PlaceCardViewModel> get placeCards => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  bool get isSearchStarted => throw _privateConstructorUsedError;
  List<PlaceCardViewModel> get searchedCards =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenViewModelCopyWith<HomeScreenViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenViewModelCopyWith<$Res> {
  factory $HomeScreenViewModelCopyWith(
          HomeScreenViewModel value, $Res Function(HomeScreenViewModel) then) =
      _$HomeScreenViewModelCopyWithImpl<$Res, HomeScreenViewModel>;
  @useResult
  $Res call(
      {List<PlaceCardViewModel> placeCards,
      String searchText,
      bool isSearchStarted,
      List<PlaceCardViewModel> searchedCards});
}

/// @nodoc
class _$HomeScreenViewModelCopyWithImpl<$Res, $Val extends HomeScreenViewModel>
    implements $HomeScreenViewModelCopyWith<$Res> {
  _$HomeScreenViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeCards = null,
    Object? searchText = null,
    Object? isSearchStarted = null,
    Object? searchedCards = null,
  }) {
    return _then(_value.copyWith(
      placeCards: null == placeCards
          ? _value.placeCards
          : placeCards // ignore: cast_nullable_to_non_nullable
              as List<PlaceCardViewModel>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchStarted: null == isSearchStarted
          ? _value.isSearchStarted
          : isSearchStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      searchedCards: null == searchedCards
          ? _value.searchedCards
          : searchedCards // ignore: cast_nullable_to_non_nullable
              as List<PlaceCardViewModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeScreenViewModelCopyWith<$Res>
    implements $HomeScreenViewModelCopyWith<$Res> {
  factory _$$_HomeScreenViewModelCopyWith(_$_HomeScreenViewModel value,
          $Res Function(_$_HomeScreenViewModel) then) =
      __$$_HomeScreenViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlaceCardViewModel> placeCards,
      String searchText,
      bool isSearchStarted,
      List<PlaceCardViewModel> searchedCards});
}

/// @nodoc
class __$$_HomeScreenViewModelCopyWithImpl<$Res>
    extends _$HomeScreenViewModelCopyWithImpl<$Res, _$_HomeScreenViewModel>
    implements _$$_HomeScreenViewModelCopyWith<$Res> {
  __$$_HomeScreenViewModelCopyWithImpl(_$_HomeScreenViewModel _value,
      $Res Function(_$_HomeScreenViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeCards = null,
    Object? searchText = null,
    Object? isSearchStarted = null,
    Object? searchedCards = null,
  }) {
    return _then(_$_HomeScreenViewModel(
      placeCards: null == placeCards
          ? _value._placeCards
          : placeCards // ignore: cast_nullable_to_non_nullable
              as List<PlaceCardViewModel>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchStarted: null == isSearchStarted
          ? _value.isSearchStarted
          : isSearchStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      searchedCards: null == searchedCards
          ? _value._searchedCards
          : searchedCards // ignore: cast_nullable_to_non_nullable
              as List<PlaceCardViewModel>,
    ));
  }
}

/// @nodoc

class _$_HomeScreenViewModel implements _HomeScreenViewModel {
  const _$_HomeScreenViewModel(
      {required final List<PlaceCardViewModel> placeCards,
      this.searchText = '',
      this.isSearchStarted = false,
      final List<PlaceCardViewModel> searchedCards = const []})
      : _placeCards = placeCards,
        _searchedCards = searchedCards;

  final List<PlaceCardViewModel> _placeCards;
  @override
  List<PlaceCardViewModel> get placeCards {
    if (_placeCards is EqualUnmodifiableListView) return _placeCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeCards);
  }

  @override
  @JsonKey()
  final String searchText;
  @override
  @JsonKey()
  final bool isSearchStarted;
  final List<PlaceCardViewModel> _searchedCards;
  @override
  @JsonKey()
  List<PlaceCardViewModel> get searchedCards {
    if (_searchedCards is EqualUnmodifiableListView) return _searchedCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedCards);
  }

  @override
  String toString() {
    return 'HomeScreenViewModel(placeCards: $placeCards, searchText: $searchText, isSearchStarted: $isSearchStarted, searchedCards: $searchedCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenViewModel &&
            const DeepCollectionEquality()
                .equals(other._placeCards, _placeCards) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.isSearchStarted, isSearchStarted) ||
                other.isSearchStarted == isSearchStarted) &&
            const DeepCollectionEquality()
                .equals(other._searchedCards, _searchedCards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_placeCards),
      searchText,
      isSearchStarted,
      const DeepCollectionEquality().hash(_searchedCards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeScreenViewModelCopyWith<_$_HomeScreenViewModel> get copyWith =>
      __$$_HomeScreenViewModelCopyWithImpl<_$_HomeScreenViewModel>(
          this, _$identity);
}

abstract class _HomeScreenViewModel implements HomeScreenViewModel {
  const factory _HomeScreenViewModel(
      {required final List<PlaceCardViewModel> placeCards,
      final String searchText,
      final bool isSearchStarted,
      final List<PlaceCardViewModel> searchedCards}) = _$_HomeScreenViewModel;

  @override
  List<PlaceCardViewModel> get placeCards;
  @override
  String get searchText;
  @override
  bool get isSearchStarted;
  @override
  List<PlaceCardViewModel> get searchedCards;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenViewModelCopyWith<_$_HomeScreenViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
