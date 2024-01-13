import 'package:whm_places/data/client/export.dart';
import 'package:whm_places/data/places/data_source/places_data.dart';
import 'package:whm_places/data/places/dto/place_dto.dart';
import 'package:whm_places/data/places/service/places_api_service.dart';
import 'package:whm_places/data/result/failure_result.dart';
import 'package:whm_places/data/result/result.dart';

class PlacesRemoteData extends PlacesData {
  PlacesRemoteData({
    required PlacesApiService placesApiService,
  }) : _placesApiService = placesApiService;

  final PlacesApiService _placesApiService;

  @override
  Future<Result<List<PlaceDto>, FailureResult>> fetchData() {
    return ApiRequestManager.guardApiCall<List<PlaceDto>, List<PlaceDto>>(
      invoker: _placesApiService.fetchData,
      mapper: (dto) => dto,
    );
  }
}
