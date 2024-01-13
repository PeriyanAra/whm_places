import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:whm_places/presentation/theme/theme.dart';

import '../test_values.dart';

void main() {
  group('Whm Colors ---', () {
    test('copyWith replaces value', () {
      final black = WhmColor(Colors.black.value);
      var colors = createColorTheme(whiteColor);

      expect(colors.primary, whiteColor);
      colors = colors.copyWith(primary: black);
      expect(colors.primary, black);
      colors = colors.copyWith(secondary: black);
      expect(colors.secondary, black);
    });
  });
}
