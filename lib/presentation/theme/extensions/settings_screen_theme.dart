import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

@immutable
class SettingsScreenTheme extends ThemeExtension<SettingsScreenTheme> {
  const SettingsScreenTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  EdgeInsets get screenPadding => const EdgeInsets.all(20.0);
  Color get themeChangeIconDarkColor => WhmColorsPalette.black;
  Color get themeChangeIconLightColor => WhmColorsPalette.white;
  double get settingIconSize => 85.0;

  @override
  SettingsScreenTheme copyWith({
    WhmColorTheme? colorTheme,
  }) {
    return SettingsScreenTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<SettingsScreenTheme> lerp(
    covariant ThemeExtension<SettingsScreenTheme>? other,
    double t,
  ) {
    if (other is! SettingsScreenTheme) {
      return this;
    }

    return SettingsScreenTheme(
      colorTheme: _colorTheme,
    );
  }

  static SettingsScreenTheme of(BuildContext context) {
    return Theme.of(context).extension<SettingsScreenTheme>()!;
  }
}
