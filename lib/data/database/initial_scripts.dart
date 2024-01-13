import 'package:whm_places/data/database/tables/places_table.dart';

List<String> initialScripts() {
  return [
    createPlacesTable(),
  ];
}
