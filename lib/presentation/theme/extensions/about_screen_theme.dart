import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

@immutable
class AboutScreenTheme extends ThemeExtension<AboutScreenTheme> {
  const AboutScreenTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  Color get wimLinkTextColor =>
      _colorTheme.brightness == Brightness.light ? WhmColorsPalette.blue50 : _colorTheme.secondary;
  Color get contentTextColor => WhmColorsPalette.gray40;
  EdgeInsets get screenPadding => const EdgeInsets.symmetric(horizontal: 20.0);
  EdgeInsets get whmServicesTextPadding => const EdgeInsets.only(right: 7.0);

  double get logoHeight => 60.0;
  double get logoWidth => 170.0;
  double get heightBoxLarge => 20.0;
  double get heightBoxMedium => 14.0;
  double get heightBoxSmall => 8.0;
  int get textMaxLines => 2;

  @override
  int get hashCode => Object.hash(
        wimLinkTextColor,
        contentTextColor,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AboutScreenTheme &&
          runtimeType == other.runtimeType &&
          contentTextColor == other.contentTextColor &&
          wimLinkTextColor == other.wimLinkTextColor;

  @override
  AboutScreenTheme copyWith({
    WhmColorTheme? colorTheme,
  }) {
    return AboutScreenTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<AboutScreenTheme> lerp(
    covariant ThemeExtension<AboutScreenTheme>? other,
    double t,
  ) {
    if (other is! AboutScreenTheme) {
      return this;
    }

    return AboutScreenTheme(
      colorTheme: _colorTheme,
    );
  }

  static AboutScreenTheme of(BuildContext context) {
    return Theme.of(context).extension<AboutScreenTheme>()!;
  }
}
