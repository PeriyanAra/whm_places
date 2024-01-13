import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whm_places/presentation/common/constants/assets_paths.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets.dart';
import 'package:whm_places/presentation/theme/extensions/settings_screen_theme.dart';

class ThemeChangeButton extends StatelessWidget {
  const ThemeChangeButton({
    required this.onTap,
    required this.title,
    required this.isSelected,
    required this.iconColor,
    this.isSystemButton = false,
    super.key,
  });

  final VoidCallback onTap;
  final bool isSelected;
  final bool isSystemButton;
  final Color iconColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    final settingsScreenTheme = SettingsScreenTheme.of(context);

    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: (MediaQuery.of(context).size.width - 66) / 3,
            height: 110.0,
            decoration: BoxDecoration(
              border: Border.all(color: isSelected ? context.colorTheme.secondary : iconColor),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: isSystemButton
                ? Center(
                    child: Icon(
                      Icons.settings_suggest_outlined,
                      size: settingsScreenTheme.settingIconSize,
                      color: isSelected ? context.colorTheme.secondary : iconColor,
                    ),
                  )
                : SvgPicture.asset(
                    AssetsPaths.themeIcon,
                    width: (MediaQuery.of(context).size.width - 66) / 3,
                    colorFilter: ColorFilter.mode(
                      isSelected ? context.colorTheme.secondary : iconColor,
                      BlendMode.srcIn,
                    ),
                  ),
          ),
        ),
        const HBox(8.0),
        Text(
          title,
          style: context.textTheme.title2(context).copyWith(
                fontWeight: FontWeight.w500,
                color: isSelected ? context.colorTheme.secondary : null,
              ),
        ),
      ],
    );
  }
}
