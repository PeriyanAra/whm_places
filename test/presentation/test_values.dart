import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';

final whiteColor = WhmColor(Colors.white.value);

WhmColorTheme createColorTheme(WhmColor color) {
  return WhmColorTheme(
    brightness: Brightness.light,
    primary: color,
    secondary: color,
    accent: color,
    error: color,
    background: color,
    shadow: color,
    border: color,
  );
}
