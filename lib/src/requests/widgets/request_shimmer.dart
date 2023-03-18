import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/widgets/thesis/thesis_shimmer_widget.dart';
import '../../../theme/theme_colors.dart';

class RequestShimmer extends StatelessWidget {
  const RequestShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(6, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index != 5 ? 8 : 0,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AdaptiveTheme.of(context).mode ==
                            AdaptiveThemeMode.light
                        ? const Color(0xFFF3F3F3)
                        : const Color(0xFF2C2C2E),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                    child: Shimmer.fromColors(
                      baseColor: const Color(0xFFF3F3F3).withOpacity(0.2),
                      highlightColor: kDarkBackgroundTertiaryColor,
                      child: Container(
                        width: 62,
                        height: 18,
                        decoration: BoxDecoration(
                          color: AdaptiveTheme.of(context).mode !=
                                  AdaptiveThemeMode.light
                              ? const Color(0xFFF3F3F3).withOpacity(0.2)
                              : const Color(0xFF2C2C2E).withOpacity(0.8),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 20),
        ...List.generate(
          4,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ThesisShimmerWidget(
                          width: 96,
                          height: 14,
                        ),
                        ThesisShimmerWidget(
                          width: 64,
                          height: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ThesisShimmerWidget(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 24,
                    ),
                    const SizedBox(height: 10),
                    ThesisShimmerWidget(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 14,
                    ),
                    const SizedBox(height: 12),
                    ThesisShimmerWidget(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
