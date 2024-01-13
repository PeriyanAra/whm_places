part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.loading() = HomeScreenLoadingState;

  const factory HomeScreenState.loaded({
    required HomeScreenViewModel homeScreenViewModel,
  }) = HomeScreenLoadedState;

  const factory HomeScreenState.error({
    required String errorMessage,
    required bool showModal,
  }) = HomeScreenErrorState;
}
