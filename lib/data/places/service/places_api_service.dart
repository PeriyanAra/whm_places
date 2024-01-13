import 'package:chopper/chopper.dart';

import 'package:whm_places/data/places/places.dart';

part 'places_api_service.chopper.dart';

@ChopperApi()
abstract class PlacesApiService extends ChopperService {
  static PlacesApiService create({ChopperClient? client}) {
    return _$PlacesApiService(client);
  }

  @Get(path: 'place')
  Future<Response<List<PlaceDto>>> fetchData();
}
