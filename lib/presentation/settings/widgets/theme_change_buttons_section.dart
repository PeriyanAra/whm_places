import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/app/app_theme_mode/app_theme_mode.dart';
import 'package:whm_places/presentation/common/widgets/wbox.dart';
import 'package:whm_places/presentation/settings/bloc/settings_screen_bloc.dart';
import 'package:whm_places/presentation/settings/widgets/theme_change_button.dart';
import 'package:whm_places/presentation/theme/extensions/settings_screen_theme.dart';

class ThemeChangeButtonsSection extends StatelessWidget {
  const ThemeChangeButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsScreenTheme = SettingsScreenTheme.of(context);

    return BlocBuilder<SettingsScreenBloc, SettingsScreenState>(
      builder: (context, state) {
        var themeMode = ThemeMode.system;

        if (state is SettingsScreenLoadedState) {
          themeMode = state.viewModel.themeMode;
        }

        return Row(
          children: [
            ThemeChangeButton(
              title: 'lightModeTitle'.tr(),
              iconColor: themeMode != ThemeMode.dark
                  ? settingsScreenTheme.themeChangeIconDarkColor
                  : settingsScreenTheme.themeChangeIconLightColor,
              isSelected: themeMode == ThemeMode.light,
              onTap: () {
                context
                    .read<SettingsScreenBloc>()
                    .add(const SettingsScreenEvent.changeTheme(themeMode: ThemeMode.light));
                context.read<AppThemeMode>().updateThemeMode(ThemeMode.light);
              },
            ),
            const WBox(10.0),
            ThemeChangeButton(
              title: 'darkModeTitle'.tr(),
              iconColor: settingsScreenTheme.themeChangeIconDarkColor,
              isSelected: themeMode == ThemeMode.dark,
              onTap: () {
                context
                    .read<SettingsScreenBloc>()
                    .add(const SettingsScreenEvent.changeTheme(themeMode: ThemeMode.dark));
                context.read<AppThemeMode>().updateThemeMode(ThemeMode.dark);
              },
            ),
            const WBox(10.0),
            ThemeChangeButton(
              iconColor: settingsScreenTheme.themeChangeIconDarkColor,
              isSystemButton: true,
              title: 'systemModeTitle'.tr(),
              isSelected: themeMode == ThemeMode.system,
              onTap: () {
                context
                    .read<SettingsScreenBloc>()
                    .add(const SettingsScreenEvent.changeTheme(themeMode: ThemeMode.system));
                context.read<AppThemeMode>().updateThemeMode(ThemeMode.system);
              },
            ),
          ],
        );
      },
    );
  }
}
