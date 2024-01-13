import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:whm_places/presentation/about/about_screen.dart';
import 'package:whm_places/presentation/home/home_screen.dart';
import 'package:whm_places/presentation/place_detail/place_detail_screen.dart';
import 'package:whm_places/presentation/router/main_router_screen.dart';
import 'package:whm_places/presentation/settings/settings_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRouterRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: AboutRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: PlaceDetailRoute.page),
      ];
}
