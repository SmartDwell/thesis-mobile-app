import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';

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
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: kPrimaryLighterColor,
            ),
      ),
    );
  }
}
