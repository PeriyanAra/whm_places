import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:whm_places/data/database/export.dart';
import 'package:whm_places/data/places/data_source/places_data.dart';
import 'package:whm_places/data/places/dto/place_dto.dart';
import 'package:whm_places/data/result/failure_result.dart';
import 'package:whm_places/data/result/result.dart';

class PlacesLocalData extends PlacesData {
  PlacesLocalData({
    required Database database,
  }) : _database = database;
  final Database _database;

  @override
  Future<Result<List<PlaceDto>, FailureResult>> fetchData() async {
    try {
      final placesResponse = await _database.rawQuery(
        'SELECT * FROM ${DatabaseConstants.placesTableName}',
      );
      if (placesResponse.isNotEmpty) {
        return Result.success(
          placesResponse.map(
            (e) {
              final newE = {
                DatabaseConstants.placesIdColumnName: e[DatabaseConstants.placesIdColumnName],
                DatabaseConstants.placesImageColumnName: e[DatabaseConstants.placesImageColumnName],
                DatabaseConstants.placesTitleColumnName: e[DatabaseConstants.placesTitleColumnName],
                DatabaseConstants.placesDescriptionColumnName:
                    e[DatabaseConstants.placesDescriptionColumnName],
                DatabaseConstants.placesLatitudeColumnName:
                    e[DatabaseConstants.placesLatitudeColumnName],
                DatabaseConstants.placesLongitudeColumnName:
                    e[DatabaseConstants.placesLongitudeColumnName],
                DatabaseConstants.placesDifficultyColumnName:
                    e[DatabaseConstants.placesDifficultyColumnName],
                DatabaseConstants.placesCreatedDateColumnName:
                    e[DatabaseConstants.placesCreatedDateColumnName],
              };

              return PlaceDto.fromJson(newE);
            },
          ).toList(),
        );
      } else {
        return const Result.failure(
          FailureResult(
            reason: FailureReasons.databaseException,
            debugMessage: 'No local places',
          ),
        );
      }
    } catch (e) {
      debugPrint(
        e.toString(),
      );

      return Result.failure(
        FailureResult(
          reason: FailureReasons.databaseException,
          debugMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> insertData({
    required List<PlaceDto> places,
  }) async {
    try {
      await _database.rawDelete('DELETE FROM ${DatabaseConstants.placesTableName}');

      final batch = _database.batch();

      for (final place in places) {
        batch.rawInsert(
          '''
            INSERT INTO ${DatabaseConstants.placesTableName}(
                ${DatabaseConstants.placesIdColumnName},
                ${DatabaseConstants.placesImageColumnName},
                ${DatabaseConstants.placesTitleColumnName},
                ${DatabaseConstants.placesDescriptionColumnName},
                ${DatabaseConstants.placesLatitudeColumnName},
                ${DatabaseConstants.placesLongitudeColumnName},
                ${DatabaseConstants.placesDifficultyColumnName},
                ${DatabaseConstants.placesCreatedDateColumnName}

            ) VALUES(?, ?, ?, ?, ?, ?, ?, ?)
        ''',
          [
            place.id,
            place.image.toString(),
            place.title.toString(),
            place.description.toString(),
            place.latitude.toString(),
            place.longitude.toString(),
            place.difficulty.toString(),
            place.createdDate.toString(),
          ],
        );
      }

      await batch.commit();
    } catch (e) {
      debugPrint(
        e.toString(),
      );
    }
  }

  Future<Result<PlaceDto, FailureResult>> getPlaceById(int id) async {
    try {
      final placesResponse = await _database.rawQuery(
        'SELECT * FROM ${DatabaseConstants.placesTableName} WHERE ${DatabaseConstants.placesIdColumnName} = $id',
      );
      if (placesResponse.isNotEmpty) {
        final newE = {
          DatabaseConstants.placesIdColumnName:
              placesResponse.first[DatabaseConstants.placesIdColumnName],
          DatabaseConstants.placesImageColumnName:
              placesResponse.first[DatabaseConstants.placesImageColumnName],
          DatabaseConstants.placesTitleColumnName:
              placesResponse.first[DatabaseConstants.placesTitleColumnName],
          DatabaseConstants.placesDescriptionColumnName:
              placesResponse.first[DatabaseConstants.placesDescriptionColumnName],
          DatabaseConstants.placesLatitudeColumnName:
              placesResponse.first[DatabaseConstants.placesLatitudeColumnName],
          DatabaseConstants.placesLongitudeColumnName:
              placesResponse.first[DatabaseConstants.placesLongitudeColumnName],
          DatabaseConstants.placesDifficultyColumnName:
              placesResponse.first[DatabaseConstants.placesDifficultyColumnName],
          DatabaseConstants.placesCreatedDateColumnName:
              placesResponse.first[DatabaseConstants.placesCreatedDateColumnName],
        };

        return Result.success(
          PlaceDto.fromJson(newE),
        );
      } else {
        return Result.failure(
          FailureResult(
            reason: FailureReasons.databaseException,
            debugMessage: 'Place by $id not found',
          ),
        );
      }
    } catch (e) {
      debugPrint(
        e.toString(),
      );

      return Result.failure(
        FailureResult(
          reason: FailureReasons.databaseException,
          debugMessage: e.toString(),
        ),
      );
    }
  }
}
