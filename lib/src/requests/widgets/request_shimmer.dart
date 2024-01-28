import 'package:flutter/material.dart';

import '../../../core/widgets/thesis/thesis_shimmer_widget.dart';
import '../../../theme/theme_extention.dart';

/// Заглушка заявок
class RequestShimmer extends StatelessWidget {
  const RequestShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const int count = 8;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThesisShimmerWidget(
          width: MediaQuery.of(context).size.width,
          height: 48,
          baseColor: context.textSecondaryColor.withOpacity(0.075),
          highlightColor: context.textSecondaryColor.withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(count * 2, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index != 5 ? 8 : 0,
                ),
                child: ThesisShimmerWidget(
                  width: 62,
                  height: 24,
                  baseColor: context.textSecondaryColor.withOpacity(0.075),
                  highlightColor: context.textSecondaryColor.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
              );
            }),
          ),
        ),
        const SizedBox(height: 20),
        ...List.generate(
          count,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
