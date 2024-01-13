import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/app/app_theme_mode/app_theme_mode.dart';
import 'package:whm_places/app/localization_wrapper.dart';
import 'package:whm_places/presentation/router/app_router.dart';
import 'package:whm_places/presentation/theme/whm_theme.dart';

class WhmApp extends StatefulWidget {
  const WhmApp({super.key});

  @override
  State<WhmApp> createState() => _WhmAppState();
}

class _WhmAppState extends State<WhmApp> {
  final _autoRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return LocalizationWrapper(
      builder: (_) => Builder(
        builder: (context) {
          return MaterialApp.router(
            title: 'Whm places',
            theme: WhmTheme.light(),
            darkTheme: WhmTheme.dark(),
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            locale: context.locale,
            themeMode: context.watch<AppThemeMode>().themeMode,
            debugShowCheckedModeBanner: false,
            routerConfig: _autoRouter.config(),
          );
        },
      ),
    );
  }
}
