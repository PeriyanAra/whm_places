import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whm_places/app/language_notifier.dart';
import 'package:whm_places/presentation/common/enums/language_code.dart';
import 'package:whm_places/presentation/settings/widgets/language_change_button.dart';

class LanguageButtonsSection extends StatelessWidget {
  const LanguageButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ...LanguageCode.values.map(
          (language) => Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: LanguageChangeButton(
              onTap: () {
                context.read<LanguageNotifier>().updateLanguage(language.name);
                context.setLocale(Locale(language.name));
              },
              isSelected: language.name == context.watch<LanguageNotifier>().language,
              imagePath: language.getIcon(),
            ),
          ),
        ),
      ],
    );
  }
}
