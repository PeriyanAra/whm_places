part of 'place_detail_screen_bloc.dart';

@freezed
class PlaceDetailScreenBlocState with _$PlaceDetailScreenBlocState {
  const factory PlaceDetailScreenBlocState.loading() = PlaceDetailScreenLoadingState;

  const factory PlaceDetailScreenBlocState.loaded({
    required PlaceDetailViewModel placeDetailViewModel,
  }) = PlaceDetailScreenLoadedState;

  const factory PlaceDetailScreenBlocState.error({
    required String errorMessage,
  }) = PlaceDetailScreenErrorState;
}
