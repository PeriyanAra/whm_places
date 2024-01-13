import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

@immutable
class WhmPlaceCardTheme extends ThemeExtension<WhmPlaceCardTheme> {
  const WhmPlaceCardTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  double get heightBoxSmallSize => 10.0;
  double get goButtonTextHeight => 2.5;
  double get searchBarHeight => 90.0;
  double get aspectRatio => 16 / 9;

  Color get cardImageBackgroundColor => WhmColorsPalette.gray20;
  Color get cardColor => _colorTheme.background;
  Color get goButtonTextColor => WhmColorsPalette.blue50;

  BorderRadiusGeometry get borderRadius => BorderRadius.circular(12.0);

  BoxDecoration get boxDecoration => BoxDecoration(
        color: cardColor,
        borderRadius: borderRadius,
        boxShadow: boxShadows,
      );

  EdgeInsets get placeCardBottomPadding => const EdgeInsets.only(
        top: 5.0,
        bottom: 20.0,
        left: 20.0,
        right: 20.0,
      );
  EdgeInsets get placeCardTopPadding => const EdgeInsets.only(
        top: 20.0,
        bottom: 5.0,
        left: 20.0,
        right: 20.0,
      );
  EdgeInsets get placeCardPadding => const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 5.0,
      );
  EdgeInsets get contentPadding => const EdgeInsets.all(14.0);

  List<BoxShadow> get boxShadows => [
        BoxShadow(
          color: _colorTheme.shadow,
          blurRadius: 10.0,
          spreadRadius: 5.0,
        ),
      ];

  @override
  WhmPlaceCardTheme copyWith({
    WhmColorTheme? colorTheme,
  }) {
    return WhmPlaceCardTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<WhmPlaceCardTheme> lerp(
    covariant ThemeExtension<WhmPlaceCardTheme>? other,
    double t,
  ) {
    if (other is! WhmPlaceCardTheme) {
      return this;
    }

    return WhmPlaceCardTheme(
      colorTheme: _colorTheme,
    );
  }

  static WhmPlaceCardTheme of(BuildContext context) {
    return Theme.of(context).extension<WhmPlaceCardTheme>()!;
  }
}
