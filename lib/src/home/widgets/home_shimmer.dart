import 'package:flutter/material.dart';

import '../../../core/widgets/thesis/thesis_shimmer_widget.dart';

/// Заглушка новостей
class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const int count = 4;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        count,
        (index) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ThesisShimmerWidget(
                            width: MediaQuery.of(context).size.width * 0.55,
                            height: 28,
                          ),
                          const SizedBox(height: 4),
                          ThesisShimmerWidget(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    ThesisShimmerWidget(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      // ignore: use_named_constants
                      borderRadius: const BorderRadius.all(Radius.zero),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ThesisShimmerWidget(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ThesisShimmerWidget(
                        width: 96,
                        height: 18,
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
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 28,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
