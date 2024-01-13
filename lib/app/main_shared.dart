import 'dart:async';
import 'dart:developer' as dev;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whm_places/app/app_theme_mode/app_theme_mode.dart';
import 'package:whm_places/app/language_notifier.dart';
import 'package:whm_places/app/restart_widget.dart';
import 'package:whm_places/core/di/di_get_it_implementation.dart';
import 'package:whm_places/core/di/register_app_dependencies.dart';
import 'package:whm_places/presentation/common/widgets/bloc_providers_wrapper.dart';

Future<void> mainShared(
  Widget appProvider,
) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      await EasyLocalization.ensureInitialized();

      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        Zone.current.handleUncaughtError(
          errorDetails.exception,
          errorDetails.stack ?? StackTrace.empty,
        );
      };

      final di = DiGetItImplementation();
      await registerAppDependencies(di);

      runApp(
        RestartWidget(
          child: ChangeNotifierProvider.value(
            value: AppThemeMode(),
            child: ChangeNotifierProvider.value(
              value: LanguageNotifier(),
              child: BlocProvidersWrapper(child: appProvider),
            ),
          ),
          onBeforeRestart: () async {
            await di.reset();
            await registerAppDependencies(di);
          },
        ),
      );
    },
    (error, StackTrace stackTrace) {
      dev.log(
        'An unhandled error!',
        error: error,
        stackTrace: stackTrace,
      );
    },
  );
}
