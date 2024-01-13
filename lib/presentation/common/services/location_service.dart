import 'package:geolocator/geolocator.dart';

class LocationService {
  static Future<LocationPermission>  checkPermission() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return LocationPermission.deniedForever;
    }

    final status = await Geolocator.checkPermission();

    if (status == LocationPermission.deniedForever) {
      return LocationPermission.deniedForever;
    }

    if (status == LocationPermission.always || status == LocationPermission.whileInUse) {
      return LocationPermission.whileInUse;
    }

    return LocationPermission.denied;
  }

  static Future<LocationPermission> requestPermission() async {
    final status = await Geolocator.requestPermission();

    if (status == LocationPermission.deniedForever) {
      return LocationPermission.deniedForever;
    }

    if (status == LocationPermission.always || status == LocationPermission.whileInUse) {
      return LocationPermission.whileInUse;
    }

    return LocationPermission.denied;
  }

 static Future<LocationPermission> checkAndRequestPermission() async {
    final status = await checkPermission();

    if (status != LocationPermission.always || status != LocationPermission.whileInUse) {
      return requestPermission();
    }

    return status;
  }
}
