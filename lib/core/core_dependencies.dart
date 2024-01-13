import 'package:whm_places/core/core.dart';
import 'package:whm_places/core/di/dependencies.dart';
import 'package:whm_places/core/di/di.dart';

class CoreDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<CustomJsonDecoder>(() => CustomJsonDecoder([]))
      ..registerLazySingleton<JsonStringConverter>(
        () => JsonStringConverter(
          jsonDecoder: di(),
        ),
      );
  }
}
