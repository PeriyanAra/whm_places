import 'package:whm_places/core/di/dependencies.dart';
import 'package:whm_places/core/di/di.dart';
import 'package:whm_places/presentation/common/blocs/blocs.dart';
import 'package:whm_places/presentation/home/bloc/home_screen_bloc.dart';
import 'package:whm_places/presentation/place_detail/bloc/place_detail_screen_bloc.dart';
import 'package:whm_places/presentation/settings/bloc/settings_screen_bloc.dart';

class PresentationDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<HomeScreenBloc>(() => HomeScreenBloc(placesRepository: di()))
      ..registerLazySingleton<ConnectivityBloc>(ConnectivityBloc.new)
      ..registerLazySingleton<SettingsScreenBloc>(SettingsScreenBloc.new)
      ..registerLazySingleton<PlaceDetailScreenBloc>(
        () => PlaceDetailScreenBloc(
          placesRepository: di(),
        ),
      );
  }
}
