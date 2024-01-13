part of 'place_detail_screen_bloc.dart';

@freezed
class PlaceDetailScreenEvent with _$PlaceDetailScreenEvent {
  const factory PlaceDetailScreenEvent.getData({
    required int id,
  }) = PlaceDetailScreenGetDataEvent;
}
