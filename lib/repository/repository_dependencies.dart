import 'package:whm_places/core/di/dependencies.dart';
import 'package:whm_places/core/di/di.dart';
import 'package:whm_places/repository/places/places_repository.dart';

class RepositoryDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerFactory<PlacesRepository>(
      () => PlacesRepository(
        placesRemoteData: di(),
        placesLocalData: di(),
      ),
    );
  }
}
