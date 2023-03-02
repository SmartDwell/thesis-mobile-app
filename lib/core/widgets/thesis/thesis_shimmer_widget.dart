import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/theme_colors.dart';

class ThesisShimmerWidget extends StatelessWidget {
  const ThesisShimmerWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  const ThesisShimmerWidget.rectangle({
    this.width = double.infinity,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0xFF3A3A3C),
      highlightColor: kDarkBackgroundTertiaryColor,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: kDarkBackgroundSecondaryColor,
        ),
        width: width,
        height: height,
      ),
    );
  }
}
