import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';

class WhmWordSearch extends StatefulWidget {
  const WhmWordSearch({
    required this.text,
    required this.searchText,
    super.key,
  });

  final String text;
  final String searchText;

  @override
  State<WhmWordSearch> createState() => _WhmWordSearchState();
}

class _WhmWordSearchState extends State<WhmWordSearch> {
  @override
  Widget build(BuildContext context) {
    final search = widget.searchText.toLowerCase();
    final text = widget.text;
    final matches = search.allMatches(text.toLowerCase()).toList();
    final spans = <TextSpan>[];

    if (matches.isEmpty) {
      spans.add(TextSpan(text: text));
    } else {
      for (var i = 0; i < matches.length; i++) {
        final strStart = i == 0 ? 0 : matches[i - 1].end;
        final match = matches[i];
        spans
          ..add(
            TextSpan(
              text: text.substring(
                strStart,
                match.start,
              ),
            ),
          )
          ..add(
            TextSpan(
              text: text.substring(
                match.start,
                match.end,
              ),
              style: context.textTheme.title2(context).copyWith(
                    color: context.colorTheme.accent,
                  ),
            ),
          );
      }
      spans.add(
        TextSpan(text: text.substring(matches.last.end)),
      );
    }

    return RichText(
      textScaler: MediaQuery.textScalerOf(context),
      text: TextSpan(
        style: context.textTheme.title2(context),
        children: spans,
      ),
    );
  }
}
