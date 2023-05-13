import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/theme_extention.dart';

/// Базовый компонент заглушки
class ThesisShimmerWidget extends StatelessWidget {
  const ThesisShimmerWidget({
    super.key,
    required this.width,
    required this.height,
    this.baseColor,
    this.highlightColor,
    this.borderRadius,
  });

  final double width;
  final double height;
  final Color? baseColor;
  final Color? highlightColor;
  final BorderRadiusGeometry? borderRadius;

  const ThesisShimmerWidget.rectangle({
    this.width = double.infinity,
    required this.height,
    this.baseColor,
    this.highlightColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? context.textSecondaryColor.withOpacity(0.05),
      highlightColor:
          highlightColor ?? context.textSecondaryColor.withOpacity(0.15),
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
