import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/whm_color_theme.dart';

@immutable
class WhmTextTheme extends ThemeExtension<WhmTextTheme> {
  const WhmTextTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  TextStyle _adjustedTextStyle({
    required BuildContext context,
    required FontWeight fontWeight,
    required double fontSize,
    required Color color,
  }) {
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;

    final scale = (pixelRatio > 4) ? 0.8 : 1.2;

    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize * scale,
      color: color,
    );
  }

  TextStyle title1Bold(BuildContext context) => _adjustedTextStyle(
        context: context,
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        color: _colorTheme.primary,
      );

  TextStyle title2(BuildContext context) => _adjustedTextStyle(
        context: context,
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: _colorTheme.primary,
      );

  TextStyle title1Medium(BuildContext context) => _adjustedTextStyle(
        context: context,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: _colorTheme.primary,
      );

  TextStyle detail(BuildContext context) => _adjustedTextStyle(
        context: context,
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        color: _colorTheme.primary,
      );

  @override
  int get hashCode => Object.hash(
        title1Bold,
        title2,
        title1Medium,
        detail,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WhmTextTheme &&
          runtimeType == other.runtimeType &&
          detail == other.detail &&
          title1Medium == other.title1Medium &&
          title2 == other.title2 &&
          title1Bold == other.title1Bold;

  @override
  WhmTextTheme copyWith({
    WhmColorTheme? colorTheme,
    TextStyle? detail,
  }) {
    return WhmTextTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<WhmTextTheme> lerp(
    covariant ThemeExtension<WhmTextTheme>? other,
    double t,
  ) {
    if (other is! WhmTextTheme) {
      return this;
    }

    return WhmTextTheme(
      colorTheme: _colorTheme,
    );
  }

  static WhmTextTheme of(BuildContext context) {
    return Theme.of(context).extension<WhmTextTheme>()!;
  }
}
