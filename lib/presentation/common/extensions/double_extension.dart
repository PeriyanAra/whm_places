import 'dart:math' as math;

extension DoubleExtension on double {
  double roundToPlace(int places) {
    final mod = math.pow(10.0, places);
    return (this * mod).round().toDouble() / mod;
  }
}
