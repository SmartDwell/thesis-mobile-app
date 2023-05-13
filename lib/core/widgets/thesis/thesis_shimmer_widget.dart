import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/theme_colors.dart';
import '../../../theme/theme_extention.dart';

/// Базовый компонент заглушки
class ThesisShimmerWidget extends StatelessWidget {
  const ThesisShimmerWidget({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
  });

  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;

  const ThesisShimmerWidget.rectangle({
    this.width = double.infinity,
    required this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.isDarkMode
          ? kDarkBackgroundColor.withOpacity(0.25)
          : kLightBackgroundTertiaryColor.withOpacity(0.1),
      highlightColor: context.isDarkMode
          ? kDarkBackgroundTertiaryColor
          : kLightBackgroundTertiaryColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(4),
          color: context.currentTheme.cardTheme.color,
        ),
        width: width,
        height: height,
      ),
    );
  }
}
