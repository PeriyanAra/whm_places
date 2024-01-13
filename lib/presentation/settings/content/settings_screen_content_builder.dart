import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets.dart';
import 'package:whm_places/presentation/settings/widgets/language_buttons_section.dart';
import 'package:whm_places/presentation/settings/widgets/theme_change_buttons_section.dart';
import 'package:whm_places/presentation/theme/extensions/settings_screen_theme.dart';

class SettingsScreenContentBuilder extends StatelessWidget {
  const SettingsScreenContentBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsScreenTheme = SettingsScreenTheme.of(context);

    return Scaffold(
      appBar: WhmAppBar(text: 'settingsScreenTitle'.tr()),
      body: SingleChildScrollView(
        padding: settingsScreenTheme.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'themeTitle'.tr(),
              style: context.textTheme.title2(context),
            ),
            const HBox(10.0),
            const ThemeChangeButtonsSection(),
            const HBox(25.0),
            Text(
              'languageText'.tr(),
              style: context.textTheme.title2(context),
            ),
            const HBox(10.0),
            const LanguageButtonsSection(),
          ],
        ),
      ),
    );
  }
}
