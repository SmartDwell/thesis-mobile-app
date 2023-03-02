import 'package:flutter/material.dart';

import '../../../core/widgets/thesis/thesis_shimmer_widget.dart';
import '../../../theme/theme_constants.dart';

class RequestShimmer extends StatelessWidget {
  const RequestShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kThemeDefaultPaddingHorizontal,
      child: Column(
        children: List.generate(
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
      ),
    );
  }
}
