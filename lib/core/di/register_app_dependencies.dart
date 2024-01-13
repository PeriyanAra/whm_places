import 'package:whm_places/app/app_shared_dependencies.dart';
import 'package:whm_places/core/core_dependencies.dart';
import 'package:whm_places/core/di/dependencies.dart';
import 'package:whm_places/core/di/di.dart';
import 'package:whm_places/core/di/di_get_it_implementation.dart';
import 'package:whm_places/data/data_dependencies.dart';
import 'package:whm_places/device/device_dependencies.dart';
import 'package:whm_places/presentation/presentation_dependencies.dart';
import 'package:whm_places/repository/repository_dependencies.dart';

final get = DiGetItImplementation.getIt;

Future<void> registerAppDependencies(
  DI di,
) async {
  final dependenciesList = <Dependencies>[
    CoreDependencies(),
    DeviceDependencies(),
    AppSharedDependencies(),
    PresentationDependencies(),
    RepositoryDependencies(),
    DataDependencies(),
  ];

  for (final dependencies in dependenciesList) {
    await dependencies.register(di);
  }
}
