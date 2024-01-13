import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

@immutable
class WhmSearchBarTheme extends ThemeExtension<WhmSearchBarTheme> {
  const WhmSearchBarTheme({
    required WhmColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final WhmColorTheme _colorTheme;

  Color get textFieldFillColor => WhmColorsPalette.gray20;
  Color get textFieldTextColor => WhmColorsPalette.darkBlue100;
  Color get textFieldTextHintColor => WhmColorsPalette.gray40;
  Color get backgroundColor => _colorTheme.background;
  Color get searchIconColor => WhmColorsPalette.gray50;
  Color get transparent => WhmColorsPalette.transparent;

  double get hintFontSize => 16.0;
  double get inputTextSize => 16.0;
  double get searchBarHeight => 75.0;
  double get cursorHeight => 20.0;
  double get searchIconWidth => 30.0;

  EdgeInsetsGeometry get searchIconPadding => const EdgeInsets.all(8.0);
  EdgeInsetsGeometry get searchBarPadding => const EdgeInsets.all(16.0);
  EdgeInsetsGeometry get contentPadding => const EdgeInsets.symmetric(horizontal: 10.0);

  List<BoxShadow> get boxShadows => [
        BoxShadow(
          color: _colorTheme.shadow.withOpacity(0.5),
          offset: const Offset(0, 3),
          spreadRadius: 5,
          blurRadius: 7,
        ),
      ];

  BoxDecoration get searchBarBoxDecoration => BoxDecoration(
        color: backgroundColor,
        boxShadow: boxShadows,
        border: Border(
          top: BorderSide(
            width: 2.0,
            color: _colorTheme.border,
          ),
        ),
      );

  InputBorder get inputBorder => const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      );

  @override
  int get hashCode => Object.hash(
        textFieldFillColor,
        textFieldTextHintColor,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WhmSearchBarTheme &&
          runtimeType == other.runtimeType &&
          textFieldFillColor == other.textFieldFillColor &&
          textFieldTextHintColor == other.textFieldTextHintColor;

  @override
  WhmSearchBarTheme copyWith({
    WhmColorTheme? colorTheme,
  }) {
    return WhmSearchBarTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<WhmSearchBarTheme> lerp(
    covariant ThemeExtension<WhmSearchBarTheme>? other,
    double t,
  ) {
    if (other is! WhmSearchBarTheme) {
      return this;
    }

    return WhmSearchBarTheme(
      colorTheme: _colorTheme,
    );
  }

  static WhmSearchBarTheme of(BuildContext context) {
    return Theme.of(context).extension<WhmSearchBarTheme>()!;
  }
}
