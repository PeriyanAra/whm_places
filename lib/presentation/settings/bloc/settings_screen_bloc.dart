import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whm_places/presentation/settings/view_models/settings_screen_view_model.dart';

part 'settings_screen_event.dart';
part 'settings_screen_state.dart';
part 'settings_screen_bloc.freezed.dart';

class SettingsScreenBloc extends Bloc<SettingsScreenEvent, SettingsScreenState> {
  SettingsScreenBloc() : super(const SettingsScreenState.loading()) {
    on<SettingsScreenGetDataEvent>(_handleSettingsScreenGetDataEvent);
    on<SettingsScreenChangeThemeEvent>(_handleSettingsScreenChangeThemeEvent);
  }

  Future<void> _handleSettingsScreenGetDataEvent(
    SettingsScreenGetDataEvent event,
    Emitter<SettingsScreenState> emit,
  ) async {
    var themeMode = ThemeMode.system;
    final prefs = await SharedPreferences.getInstance();
    final themeModeString = prefs.getString('themeMode');

    themeMode = ThemeMode.values.firstWhere(
      (e) => e.toString() == themeModeString,
      orElse: () => ThemeMode.system,
    );

    emit(
      SettingsScreenState.loaded(
        viewModel: SettingsScreenViewModel(themeMode: themeMode),
      ),
    );
  }

  void _handleSettingsScreenChangeThemeEvent(
    SettingsScreenChangeThemeEvent event,
    Emitter<SettingsScreenState> emit,
  ) {
    emit(
      SettingsScreenState.loaded(
        viewModel: SettingsScreenViewModel(themeMode: event.themeMode),
      ),
    );
  }
}
