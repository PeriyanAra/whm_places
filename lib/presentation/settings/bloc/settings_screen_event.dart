part of 'settings_screen_bloc.dart';

@freezed
class SettingsScreenEvent with _$SettingsScreenEvent {
  const factory SettingsScreenEvent.getData() = SettingsScreenGetDataEvent;

  const factory SettingsScreenEvent.changeTheme({
    required ThemeMode themeMode,
  }) = SettingsScreenChangeThemeEvent;
}
