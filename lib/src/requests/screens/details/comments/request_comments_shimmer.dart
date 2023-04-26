import 'package:flutter/material.dart';

import '../../../../../core/widgets/thesis/thesis_shimmer_widget.dart';

class RequestCommentsShimmer extends StatelessWidget {
  const RequestCommentsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const int commentCount = 3;
    const int imageCount = 3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(commentCount, (index) {
        return Padding(
          padding: EdgeInsets.only(top: index == 0 ? 0 : 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ThesisShimmerWidget(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 12,
              ),
              const SizedBox(height: 8),
              ThesisShimmerWidget(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 18,
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                child: Row(
                  children: List.generate(imageCount, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ThesisShimmerWidget(
                        width: 64,
                        height: 64,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
