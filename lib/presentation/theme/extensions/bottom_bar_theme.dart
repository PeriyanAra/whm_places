import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

@immutable
class WhmBottomBarTheme extends ThemeExtension<WhmBottomBarTheme> {
  const WhmBottomBarTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  double get iconSize => 35.0;

  Color get selectedIconColor => WhmColorsPalette.darkBlue100;
  Color get disabledIconColor => WhmColorsPalette.gray50;

  List<BoxShadow> get boxShadows => [
        BoxShadow(
          color: _colorTheme.shadow.withOpacity(0.5),
          offset: const Offset(0, 3),
          spreadRadius: 5,
          blurRadius: 7,
        ),
      ];

  BoxDecoration get boxDecoration => BoxDecoration(
        boxShadow: boxShadows,
      );

  @override
  int get hashCode => Object.hash(
        selectedIconColor,
        disabledIconColor,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WhmBottomBarTheme &&
          runtimeType == other.runtimeType &&
          selectedIconColor == other.selectedIconColor &&
          disabledIconColor == other.disabledIconColor;

  @override
  WhmBottomBarTheme copyWith({
    WhmColorTheme? colorTheme,
  }) {
    return WhmBottomBarTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<WhmBottomBarTheme> lerp(
    covariant ThemeExtension<WhmBottomBarTheme>? other,
    double t,
  ) {
    if (other is! WhmBottomBarTheme) {
      return this;
    }

    return WhmBottomBarTheme(
      colorTheme: _colorTheme,
    );
  }

  static WhmBottomBarTheme of(BuildContext context) {
    return Theme.of(context).extension<WhmBottomBarTheme>()!;
  }
}
