import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/whm_color.dart';

const _halfT = 0.5;

@immutable
class WhmColorTheme extends ThemeExtension<WhmColorTheme> {
  const WhmColorTheme({
    required this.brightness,
    required this.primary,
    required this.secondary,
    required this.error,
    required this.accent,
    required this.background,
    required this.shadow,
    required this.border,
  });

  final Brightness brightness;
  final WhmColor primary;
  final WhmColor secondary;
  final WhmColor accent;
  final WhmColor error;

  final WhmColor background;
  final WhmColor shadow;
  final WhmColor border;

  @override
  int get hashCode => Object.hash(
        primary,
        secondary,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WhmColorTheme &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary &&
          accent == other.accent &&
          error == other.error;

  @override
  WhmColorTheme copyWith({
    WhmColor? primary,
    WhmColor? secondary,
    WhmColor? iconPrimary,
    WhmColor? tertiary,
  }) {
    return WhmColorTheme(
      brightness: brightness,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      accent: accent,
      error: error,
      background: background,
      shadow: shadow,
      border: border,
    );
  }

  @override
  ThemeExtension<WhmColorTheme> lerp(
    covariant ThemeExtension<WhmColorTheme>? other,
    double t,
  ) {
    if (other is! WhmColorTheme) {
      return this;
    }

    return WhmColorTheme(
      brightness: t < _halfT ? brightness : other.brightness,
      primary: primary.lerp(other.primary, t),
      background: background.lerp(other.background, t),
      secondary: secondary.lerp(other.secondary, t),
      error: error.lerp(other.error, t),
      accent: accent.lerp(other.accent, t),
      shadow: shadow.lerp(other.shadow, t),
      border: border.lerp(other.border, t),
    );
  }

  static WhmColorTheme of(BuildContext context) {
    return Theme.of(context).extension<WhmColorTheme>()!;
  }
}
