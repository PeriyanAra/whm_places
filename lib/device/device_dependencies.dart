import 'package:shared_preferences/shared_preferences.dart';
import 'package:whm_places/core/di/dependencies.dart';
import 'package:whm_places/core/di/di.dart';
import 'package:whm_places/device/device.dart';
import 'package:whm_places/repository/repository.dart';

class DeviceDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    final appKeyValueStorage = DeviceAppKeyValueStorage(
      sharedPreferences: await SharedPreferences.getInstance(),
      jsonStringConverter: di(),
    );

    di.registerSingleton<AppKeyValueStorage>(appKeyValueStorage);
  }
}
