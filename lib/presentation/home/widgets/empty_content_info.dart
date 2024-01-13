import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/common/widgets.dart';

class EmptyContentInfo extends StatelessWidget {
  const EmptyContentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HBox(MediaQuery.of(context).size.height / 3.5),
        Text('homeEmptyContentFirst'.tr(), style: context.textTheme.detail(context)),
        Text('homeEmptyContentSecond'.tr(), style: context.textTheme.detail(context)),
      ],
    );
  }
}
