import 'package:flutter/material.dart';
import 'package:whm_places/presentation/theme/theme.dart';
import 'package:whm_places/presentation/theme/whm_text_theme.dart';

extension ContextExtension on BuildContext {
  WhmColorTheme get colorTheme => WhmColorTheme.of(this);

  WhmTextTheme get textTheme => WhmTextTheme.of(this);
}
