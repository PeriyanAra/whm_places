

import 'package:chopper/chopper.dart';
import 'package:whm_places/data/client/custom_serialize.dart';
import 'package:whm_places/data/client/interceptors/chopper_logging_interceptor.dart';
import 'package:whm_places/data/client/interceptors/places_interceptor.dart';
import 'package:whm_places/data/logger/logger.dart';

abstract class Client {
  static ChopperClient createStagingClient(
    Logger logger,
    {
    String baseUrl = 'https://intern.d-tt.nl/api/',
  }) {
    final interceptors = [
      ChopperLoggingInterceptor(logger),
      PlacesInterceptor(accessKey: '98bww4ezuzfePCYFxJEWyszbUXc7dxRx'),
    ];

    return ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      converter: JsonSerializableConverter.instance,
      interceptors: interceptors,
    );
  }
}
