import 'package:chopper/chopper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:whm_places/core/di/dependencies.dart';
import 'package:whm_places/core/di/di.dart';
import 'package:whm_places/data/client/client.dart';
import 'package:whm_places/data/database/database_creator.dart';
import 'package:whm_places/data/logger/logger.dart';
import 'package:whm_places/data/places/data_source.dart';
import 'package:whm_places/data/places/service/places_api_service.dart';

class DataDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerSingleton<Database>(
        await DatabaseCreator.initDatabase(),
      )
      ..registerFactory<Logger>(
        () => Logger.factory(true),
      )
      ..registerFactory<ChopperClient>(
        () => Client.createStagingClient(
          di(),
        ),
      )
      ..registerFactory<PlacesApiService>(
        () => PlacesApiService.create(
          client: di(),
        ),
      )
      ..registerFactory<PlacesRemoteData>(
        () => PlacesRemoteData(
          placesApiService: di(),
        ),
      )
      ..registerFactory<PlacesLocalData>(
        () => PlacesLocalData(
          database: di(),
        ),
      );
  }
}
