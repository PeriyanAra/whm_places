import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whm_places/presentation/common/constants/assets_paths.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';
import 'package:whm_places/presentation/theme/theme.dart';

class WhmSearchInputField extends StatefulWidget {
  const WhmSearchInputField({
    required this.focusNode,
    required this.textEditingController,
    this.onChanged,
    this.onSubmitted,
    this.onCloseButtonTap,
    super.key,
  });

  final FocusNode focusNode;
  final VoidCallback? onCloseButtonTap;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final TextEditingController textEditingController;

  @override
  State<WhmSearchInputField> createState() => _WhmSearchInputFieldState();
}

class _WhmSearchInputFieldState extends State<WhmSearchInputField> {
  bool displayDeleteButton = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(updateDeleteButtonVisibility);
    widget.textEditingController.addListener(updateDeleteButtonVisibility);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(updateDeleteButtonVisibility);
    widget.textEditingController.removeListener(updateDeleteButtonVisibility);
    super.dispose();
  }

  void updateDeleteButtonVisibility() {
    setState(() {
      displayDeleteButton = widget.textEditingController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchBarTheme = WhmSearchBarTheme.of(context);

    return TextField(
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      controller: widget.textEditingController,
      cursorHeight: searchBarTheme.cursorHeight,
      style: context.textTheme.detail(context).copyWith(
            fontSize: searchBarTheme.inputTextSize,
            fontWeight: FontWeight.w500,
            color: searchBarTheme.textFieldTextColor,
          ),
      decoration: InputDecoration(
        filled: true,
        hintMaxLines: 1,
        hintText: 'searchBarText'.tr(),
        border: searchBarTheme.inputBorder,
        fillColor: searchBarTheme.textFieldFillColor,
        contentPadding: searchBarTheme.contentPadding,
        hintStyle: context.textTheme.detail(context).copyWith(
              fontSize: searchBarTheme.hintFontSize,
              color: searchBarTheme.textFieldTextHintColor,
            ),
        suffixIcon: displayDeleteButton
            ? IconButton(
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset(
                  AssetsPaths.closeIcon,
                  colorFilter: ColorFilter.mode(
                    searchBarTheme.searchIconColor,
                    BlendMode.srcIn,
                  ),
                ),
                onPressed: () {
                  widget.onCloseButtonTap?.call();
                  widget.textEditingController.clear();
                  widget.onSubmitted?.call('');
                },
              )
            : Container(
                width: searchBarTheme.searchIconWidth,
                alignment: Alignment.center,
                padding: searchBarTheme.contentPadding,
                child: SvgPicture.asset(
                  AssetsPaths.searchIcon,
                  colorFilter: ColorFilter.mode(
                    searchBarTheme.searchIconColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
      ),
    );
  }
}
