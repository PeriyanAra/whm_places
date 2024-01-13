import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

@immutable
class PlaceDetailScreenTheme extends ThemeExtension<PlaceDetailScreenTheme> {
  const PlaceDetailScreenTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  Color get distance => WhmColorsPalette.gray40;

  ButtonStyle get recommendedChallengesStyle => ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 10.0),
        ),
      );

  EdgeInsets get screenPadding => const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0);

  double get mapHeight => 300.0;

  ColorFilter get backIconColorFilter => const ColorFilter.mode(
        WhmColorsPalette.white,
        BlendMode.srcIn,
      );

  ColorFilter get hexEmptyIconColorFilter => const ColorFilter.mode(
        WhmColorsPalette.lightBlue30,
        BlendMode.srcIn,
      );

  Color get hexagon => WhmColorsPalette.black;

  double get backIconSize => 25.0;
  double get locationIconSize => 20.0;
  double get hexEmptyIconSize => 15.0;
  double get appBarMaxHeight => 120.0;

  Color get buttonBackground => WhmColorsPalette.white;

  @override
  PlaceDetailScreenTheme copyWith({
    WhmColorTheme? colorTheme,
  }) {
    return PlaceDetailScreenTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<PlaceDetailScreenTheme> lerp(
    covariant ThemeExtension<PlaceDetailScreenTheme>? other,
    double t,
  ) {
    if (other is! PlaceDetailScreenTheme) {
      return this;
    }

    return PlaceDetailScreenTheme(
      colorTheme: _colorTheme,
    );
  }

  static PlaceDetailScreenTheme of(BuildContext context) {
    return Theme.of(context).extension<PlaceDetailScreenTheme>()!;
  }
}
