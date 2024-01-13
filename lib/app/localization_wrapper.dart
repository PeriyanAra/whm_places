import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whm_places/app/language_notifier.dart';
import 'package:whm_places/gen/app_localization.g.dart';

class LocalizationWrapper extends StatelessWidget {
  const LocalizationWrapper({
    super.key,
    required this.builder,
  });

  final Widget Function(BuildContext) builder;

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<LanguageNotifier>();

    return EasyLocalization(
      path: 'assets/translations',
      supportedLocales: List.generate(
        notifier.languageCodes.length,
        (index) => Locale(
          notifier.languageCodes[index],
        ),
      ),
      fallbackLocale: Locale(notifier.language),
      assetLoader: const CodegenLoader(),
      child: builder(
        context,
      ),
    );
  }
}
