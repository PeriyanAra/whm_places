part of 'settings_screen_bloc.dart';

@freezed
class SettingsScreenState with _$SettingsScreenState {
  const factory SettingsScreenState.loading() = SettingsScreenLoadingState;

  const factory SettingsScreenState.loaded({
    required SettingsScreenViewModel viewModel,
  }) = SettingsScreenLoadedState;
}
