import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/theme/extensions/whm_place_card_theme.dart';

class PlaceCardGoButton extends StatelessWidget {
  const PlaceCardGoButton({
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cardTheme = WhmPlaceCardTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Text(
        'goButtonText'.tr(),
        style: context.textTheme.detail(context).copyWith(
              decoration: TextDecoration.underline,
              decorationColor: cardTheme.goButtonTextColor,
              decorationStyle: TextDecorationStyle.solid,
              color: cardTheme.goButtonTextColor,
              fontWeight: FontWeight.w600,
              height: cardTheme.goButtonTextHeight,
            ),
      ),
    );
  }
}
