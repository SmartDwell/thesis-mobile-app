import 'package:flutter/material.dart';

import '../../../../theme/theme_colors.dart';
import '../../../../theme/theme_extention.dart';

/// Компонент текстовой кнопки
class ThesisTextButton extends StatelessWidget {
  const ThesisTextButton({
    super.key,
    required this.title,
    required this.onTap,
    this.style,
  });

  final String title;
  final void Function() onTap;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: style ??
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: context.isDarkMode
                  ? kPrimaryLighterColor
                  : kPrimaryLightColor,
            ),
      ),
    );
  }
}
