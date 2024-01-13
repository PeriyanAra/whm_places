import 'package:flutter/material.dart';
import 'package:whm_places/presentation/home/widgets/whm_search_input_field.dart';
import 'package:whm_places/presentation/theme/extensions/extensions.dart';

class WhmSearchBar extends StatelessWidget {
  const WhmSearchBar({
    required this.focusNode,
    required this.textEditingController,
    required this.onChanged,
    this.onSubmitted,
    this.onCloseButtonTap,
    super.key,
  });

  final void Function(String)? onSubmitted;
  final FocusNode focusNode;
  final void Function(String)? onChanged;
  final VoidCallback? onCloseButtonTap;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    final searchBarTheme = WhmSearchBarTheme.of(context);

    return Container(
      height: searchBarTheme.searchBarHeight,
      padding: searchBarTheme.searchBarPadding,
      decoration: searchBarTheme.searchBarBoxDecoration,
      child: WhmSearchInputField(
        onChanged: onChanged,
        focusNode: focusNode,
        onSubmitted: onSubmitted,
        onCloseButtonTap: onCloseButtonTap,
        textEditingController: textEditingController,
      ),
    );
  }
}
