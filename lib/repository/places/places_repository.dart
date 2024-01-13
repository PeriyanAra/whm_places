import 'package:whm_places/data/data.dart';
import 'package:whm_places/data/places/data_source.dart';
import 'package:whm_places/data/result/export.dart';

class PlacesRepository {
  const PlacesRepository({
    required PlacesRemoteData placesRemoteData,
    required PlacesLocalData placesLocalData,
  })  : _placesRemoteData = placesRemoteData,
        _placesLocalData = placesLocalData;

  final PlacesRemoteData _placesRemoteData;
  final PlacesLocalData _placesLocalData;

  Stream<Result<List<PlaceDto>, FailureResult>> fetchData() async* {
    final localResponse = await _placesLocalData.fetchData();

    if (localResponse.isSuccess) {
      yield Result.success(localResponse.success);
    }

    final remoteResponse = await _placesRemoteData.fetchData();

    yield remoteResponse.when(
      success: (placesDto) {
        _placesLocalData.insertData(places: placesDto);

        return Result.success(placesDto);
      },
      failure: (f) {
        return Result.failure(f);
      },
    );
  }

  Stream<Result<List<PlaceDto>, FailureResult>> fetchRemoteData() async* {
    final remoteResponse = await _placesRemoteData.fetchData();

    yield remoteResponse.when(
      success: (placesDto) {
        _placesLocalData.insertData(places: placesDto);

        return Result.success(placesDto);
      },
      failure: (f) {
        return Result.failure(f);
      },
    );
  }

  Future<Result<PlaceDto, FailureResult>> getPlaceById(int id) {
    return _placesLocalData.getPlaceById(id);
  }
}
