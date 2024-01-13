import 'package:geolocator/geolocator.dart';
import 'package:whm_places/presentation/common/enums/measure_type.dart';
import 'package:whm_places/presentation/common/extensions/double_extension.dart';
import 'package:whm_places/presentation/common/view_models/view_models.dart';

class GeolocatorService {
  static DistanceViewModel getDistance({
    required double targetLatitude,
    required double targetLongitude,
    required Position currentLocation,
  })  {

    final distance = Geolocator.distanceBetween(
      currentLocation.latitude,
      currentLocation.longitude,
      targetLatitude,
      targetLongitude,
    );

    if (distance < 1000) {
      return DistanceViewModel(
        distance: distance,
        measureType: MeasureType.m,
      );
    } else {
      return DistanceViewModel(
        distance: (distance / 1000).roundToPlace(3),
        measureType: MeasureType.km,
      );
    }
  }
}
