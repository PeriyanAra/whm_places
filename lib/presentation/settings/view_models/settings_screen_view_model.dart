import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_screen_view_model.freezed.dart';

@freezed
class SettingsScreenViewModel with _$SettingsScreenViewModel {
  const factory SettingsScreenViewModel({
    required ThemeMode themeMode,
  }) = _SettingsScreenViewModel;
}
