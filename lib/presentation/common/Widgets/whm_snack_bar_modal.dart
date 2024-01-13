import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';

class WhmSnackBarModal extends StatelessWidget {
  const WhmSnackBarModal({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: context.textTheme.title1Medium(context),
      ),
    );
  }
}
