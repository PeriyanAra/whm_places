import 'package:flutter/material.dart';
import 'package:whm_places/presentation/common/extensions/context_extension.dart';

class LanguageChangeButton extends StatelessWidget {
  const LanguageChangeButton({
    required this.onTap,
    required this.imagePath,
    required this.isSelected,
    super.key,
  });

  final VoidCallback onTap;
  final String imagePath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70.0,
        width: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: isSelected
              ? Border.all(
                  width: 3.0,
                  color: context.colorTheme.secondary,
                )
              : null,
        ),
        child: ClipOval(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
