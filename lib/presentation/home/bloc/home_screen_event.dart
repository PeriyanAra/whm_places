part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.getData() = HomeScreenGetDataEvent;

  const factory HomeScreenEvent.refreshData({
    required VoidCallback onFinished,
  }) = HomeScreenRefreshDataEvent;

  const factory HomeScreenEvent.search({
    required String searchText,
  }) = HomeScreenSearchEvent;
}
