import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/theme/extensions/app_bar_theme.dart';

class WhmAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WhmAppBar({
    required this.text,
    this.hasShadow = true,
    super.key,
  });

  final String text;
  final bool hasShadow;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final appBarTheme = WhmAppBarTheme.of(context);
    final appBarHeight = preferredSize.height + appBarTheme.appBarHeight;
    final screenPadding = MediaQuery.of(context).padding;

    return Container(
      height: appBarHeight,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: screenPadding.top),
      decoration: hasShadow ? appBarTheme.borderDecoration : null,
      child: Center(
        child: Text(
          text,
          style: context.textTheme.title1Bold(context),
        ),
      ),
    );
  }
}
