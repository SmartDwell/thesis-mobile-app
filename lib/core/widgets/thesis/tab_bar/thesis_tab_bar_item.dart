import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import '../../../../theme/theme_colors.dart';

/// Элемент таб-бара
class ThesisTabBarItem extends StatelessWidget {
  const ThesisTabBarItem({
    super.key,
    required this.title,
    required this.isPicked,
  });

  final String title;
  final bool isPicked;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isPicked
            ? kPrimaryLighterColor
            : AdaptiveTheme.of(context).mode == AdaptiveThemeMode.light
                ? const Color(0xFFF3F3F3)
                : const Color(0xFF2C2C2E),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
        child: Text(
          title,
          style: AdaptiveTheme.of(context)
              .theme
              .textTheme
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
