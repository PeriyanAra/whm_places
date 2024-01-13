import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';

class WhmLoader extends StatelessWidget {
  const WhmLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3.5),
        child: CircularProgressIndicator(
          color: context.colorTheme.primary,
        ),
      ),
    );
  }
}
