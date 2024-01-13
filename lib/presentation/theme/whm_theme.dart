import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/extensions/settings_screen_theme.dart';
import 'package:whm_places/presentation/theme/theme.dart';
import 'package:whm_places/presentation/theme/whm_text_theme.dart';

class WhmTheme {
  static ThemeData light() {
    final colorTheme = _lightColorTheme();
    final textTheme = WhmTextTheme(colorTheme: colorTheme);
    final bottomBarTheme = WhmBottomBarTheme(colorTheme: colorTheme);
    final searchBarTheme = WhmSearchBarTheme(colorTheme: colorTheme);
    final whmPlaceCardTheme = WhmPlaceCardTheme(colorTheme: colorTheme);
    final appBatTheme = WhmAppBarTheme(colorTheme: colorTheme);
    final aboutScreenTheme = AboutScreenTheme(colorTheme: colorTheme);
    final placeDetailScreenTheme = PlaceDetailScreenTheme(colorTheme: colorTheme);
    final settingsScreenTheme = SettingsScreenTheme(colorTheme: colorTheme);

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: colorTheme.primary),
      scaffoldBackgroundColor: colorTheme.background,
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      fontFamily: 'outfit',
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        textTheme,
        bottomBarTheme,
        searchBarTheme,
        appBatTheme,
        aboutScreenTheme,
        whmPlaceCardTheme,
        placeDetailScreenTheme,
        settingsScreenTheme,
      ],
    );
  }

  static ThemeData dark() {
    final colorTheme = _darkColorTheme();
    final textTheme = WhmTextTheme(colorTheme: colorTheme);
    final bottomBarTheme = WhmBottomBarTheme(colorTheme: colorTheme);
    final appBatTheme = WhmAppBarTheme(colorTheme: colorTheme);
    final searchBarTheme = WhmSearchBarTheme(colorTheme: colorTheme);
    final aboutScreenTheme = AboutScreenTheme(colorTheme: colorTheme);
    final whmPlaceCardTheme = WhmPlaceCardTheme(colorTheme: colorTheme);
    final placeDetailScreenTheme = PlaceDetailScreenTheme(colorTheme: colorTheme);
    final settingsScreenTheme = SettingsScreenTheme(colorTheme: colorTheme);

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorTheme.primary,
      ),
      scaffoldBackgroundColor: colorTheme.background,
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      fontFamily: 'outfit',
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        textTheme,
        bottomBarTheme,
        appBatTheme,
        aboutScreenTheme,
        whmPlaceCardTheme,
        placeDetailScreenTheme,
        searchBarTheme,
        settingsScreenTheme,
      ],
    );
  }

  static WhmColorTheme _lightColorTheme() {
    return WhmColorTheme(
      brightness: Brightness.light,
      primary: WhmColor(
        WhmColorsPalette.darkBlue90.value,
      ),
      secondary: WhmColor(
        WhmColorsPalette.lightBlue100.value,
      ),
      accent: WhmColor(
        WhmColorsPalette.amber.value,
      ),
      error: WhmColor(
        WhmColorsPalette.red.value,
      ),
      background: WhmColor(
        WhmColorsPalette.white.value,
      ),
      shadow: WhmColor(
        WhmColorsPalette.gray30.value,
      ),
      border: WhmColor(
        WhmColorsPalette.gray20.value,
      ),
    );
  }

  static WhmColorTheme _darkColorTheme() {
    return WhmColorTheme(
      brightness: Brightness.dark,
      primary: WhmColor(
        WhmColorsPalette.white.value,
      ),
      secondary: WhmColor(
        WhmColorsPalette.lightBlue100.value,
      ),
      accent: WhmColor(
        WhmColorsPalette.amber.value,
      ),
      error: WhmColor(
        WhmColorsPalette.red.value,
      ),
      background: WhmColor(
        WhmColorsPalette.darkBlue50.value,
      ),
      shadow: WhmColor(
        WhmColorsPalette.gray100.value,
      ),
      border: WhmColor(
        WhmColorsPalette.gray50.value,
      ),
    );
  }

  /////////////////////////////////////////////////////////////////
  /************************* BASE ********************************/
  /////////////////////////////////////////////////////////////////
}
