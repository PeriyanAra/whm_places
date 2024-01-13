import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

@immutable
class WhmAppBarTheme extends ThemeExtension<WhmAppBarTheme> {
  const WhmAppBarTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  double get appBarHeight => 62.0;
  EdgeInsets get titlePadding => const EdgeInsets.only(bottom: 4.0);
  double get connectivityAppBarHeight => 24.0;

  Color get transparent => WhmColorsPalette.transparent;
  Color get connectivityBarTextColor => WhmColorsPalette.white;
  Color get connectivityBarColor => WhmColorsPalette.green;
  Color get sussesColor => WhmColorsPalette.transparent;

  List<BoxShadow> get boxShadows => [
        BoxShadow(
          color: _colorTheme.shadow.withOpacity(0.5),
          blurRadius: 10.0,
          spreadRadius: 5.0,
        ),
      ];

  BoxDecoration get borderDecoration => BoxDecoration(
        color: _colorTheme.background,
        boxShadow: boxShadows,
      );

  @override
  int get hashCode => Object.hash(
        borderDecoration,
        boxShadows,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WhmAppBarTheme &&
          runtimeType == other.runtimeType &&
          borderDecoration == other.borderDecoration &&
          boxShadows == other.boxShadows;

  @override
  WhmAppBarTheme copyWith({
    WhmColorTheme? colorTheme,
  }) {
    return WhmAppBarTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<WhmAppBarTheme> lerp(
    covariant ThemeExtension<WhmAppBarTheme>? other,
    double t,
  ) {
    if (other is! WhmAppBarTheme) {
      return this;
    }

    return WhmAppBarTheme(
      colorTheme: _colorTheme,
    );
  }

  static WhmAppBarTheme of(BuildContext context) {
    return Theme.of(context).extension<WhmAppBarTheme>()!;
  }
}
