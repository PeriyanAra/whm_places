import 'package:whm_places/data/places/places.dart';
import 'package:whm_places/data/result/export.dart';

abstract class PlacesData {
  Future<Result<List<PlaceDto>, FailureResult>> fetchData();
}
