import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whm_places/presentation/common/constants/assets_paths.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/router/app_router.dart';
import 'package:whm_places/presentation/theme/extensions/bottom_bar_theme.dart';

@RoutePage()
class MainRouterScreen extends StatelessWidget {
  const MainRouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomBarTheme = WhmBottomBarTheme.of(context);

    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        AboutRoute(),
        SettingsRoute(),
      ],
      transitionBuilder: (context, child, animation) => child,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: DecoratedBox(
            decoration: bottomBarTheme.boxDecoration,
            child: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              backgroundColor: context.colorTheme.background,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                BottomNavigationBarItem(
                  label: 'home'.tr(),
                  icon: SvgPicture.asset(
                    AssetsPaths.homeIcon,
                    width: bottomBarTheme.iconSize,
                    colorFilter: ColorFilter.mode(
                      tabsRouter.activeIndex == 0
                          ? context.colorTheme.primary
                          : bottomBarTheme.disabledIconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'about'.tr(),
                  icon: SvgPicture.asset(
                    AssetsPaths.infoIcon,
                    width: bottomBarTheme.iconSize,
                    colorFilter: ColorFilter.mode(
                      tabsRouter.activeIndex == 1
                          ? context.colorTheme.primary
                          : bottomBarTheme.disabledIconColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'about'.tr(),
                  icon: Icon(
                    Icons.settings_rounded,
                    size: bottomBarTheme.iconSize,
                    color: tabsRouter.activeIndex == 2
                        ? context.colorTheme.primary
                        : bottomBarTheme.disabledIconColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
