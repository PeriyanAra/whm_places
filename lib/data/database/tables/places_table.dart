import 'package:whm_places/data/database/database_constants.dart';

String createPlacesTable() {
  return '''
    CREATE TABLE ${DatabaseConstants.placesTableName}
      (
       ${DatabaseConstants.placesIdColumnName} INTEGER PRIMARY KEY,
       ${DatabaseConstants.placesImageColumnName} TEXT NOT NULL,
       ${DatabaseConstants.placesTitleColumnName} TEXT NOT NULL,
       ${DatabaseConstants.placesDescriptionColumnName} TEXT NOT NULL,
       ${DatabaseConstants.placesLatitudeColumnName} TEXT NOT NULL,
       ${DatabaseConstants.placesLongitudeColumnName} TEXT NOT NULL,
       ${DatabaseConstants.placesDifficultyColumnName} TEXT NOT NULL,
       ${DatabaseConstants.placesCreatedDateColumnName} TEXT NOT NULL
      )
    ''';
}
