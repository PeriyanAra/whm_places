import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';

class ErrorContent extends StatelessWidget {
  const ErrorContent({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3.5),
        child: Text(
          text,
          style: context.textTheme.detail(context),
        ),
      ),
    );
  }
}
