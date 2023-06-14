import 'package:flutter/material.dart';

import '../../../core/widgets/thesis/thesis_shimmer_widget.dart';

/// Карточка пользователя
class UserShimmerWidget extends StatelessWidget {
  const UserShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ThesisShimmerWidget(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 24,
                  ),
                  const SizedBox(height: 4),
                  ThesisShimmerWidget(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 14,
                  ),
                ],
              ),
            ),
            ThesisShimmerWidget(
              width: 48,
              height: 48,
              borderRadius: BorderRadius.circular(24),
            ),
          ],
        ),
      ),
    );
  }
}
