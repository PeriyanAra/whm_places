import 'package:whm_places/app/app_theme_mode/app_theme_mode_settings.dart';
import 'package:whm_places/core/di/dependencies.dart';
import 'package:whm_places/core/di/di.dart';

class AppSharedDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerSingleton<AppThemeModeSettings>(
      await AppThemeModeSettings.createInstance(appKeyValueStorage: di()),
    );
  }
}
